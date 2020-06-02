# frozen_string_literal: true

class StaticController < ApplicationController
  def home
    json_response('Home Page')
  end
end
