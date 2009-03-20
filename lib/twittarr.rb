require 'rubygems'
require 'twitter'
require 'twitter/console'
module Twittarr
  
  def start
    Core.new(@options)
  end
  
  def setup(options = {})
    @options = options || nil
  end
  
  class Core
    def initialize(options = {})
      options[:greet_message] ||= "Misttarr Twittarr, reporting for duty! 'dm #{self.twitname} commands' to see what I can do!"
      options[:twit_config] ||= File.join(File.dirname(__FILE__), '..', 'config', 'twittar.yml')
      @twitter = Twitter::Client.from_config(options[:twit_config])
      @twitter.message(:post, options[:greet_message])
      run
    end
    
    def commands(type)
      mods = Dir.glob(File.join(__FILE__,type,'*.rb')).map do |file|
        File.basename(file,'.rb')
      end
      mods
    end
    
    def run
      loop do
        timer = @timer
      end
    end
      
      
  end
      
  
end