# frozen_string_literal: true

# Module

class ApplicationController < ActionController::API # :nodoc:
  include Response
  include ExceptionHandler
end
