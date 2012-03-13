module Forem
  class Membership
    include Mongoid::Document
    include Mongoid::Timestamps
    field :group_id
     field :member_id
     belongs_to :group
     belongs_to :member, :class_name => Forumonmongo.user_class.to_s
  end
end
