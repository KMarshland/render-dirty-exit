if Rails.env.development?
  require_relative '../../lib/rails_crasher/lib/rails_crasher'
  require_relative '../../lib/rails_crasher/ext/rails_crasher/rails_crasher.so'
else
  require '/opt/render/project/.gems/gems/rails_crasher-0.1.0/lib/rails_crasher'
end

class MainController < ApplicationController
  def home
  end

  def dirty_exit
    puts RailsCrasher.crash
  end
end
