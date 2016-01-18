require "pry"
require "rspec"
require 'json'
require_relative "../player"
require_relative "../team"
FILE_HASH = File.read("roster.json")
JSON_HASH = JSON.parse(FILE_HASH)
