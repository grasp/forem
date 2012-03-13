module Forem
  
  class ModeratorGroup 
        include Mongoid::Document
    include Mongoid::Timestamps
    field :name,:type=>String
    belongs_to :forum, :inverse_of => :moderator_groups
    belongs_to :group
  end
end
