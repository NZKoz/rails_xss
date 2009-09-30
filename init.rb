# Include hook code here
require 'erubis/helpers/rails_helper'
require 'rails_xss'


Erubis::Helpers::RailsHelper.engine_class = RailsXss::Erubis


Module.class_eval do
  include RailsXss::SafeHelpers
end

require 'rails_xss_escaping'
require 'av_patch'
