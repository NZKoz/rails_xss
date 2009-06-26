# Include hook code here
require 'rails_xss'
require 'erubis/helpers/rails_helper'


Erubis::Helpers::RailsHelper.engine_class = RailsXSS::Erubis
