class Group < ActiveRecord::Base
    belongs_to :tenant
    belongs_to :group_user
end
