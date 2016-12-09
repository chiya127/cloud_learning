class Category < ActiveRecord::Base
  # consts

  # associations
  has_many :questions
  has_many :results
  has_many :group_users
  has_many :category_users

  # scopes

  # validates

  # triggers

  # instance-methods

  # class-methods

end
