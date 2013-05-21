require 'rubygems'
require 'mechanize'
require 'open-uri'
require_relative 'access'

puts CARD_NO

# agent = Mechanize.new

# agent.get('http://www.recreation.gov/camping/North_Pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70927&topTabIndex=Search')

# agent.page.forms[0].fields.each_with_index do |field, index|
#   puts "#{index}: #{field.name}"
# end

# agent.page.forms[0].fields[6].value = SITES
# agent.page.forms[0].fields[20].value = ARRIVAL
# agent.page.forms[0].fields[21].value = NIGHTS
# agent.page.forms[0].submit

# agent.click(agent.page.link_with(:class => 'book now'))

# agent.page.forms[0].submit

# agent.page.forms[0].fields[0].value = USERNAME
# agent.page.forms[0].fields[1].value = PASSWORD
# agent.page.forms[0].submit

# agent.page.forms[0].fields[19].value = 108060
# agent.page.forms[0].fields[4].value = 6
# agent.page.forms[0].fields[5].value = 2
# agent.page.forms[0].checkbox_with(:name => 'agreementAccepted').check
# agent.page.forms[0].submit

# agent.page.forms[1].submit

# agent.page.forms[0].fields[20].value = CARD_TYPE
# agent.page.forms[0].fields[5].value = CARD_NO
# agent.page.forms[0].fields[6].value = SECURITY_CODE
# agent.page.forms[0].fields[7].value = EXPIRATION_MONTH
# agent.page.forms[0].fields[8].value = EXPIRATION_YEAR
# agent.page.forms[0].fields[9].value = FIRST_NAME
# agent.page.forms[0].fields[10].value = LAST_NAME



# agent.page.forms[0].checkbox_with(:name => 'acknowlegeAccepted').check
# agent.page.forms[0].submit


# agent.page.links.each do |link|
#   puts link.href
# end

# agent.page.forms[0].fields.each_with_index do |field, index|
#   puts "#{index}: #{field.name}"
# end

