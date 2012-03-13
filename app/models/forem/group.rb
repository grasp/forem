module Forem
  class Group
        include Mongoid::Document
    include Mongoid::Timestamps

  field :name,:type=>String

    has_many :memberships
    has_many :members, :through => :memberships, :class_name => Forem.user_class.to_s
  validates_presence_of :name
    def to_s
      name
    end
  end
end
