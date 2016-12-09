class User < ActiveRecord::Base
  # consts

  # associations
  belongs_to :group_users
  has_many :results

  # scopes

  # validates

  # triggers

  # instance-methods

  # class-methods

end
