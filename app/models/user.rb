class User < ActiveRecord::Base
    belongs_to :group_users
    has_many :results
end
