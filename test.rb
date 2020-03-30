puts "What's your name?"
prompt = '> '
print prompt
name = gets.chomp

puts name + " is your name?"

print prompt
answer = gets.chomp

answer = 
if (answer == "yes")
  "good. Let's continue."
else
  "let me ask again."
end

puts answer



### what's the important difference here, other than the fact that they're not the same variable
# current_player
# @current_player
# $current_player
# @@current_player


