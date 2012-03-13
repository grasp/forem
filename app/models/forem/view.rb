module Forem
  class View 
    include Mongoid::Document
    include Mongoid::Timestamps
    field :user_id
    field :topic_id
    field :count,:type=>Integer
    
    belongs_to :topic
    belongs_to :user, :class_name => Forem.user_class.to_s
validates_presence_of :topic_id

  end
end
