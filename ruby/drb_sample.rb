#!usr/bin/env ruby

require 'drb/drb'

class Puts
  def initialize(stream = $stdout)
    @stream = stream
  end
  
  def host?
    [Socket.gethostname, Process.pid]
  end

  def puts(str)
    @stream.puts(str)
  end
end

uri = ARGV.shift
DRb.start_service(uri, Puts.new)
puts 'starting service on ' << DRb.uri.to_s << ' ...'
sleep
