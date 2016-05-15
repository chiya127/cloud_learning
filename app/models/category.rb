class Category < ActiveRecord::Base
    has_many :questions
    has_many :results
    has_many :group_users
    has_many :category_users
end
