#to grab an API, follow the three steps below. NOTE:  a KEY may be required.  NEVER COMMIT code with the KEY!!!

require 'unirest'
response = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")

#puts JSON.pretty_generate(response.body) #this is the command to get the whole API query.  Use this as a starting point to obtain correct data (temp and text)

#puts JSON.pretty_generate(response.body["query"]["results"]["channel"]["item"]["condition"])

#since temperature and text are under condition, we create variables...
p temperature = response.body["query"]["results"]["channel"]["item"]["condition"]["temp"]
p text = response.body["query"]["results"]["channel"]["item"]["condition"]["text"]

p "It is curently #{temperature} and #{text.downcase}." 
#for a weather app...
#input: city and state
#output:  'It is (type of weather) and (temperature) in (city) right now'

#what do we need to do?
# 1. obtain the correct data from the response
  #output: #temp and text
  #test step by step the API to create the correct variable 
  #puts JSON.pretty_generate(response.body)['query']['results']['condition']
    #since temperature and text are under condition, we create variables...
    #temperature

# 1. get some user input about city and state

# 2. somehow get weather for whichever city user typed in
  #user_city = "Nashville"
  #user_state = "TN"
# 4. put the data in the sentence at the end

