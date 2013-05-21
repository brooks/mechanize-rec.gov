require 'rubygems'
require 'mechanize'
require 'open-uri'
require_relative 'private/access'

class Bot

  def initialize
    @agent = Mechanize.new
    @agent.get(CAMPGROUND_URL)
  end

  def enter_search_criteria
    @agent.page.forms[0].fields[6].value = SITES
    @agent.page.forms[0].fields[20].value = ARRIVAL
    @agent.page.forms[0].fields[21].value = NIGHTS
    @agent.page.forms[0].fields[23].value = '2003'
    @agent.page.forms[0].fields[9].value = 6   
    @agent.page.forms[0].submit
  end

  def click_first_available_site
    @agent.page.link_with(:dom_class => 'book now').click
  end

  def click_book_these_dates
    @agent.page.forms[0].submit
  end

  def enter_login_credentials
    @agent.page.forms[0].fields[0].value = EMAIL
    @agent.page.forms[0].fields[1].value = PASSWORD
    @agent.page.forms[0].submit
  end

  def enter_site_details
    @agent.page.forms[0].fields[19].value = 108060
    @agent.page.forms[0].fields[4].value = 6
    @agent.page.forms[0].fields[5].value = 2
    @agent.page.forms[0].checkbox_with(:name => 'agreementAccepted').check
    @agent.page.forms[0].submit
  end

  def proceed_to_checkout
    @agent.page.forms[1].submit
  end

  def enter_billing_information
    @agent.page.forms[0].fields[20].value = CARD_TYPE
    @agent.page.forms[0].fields[5].value = CARD_NO
    @agent.page.forms[0].fields[6].value = SECURITY_CODE
    @agent.page.forms[0].fields[7].value = EXPIRATION_MONTH
    @agent.page.forms[0].fields[8].value = EXPIRATION_YEAR
    @agent.page.forms[0].fields[9].value = FIRST_NAME
    @agent.page.forms[0].fields[10].value = LAST_NAME
    @agent.page.forms[0].checkbox_with(:name => 'acknowlegeAccepted').check
    @agent.page.forms[0].submit
  end

  def print_links
    @agent.page.links.each do |link|
      puts link.href
    end
  end

  def print_forms
    @agent.page.forms[0].fields.each_with_index do |field, index|
      puts "#{index}: #{field.name}"
    end
  end

  def print_body
    puts @agent.page.body
  end
end

cyber_raccoon = Bot.new
cyber_raccoon.enter_search_criteria
cyber_raccoon.print_forms
cyber_raccoon.click_first_available_site
cyber_raccoon.click_book_these_dates
cyber_raccoon.enter_login_credentials
cyber_raccoon.enter_site_details
cyber_raccoon.proceed_to_checkout

cyber_raccoon.print_forms
