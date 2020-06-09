# frozen_string_literal: true

#static

class StaticController < ApplicationController
  def home
    json_response('Home Page')
  end
end
