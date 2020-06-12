#**
# frozen_string_literal: true
#Module
#*

class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
end
