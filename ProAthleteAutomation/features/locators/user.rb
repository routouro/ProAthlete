require 'roo'

class User

  s = Roo::Excelx.new("UserData.xlsx")

  s.default_sheet = s.sheets.first

  headers = Hash.new
  s.row(1).each_with_index {|header,i|
    headers[header] = i
  }

  # Get the column data using the column heading.
  row = s.first_row + 1
  @first_name = s.row(row)[headers['First Name']]
  @last_name = s.row(row)[headers['Last Name']]
  @address = s.row(row)[headers['Address']]
  @city = s.row(row)[headers['City']]
  @state = s.row(row)[headers['State']]
  @zipcode = s.row(row)[headers['Zipcode']].to_i.to_s
  @email = s.row(row)[headers['Email']]
  @credit_card = s.row(row)[headers['Credit Card']].to_i.to_s
  @exp_month_date = s.row(row)[headers['Exp month']].to_i.to_s
  @exp_year_date = s.row(row)[headers['Exp year']].to_i.to_s
  @cvv = s.row(row)[headers['CVV']].to_i.to_s
  puts @cvv
  @phone_area = s.row(row)[headers['Phone area']]
  @phone_prefix = s.row(row)[headers['Phone prefix']]
  @phone_suffix = s.row(row)[headers['Phone suffix']]
  @phone = s.row(row)[headers['Phone']]

  @billing_phone_area = s.row(row)[headers['Billing phone area']]
  @billing_phone_prefix = s.row(row)[headers['Billing phone prefix']]
  @billing_phone_suffix = s.row(row)[headers['Billing phone suffix']]
  @billing_phone = s.row(row)[headers['Billing Phone']]
  @billing_state = s.row(row)[headers['Billing State']]
  @billing_address = s.row(row)[headers['Billing Address']]
  @billing_city = s.row(row)[headers['Billing City']]
  @billing_zipcode = s.row(row)[headers['Billing Zipcode']].to_i.to_s

  class << self
    attr_accessor :first_name
    attr_accessor :last_name
    attr_accessor :address
    attr_accessor :city
    attr_accessor :state
    attr_accessor :zipcode
    attr_accessor :email
    attr_accessor :credit_card
    attr_accessor :exp_month_date
    attr_accessor :exp_year_date
    attr_accessor :cvv
    attr_accessor :phone
    attr_accessor :phone_area
    attr_accessor :phone_prefix
    attr_accessor :phone_suffix

    attr_accessor :billing_phone_area
    attr_accessor :billing_phone_prefix
    attr_accessor :billing_phone_suffix
    attr_accessor :billing_phone
    attr_accessor :billing_state
    attr_accessor :billing_address
    attr_accessor :billing_city
    attr_accessor :billing_zipcode
  end

end