require 'open-uri'
require 'csv'

covids = "https://github.com/ravindra639/POC/blob/master/city.csv"

keys = CSV.open(open(covids), &:readline)
puts keys