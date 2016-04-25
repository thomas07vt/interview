require 'open-uri'
require 'json'
require 'pry'

class App
  attr_reader :events

  def initialize(user)
    #@events = JSON.parse(open("https://api.github.com/users/#{user}/events/public").read)
    # Backup in case we don't have internet
    @events = JSON.parse(File.read('resp.json'))
  end

  def score
    help!
    0
  end


  def help!
    puts "@events is an #{@events.class}"
    puts "each element is a #{@events[0].class}"
    puts "with the following keys: #{@events[0].keys}"
    puts "here is a sample event: "
    puts "--------------------------------------------------------------"
    puts @events[0].to_json
    puts "--------------------------------------------------------------"
    print <<EOF
   # 'type' is the one we care about. Create a method #score()
   # that will print out the user's score based on the type of events
   # Here are the Points a user can get:
   #   PushEvent           is worth 5
   #   CreateEvent         is worth 4
   #   IssuesEvent         is worth 3
   #   CommitCommentEvent  is worth 2
   #   and and other event is worth 1

Modify the #score() method so that the test passes!
------------------------------------------------------------------------
EOF
  end

end

