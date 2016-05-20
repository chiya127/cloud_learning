class Tenant < ActiveRecord::Base
    has_many :groups
end
