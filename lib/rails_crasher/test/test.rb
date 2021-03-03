# frozen_string_literal: true

raise 'Compiling failed' unless system('rake compile')

require 'bundler/setup'
require 'rails_crasher'
require_relative '../ext/rails_crasher/rails_crasher.so'

puts RailsCrasher.say_hi

puts RailsCrasher.crash
