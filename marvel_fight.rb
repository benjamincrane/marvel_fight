require_relative 'marvel_api'

puts "Welcome to the Marvel Combat Arena! Your definitive source to the only question that matters in the Marvel universe. Who would win in a fight?"
puts "Let's begin. Enter the name of the first combatant."
marvel1 = gets.chomp# api call
begin
api_response = Marvel.characters(name: "#{marvel1}")
puts api_response[0]['name']
puts api_response[0]['description']
1 / api_response[0]['description'].length
rescue NoMethodError
api_response = Marvel.characters(name: "Thor")
puts "That combatant has refused your call, but in their place stands Thor."
rescue ZeroDivisionError
api_response = Marvel.characters(name: "Thor")
puts "That combatant has refused your call, but in their place stands Thor."
end
puts "You have chosen #{api_response[0]['name']} as the first combatant."
puts "What is the name of the second combatant?"
marvel2 = gets.chomp# api call
begin
api_response2 = Marvel.characters(name: "#{marvel2}")
puts api_response2[0]['name']
puts api_response2[0]['description']
1 / api_response2[0]['description'].length
rescue NoMethodError
api_response2 = Marvel.characters(name: "Hulk")
puts "That combatant has refused your call, but in their place stands Hulk."
rescue ZeroDivisionError
api_response2 = Marvel.characters(name: "Hulk")
puts "That combatant has refused your call, but in their place stands Hulk."
end
puts "You have chosen #{api_response2[0]['name']} as the second combatant."
puts "Now you must choose where they will fight. The Special Extreme Energy Domains are numbered 1-9."
puts "Enter the SEED number."
seed = gets.chomp.to_i
begin
seed = Integer(seed)
1 / seed
rescue TypeError
seed = 1
rescue ZeroDivisionError
seed = 1
end
puts "SEED location #{seed} chosen."
def fight(first_name, first_desc, second_name, second_desc, position)
winner = "Neither"
first_points = 0
second_points = 0
if first_desc.match(/gamma/) or first_desc.match(/radioactive/)
first_points += 1000
end
if second_desc.match(/gamma/) or second_desc.match(/radioactive/)
second_points += 1000
end
first_points += first_desc.split(' ')[position - 1].length
second_points += second_desc.split(' ')[position - 1].length
if first_points + second_points > 2000
winner
elsif first_points > second_points
winner = first_name
else
  winner = second_name
end
puts winner + " wins!"
end

fight(api_response[0]['name'], api_response[0]['description'], api_response2[0]['name'], api_response2[0]['description'], seed)