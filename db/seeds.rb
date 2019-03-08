# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

start= Time.now
puts "destroying instances"
Element.destroy_all
Indicator.destroy_all
Subtopic.destroy_all
Topic.destroy_all
Source.destroy_all
Unit.destroy_all
Country.destroy_all
puts "  Instances destroyed"

COUNTRIES = [
            "Afghanistan",
            "Albania",
            "Algeria",
            "American Samoa",
            "Angola",
            "Antarctica",
            "Antigua and Barbuda",
            "Argentina",
            "Armenia",
            "Aruba",
            "Australia",
            "Austria",
            "Azerbaijan",
            "Bahamas, The",
            "Bahrain",
            "Bangladesh",
            "Barbados",
            "Belarus",
            "Belgium",
            "Belize",
            "Benin",
            "Bermuda",
            "Bhutan",
            "Bolivia",
            "Bosnia and Herzegovina",
            "Botswana",
            "Brazil",
            "Brunei",
            "Bulgaria",
            "Burkina Faso",
            "Burma (Myanmar)",
            "Burundi",
            "Cambodia",
            "Cameroon",
            "Canada",
            "Cape Verde",
            "Cayman Islands",
            "Central African Republic",
            "Chad",
            "Chile",
            "China",
            "Colombia",
            "Comoros",
            "Congo (Brazzaville)",
            "Congo (Kinshasa)",
            "Cook Islands",
            "Costa Rica",
            "Cote dIvoire (IvoryCoast)",
            "Croatia",
            "Cuba",
            "Cyprus",
            "Czech Republic",
            "Denmark",
            "Djibouti",
            "Dominica",
            "Dominican Republic",
            "Ecuador",
            "Egypt",
            "El Salvador",
            "Equatorial Guinea",
            "Eritrea",
            "Estonia",
            "Ethiopia",
            "Falkland Islands (Islas Malvinas)",
            "Faroe Islands",
            "Fiji",
            "Finland",
            "Former Czechoslovakia",
            "Former Serbia and Montenegro",
            "Former U,S,S,R,",
            "Former Yugoslavia",
            "France",
            "French Guiana",
            "French Polynesia",
            "Gabon",
            "Gambia, The",
            "Georgia",
            "Germany",
            "Germany, East",
            "Germany, West",
            "Ghana",
            "Gibraltar",
            "Greece",
            "Greenland",
            "Grenada",
            "Guadeloupe",
            "Guam",
            "Guatemala",
            "Guinea",
            "Guinea-Bissau",
            "Guyana",
            "Haiti",
            "Hawaiian Trade Zone",
            "Honduras",
            "Hong Kong",
            "Hungary",
            "Iceland",
            "India",
            "Indonesia",
            "Iran",
            "Iraq",
            "Ireland",
            "Israel",
            "Italy",
            "Jamaica",
            "Japan",
            "Jordan",
            "Kazakhstan",
            "Kenya",
            "Kiribati",
            "Korea, North",
            "Korea, South",
            "Kosovo",
            "Kuwait",
            "Kyrgyzstan",
            "Laos",
            "Latvia",
            "Lebanon",
            "Lesotho",
            "Liberia",
            "Libya",
            "Lithuania",
            "Luxembourg",
            "Macau",
            "Macedonia",
            "Madagascar",
            "Malawi",
            "Malaysia",
            "Maldives",
            "Mali",
            "Malta",
            "Martinique",
            "Mauritania",
            "Mauritius",
            "Mexico",
            "Moldova",
            "Mongolia",
            "Montenegro",
            "Montserrat",
            "Morocco",
            "Mozambique",
            "Namibia",
            "Nauru",
            "Nepal",
            "Netherlands",
            "Netherlands Antilles",
            "New Caledonia",
            "New Zealand",
            "Nicaragua",
            "Niger",
            "Nigeria",
            "Niue",
            "Northern Mariana Islands",
            "Norway",
            "Oman",
            "Pakistan",
            "Palestinian Territories",
            "Panama",
            "Papua New Guinea",
            "Paraguay",
            "Peru",
            "Philippines",
            "Poland",
            "Portugal",
            "Puerto Rico",
            "Qatar",
            "Reunion",
            "Romania",
            "Russia",
            "Rwanda",
            "Saint Helena",
            "Saint Kitts and Nevis",
            "Saint Lucia",
            "Saint Pierre and Miquelon",
            "Saint Vincent/Grenadines",
            "Samoa",
            "Sao Tome and Principe",
            "Saudi Arabia",
            "Senegal",
            "Serbia",
            "Seychelles",
            "Sierra Leone",
            "Singapore",
            "Slovakia",
            "Slovenia",
            "Solomon Islands",
            "Somalia",
            "South Africa",
            "South Sudan",
            "Spain",
            "Sri Lanka",
            "Sudan",
            "Suriname",
            "Swaziland",
            "Sweden",
            "Switzerland",
            "Syria",
            "Taiwan",
            "Tajikistan",
            "Tanzania",
            "Thailand",
            "Timor-Leste (East Timor)",
            "Togo",
            "Tonga",
            "Trinidad and Tobago",
            "Tunisia",
            "Turkey",
            "Turkmenistan",
            "Turks and Caicos Islands",
            "U,S, Pacific Islands",
            "U,S, Territories",
            "Uganda",
            "Ukraine",
            "United Arab Emirates",
            "United Kingdom",
            "United States",
            "Uruguay",
            "Uzbekistan",
            "Vanuatu",
            "Venezuela",
            "Vietnam",
            "Virgin Islands,  U,S,",
            "Virgin Islands, British",
            "Wake Island",
            "Western Sahara",
            "Yemen",
            "Zambia",
            "Zimbabwe"
          ]

YEARS = [
        "1980",
        "1981",
        "1982",
        "1983",
        "1984",
        "1985",
        "1986",
        "1987",
        "1988",
        "1989",
        "1990",
        "1991",
        "1992",
        "1993",
        "1994",
        "1995",
        "1996",
        "1997",
        "1998",
        "1999",
        "2000",
        "2001",
        "2002",
        "2003",
        "2004",
        "2005",
        "2006",
        "2007",
        "2008",
        "2009",
        "2010",
        "2011",
        "2012",
        "2013",
        "2014",
        "2015",
        "2016",
        "2017"
      ]

TOPICS = ["Electricity"]

SUBTOPICS = [
            "Electricity",
            "Capacity",
            "Renewables",
            "Non-Hydroelectric Renewables",
            "Solar, Tide, Wave, Fuel Cell",
            "Tide, Wave, Fuel Cell",
            "Generation"
          ]
INDICATORS = [
              "Consumption",
              "Imports",
              "Exports",
              "Capacity",
              "Nuclear",
              "Renewables",
              "Hydroelectricity",
              "Non-Hydroelectric Renewables",
              "Geothermal",
              "Solar, Tide, Wave, Fuel Cell",
              "Tide and Wave",
              "Solar",
              "Wind",
              "Biomass and Waste",
              "Fossil Fuels",
              "Hydroelectric Pumped Storage",
              "Distribution Losses",
              "Generation",
              "Net Imports"
            ]

UNITS = ["Billion Kwh", "Million Kw"]

SOURCES = ["EIA"]

puts "creating sources"
SOURCES.each do |source|
  source1 = Source.create(name: source)
end

puts "creating topics"
TOPICS.each do |topic|
  topic1 = Topic.new(name: topic)
  topic1.save
end

puts "creating subtopics"
SUBTOPICS.each do |subtopic|
  subtopic1 = Subtopic.new(name: subtopic)
  subtopic1.topic = Topic.first
  subtopic1.save
end

puts "creating units"
UNITS.each do |unit|
  unit1 = Unit.new(name: unit)
  unit1.save
end

puts "creating countries"
COUNTRIES.each do |country|
  country1 = Country.new(name: country)
  country1.save
end

puts "Reading file & creating Elements & Indicators"
csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath    = 'EIA - Electricity - 201903.csv'

array_of_year = Year.all
source = Source.first
topic = Topic.first
subtopic = ""
indicator = ""
CSV.foreach(filepath, csv_options) do |row|
  if row[3].nil?
    subtopic = Subtopic.find_by(name: row[1])
  else
    if row[2].nil?
      indicator = Indicator.create(name: row['Category'], subtopic: subtopic, source: source)
    else
      country = Country.find_by(name: row[2])
      unit = Unit.find_by(name: row[3])
      series = {}
      YEARS.each {|year| series[year.to_sym] = row[year]}
      Element.create(country: country, indicator: indicator, series: series, unit: unit)
    end
  end
end

print "Time :"
print (Time.now - start)



