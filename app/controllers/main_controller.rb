require_relative '../../lib/rails_crasher/lib/rails_crasher'
require_relative '../../lib/rails_crasher/ext/rails_crasher/rails_crasher.so'

class MainController < ApplicationController
  def home
  end

  def dirty_exit
    puts RailsCrasher.crash
  end
end
