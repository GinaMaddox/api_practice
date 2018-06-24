

#pseudocode
#user enters word
#unirest looks up definition
 #response = Unirest.get()
# obtain data
#get a word from user
  #dog
#Build a terminal dictionary app
#Create a new ruby file called dictionary_app.rb
#The program should ask the user to enter a word, then use the wordnik API to show the word’s definition, top example, and pronunciation: http://developer.wordnik.com/docs.html#!/word
#Bonus: Write your program in a loop such that the user can keep entering new words without having to restart the program. Give them the option of entering q to quit.

#output
#text = "a domesticated carniverous animal.."
#top example = dingo
#pronunciation = 


require 'unirest'

#to do a loop, use a while statement
while true
  system "clear"  #will immediately clear your screen 
p "Type in a word"
user_word = gets.chomp
if user_word =='q' #this 'q' will allow the while loop to stop
  break
end


response = Unirest.get("https://api.wordnik.com/...")

#puts JSON.pretty_generate(response.body)[0]
#if only one definition
definition = response.body[0]['text']
p definition

#for multiple definitions do a loop
definitions = response.body
definitions.each do |definition|
  p definition['text']

#
#unirest looks up top example
response = Unirest.get ("url")
#puts JSON.pretty_generate(response.body) - print to test
top_example = response.body['text']
p top_example

#unirest looks up pronunciation
response = Unirest.get ("url")
#puts JSON.pretty_generate(response.body) - print to test
pronunciation = response.body[0]['raw']
p pronunciation
end
_______________________________________________________________________________







