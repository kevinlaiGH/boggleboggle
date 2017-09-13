
# # A loop that puts out the name that starts with T
# # ["Tim, "Bob", "Sally, ""Ken, "Hubert"]
#
# ["Tim", "Bob", "Sally", "Ken", "Hubert"].each do |item|
#
#     if name.starts_with?("T")
#       puts "Ah, #{name}, welcome to the world!"
#     end
#   end
#
# # simple shopping list app
# # asks for your name
# # asks what you want to buy
# # puts it into an array
# # when ready, show me my shopping list ( LOOP through it)
# # how to delete something
#
# # define important VAR


puts "hi, whats your name?"

puts "how many items you want to buy?"

puts "nice, hit eneter to add items "

loop do
  
  puts "item name:"
  items = STDIN.gets.chomp
  list << item
  puts list
end
