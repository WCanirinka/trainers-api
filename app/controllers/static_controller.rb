class StaticController < ApplicationController # :nodoc:
  def home
    json_response('Home Page')
  end
end
