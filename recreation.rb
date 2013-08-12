require 'rubygems'
require 'mechanize'
require 'open-uri'
require_relative 'private/access'

class Bot

  def initialize
    @agent = Mechanize.new
    @agent.get(CAMPGROUND_URL)
  end

  def fetch_site!
    enter_search_criteria
    click_first_available_site
    click_book_these_dates
    enter_login_credentials
    enter_site_details
    proceed_to_checkout
    # enter_billing_information
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

  private

  def change_value(field_num, new_value)
    @agent.page.forms[0].fields[field_num].value = new_value
  end

  def submit_form(num)
    @agent.page.forms[num].submit
  end

  def check_box(name)
    @agent.page.forms[0].checkbox_with(:name => name).check
  end

  def enter_search_criteria
    change_value(6, SITES)
    change_value(20, ARRIVAL)
    change_value(21, NIGHTS)
    change_value(23, '2003') # '2003' => tent
    change_value(9, 6)       # 6 => max occupants
    submit_form(0)
  end

  def click_first_available_site
    @agent.page.link_with(:dom_class => 'book now').click
  end

  def click_book_these_dates
    submit_form(0)
  end

  def enter_login_credentials
    change_value(0, EMAIL)
    change_value(1, PASSWORD)
    submit_form(0)
  end

  def enter_site_details
    change_value(19, 108060) # 108060 => tent
    change_value(4, 6)       # 6 => max occupants
    change_value(5, 2)       # 3 => max vehicles
    check_box('agreementAccepted')
    submit_form(0)
  end

  def proceed_to_checkout
    submit_form(1)
  end

  def enter_billing_information
    change_value(20, CARD_TYPE)
    change_value(5, CARD_NO)
    change_value(6, SECURITY_CODE)
    change_value(7, EXPIRATION_MONTH)
    change_value(8, EXPIRATION_YEAR)
    change_value(9, FIRST_NAME)
    change_value(10, LAST_NAME)
    check_box('acknowlegeAccepted')
    submit_form(0)
  end

end

cyber_raccoon = Bot.new
cyber_raccoon.fetch_site!
