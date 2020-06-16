class ApplicationRecord < ActiveRecord::Base # :nodoc:
  self.abstract_class = true

  def self.inherited(subclass)
    super
    subclass.primary_key = 'id'
  end
end
