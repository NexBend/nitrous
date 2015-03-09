require 'csv'
require 'sunlight/congress'
require 'erb'
require 'date'

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, "0")[0..4]
end

def clean_phone_number(phone_number)
  clean = phone_number.scan(/\d/).join
  return "0000000000" if clean.length < 10
  return clean if clean.length == 10
  return clean[1,-1] ? clean.length == 11 && clean[0] == '1' : "0000000000"
end

def hour_of_day(date_and_time)
  date_time = DateTime.strptime(date_and_time, "%m/%d/%Y %H:%M")
end

def legislators_by_zip(zipcode)
  Sunlight::Congress::Legislator.by_zipcode(zipcode)
end

def save_thank_you_letters(id, form_letter)
  Dir.mkdir("output") unless Dir.exists? "output"
  
  filename = "output/thanks_#{id}.html"
  
  File.open(filename,'w') do |file|
    file.puts form_letter
  end
end
  


puts "EventManager Initialized!"

template_letter = File.read "form_letter.erb"
erb_template = ERB.new template_letter

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol


contents.each do |row|
  id = row[0]
  name = row[:first_name]
  phone_number = clean_phone_number(row[:homephone])
  zipcode = clean_zipcode(row[:zipcode]) 
  date_time = hour_of_day(row[:regdate])
  legislators = legislators_by_zip(zipcode)
  
 # puts date_time.hour 
#  puts date_time.wday
  form_letter = erb_template.result(binding)
  save_thank_you_letters(id, form_letter)
  
end

