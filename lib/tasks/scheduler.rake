desc "This task is called by the Heroku scheduler add-on"
task :call_api => :environment do
  puts "Calling API..."
  api_call = ApiCall.new
  api_call.save
  puts "Done"
end