require 'date'

puts "What year were you born in?"
@birth_year = gets.chomp.to_s

puts "What month were you born in?"
@birth_month = gets.chomp.to_s

puts "What day were you born in?"
@birth_day = gets.chomp.to_s

## Pulls your birthdate and parses into a date
p s =  @birth_year + '-' + @birth_month + '-' + @birth_day 
birthdate = Date.strptime(s, "%Y-%m-%d")
p birthdate
## This is today's date
today = DateTime.now.to_s
todaydate = Date.strptime(today, "%Y-%m-%d")
p todaydate

## Calculates the difference between your birthday and today's date in months and years
difference_in_months_and_years = []
def date_diff(birthdate,todaydate)
  month = (todaydate.year * 12 + todaydate.month) - (birthdate.year * 12 + birthdate.month)
 	no_years = month / 12
 	no_months = month % 12 
 	difference_in_months_and_years = [no_years , no_months]
end
p difference_in_months_and_years = date_diff(birthdate, todaydate)

# Prints out the results!
puts "You were born #{difference_in_months_and_years[0]} years and #{difference_in_months_and_years[1]} months ago."
difference_in_months_and_years[0].to_i.times do 
	puts "Birthday Punch!"
end

## Happy birthday! :)
