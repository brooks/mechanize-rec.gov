yosemite-bum
============

You'll have to create a top-level private directory with a file, 'access.rb' that contains the following constants:

LOWER_PINES = 'http://www.recreation.gov/camping/Lower_Pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70928&topTabIndex=Search'
NORTH_PINES = 'http://www.recreation.gov/camping/North_Pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70927&topTabIndex=Search'
UPPER_PINES = 'http://www.recreation.gov/camping/Upper_Pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70925&topTabIndex=Search'
TUOLUMNE = 'http://www.recreation.gov/camping/Tuolumne_Meadows/r/campgroundDetails.do?contractCode=NRSO&parkId=70926&topTabIndex=Search'

LP_SITES = '' # leave blank if you don't care about specific sites
NP_SITES = '100, 200, 300' #..or enter preferrable sites separated by commas
UP_SITES = '500' #..or enter one site alone 
T_SITES = '' #always leave blank, Tuolumne sites are assigned on arrival

CAMPGROUND_URL = NORTH_PINES #or other, see above
ARRIVAL = '' # 'mm/dd/yy'
NIGHTS = '' #enter number of nights
SITES = T_SITES #or other, see above
EMAIL = '' #recreation.gov logIn
PASSWORD = '' #recreation.gov logIn

CARD_TYPE = '' #'VISA' 'MAST' 'DISC' 'AMEX'
CARD_NO =  '' #card number
SECURITY_CODE = ''  #digits on back
EXPIRATION_MONTH = '' #mm
EXPIRATION_YEAR = '' #yyyy
FIRST_NAME = '' #as associated with billing address
LAST_NAME = '' #as associated with billing address