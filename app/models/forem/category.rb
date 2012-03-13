module Forem
  class Category

    include Mongoid::Document
    include Mongoid::Timestamps
  
    field :name
    has_many :forums
    validates_presence_of :name
    def to_s
      name
    end

  end
end
