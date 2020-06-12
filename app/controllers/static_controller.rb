# frozen_string_literal: true

# Module

class StaticController < ApplicationController
  def home
    json_response('Home Page')
  end
end
