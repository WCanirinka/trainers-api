# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.inherited(subclass)
    super
    subclass.primary_key = 'id'
  end
end
