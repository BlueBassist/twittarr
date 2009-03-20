#!/usr/bin/env ruby
$LOAD_PATH << 'lib/'

require 'rubygems'
require 'daemonspawn'
require 'twittarr'

class Server < DaemonSpawn::Base
  def start(options = {})
    Twittarr.start(options)
  end
  
  def stop
    
  end
end

Server.spawn!()
