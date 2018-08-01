require 'io/console'


class User 
  
  
  @@user_list = []
  
  attr_accessor :username, :password, :unread
 
  
  def initialize(username, password)
    @username = username
    @password = password
    @unread = 0 
    @@user_list << self
    @message = ""
  end
  
  def self.user_list
    @@user_list
  end
  
  def update_password
    loop do 
      puts "What would you like your new password to be?"
      password = gets.chomp
      puts "Please retype your password"
      password1 = gets.chomp
      if password == password1
        puts "Your password has been updated!"
        @password = password
        break
      else
        puts "Your password's did not match. Please try again"
      end
    end
    end
    
    def add_snap
    @unread = @unread+ 1
    end
    
    def check_snaps
      puts "you have #{@unread} snaps"
      # puts "would you like to see your message?"
      # response = gets.chomp.downcase
      # if response == "yes"
      #   user.read_snap
      # else
      #   puts "okay bye!"
      # end
    end
      
    
    def read_snap
      puts "You got a message!"
      puts @message
    end
  
    
    def send_snap
      puts "Who would you like to send a snap to?"
      receiver = gets.chomp
      puts "What would you like to send?"
      @message = gets.chomp
      @@user_list.each do |user|
        if receiver == user.username
          puts "Your snap has been sent to #{receiver}!"
          user.add_snap
        end
        
      end
    end
    
  
end

kyla = User.new("Kyla", "hello")
mckenzie = User.new("Mckenzie", "yep")
#puts kyla.unread
#puts User.user_list


kyla.update_password

kyla.send_snap


mckenzie.check_snaps


