module Location
  extend ActiveSupport::Concern
  
  included do
    geocoded_by :name
    before_validation :geocode, :if => :name_changed?
    
    has_many :users
    
    validates :name, :presence => true, :uniqueness => true
    validates :latitude, :presence => true
    validates :longitude, :presence => true
  end
  
end
