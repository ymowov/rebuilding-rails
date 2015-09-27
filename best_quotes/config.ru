#run means call that object for each request
#success code=200
#"hello world" shows along with HTTP header
#,make browser display HTML

require './config/application'
run BestQuotes::Application.new