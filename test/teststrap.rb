require 'pathname'

$:.unshift((Pathname(__FILE__).dirname + ".." + "lib").to_s)

require 'rubygems'
require 'bundler/setup'
require 'json'
require 'riot'
require 'webmock'

Riot.dots if ENV["RIOT_FORMAT"] == "dots"

Riot::Situation.instance_eval { include WebMock::API }

require 'riot/gear'

Dir[(Pathname(__FILE__).dirname + "/riot_macros/**/*.rb").to_s].each { |l| require l }
