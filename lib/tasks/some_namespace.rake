namespace :some_namespace do
  desc "sends various emails to users"
  task :some_task => :environment do
    puts "hello"
  end
end