#!/usr/bin/env ruby
require 'adzerk'
require 'optparse'

options = {}
ARGV << '-h' if ARGV.empty?
OptionParser.new do |opts|
  opts.banner = "Usage: upload_creative [options]"
  opts.on("-f", "--file CREATIVE", String,
         "File to upload.") do |f|
    raise "File doesn't exist: #{f}" unless File.exists?(f)
    options[:file] = File.expand_path(f)
  end
  opts.on("-c", "--creative ID", Integer,
          "Creative id to upload to") do |id|
    options[:creative_id] = id
  end
end.parse!

api_key = ENV['ADZERK_API_KEY'] or abort "ADZERK_API_KEY environment variable not set"
client = Adzerk::Client.new(api_key)

begin
  client.upload_creative(options[:creative_id], options[:file])
rescue RestClient::ExceptionWithResponse => err
  abort(err.inspect)
end
