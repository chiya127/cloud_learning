# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 2016-04-29 t-ito modify start

# database cleaning
Tenant.destroy_all
Group.destroy_all
User.destroy_all
Answer.destroy_all
Question.destroy_all
Category.destroy_all
Result.destroy_all
GroupUser.destroy_all
CategoryUser.destroy_all

# create Tenant Data
tenant1 = Tenant.create(:name => "tenant_1")
tenant2 = Tenant.create(:name => "tenant_2")

# create Groups Data
tenant1.groups.create(:name => "tenant1_group1")
tenant1.groups.create(:name => "tenant1_group2")
tenant1.groups.create(:name => "tenant1_group3")
tenant2.groups.create(:name => "tenant2_group1")
tenant2.groups.create(:name => "tenant2_group2")
tenant2.groups.create(:name => "tenant2_group3")

# create User Data
User.create(:acount => "tenant1_group1_user1", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group1_user2", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group1_user3", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group2_user1", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group2_user2", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group2_user3", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group3_user1", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group3_user2", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant1_group3_user3", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group1_user1", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group1_user2", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group1_user3", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group2_user1", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group2_user2", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group2_user3", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group3_user1", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group3_user2", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")
User.create(:acount => "tenant2_group3_user3", :password => "user1", :admin => false, :creator => false, :email => "test@ne.jp")

# categories
basicInfo = Category.create(:subject => "基本情報技術者試験")
secureManager = Category.create(:subject => "セキュリティマネージメント")
networksp = Category.create(:subject => "ネットワークスペシャリスト")

# relation Group <==> User
# tenant1's users
users = User.all
groups = Group.all
groups.each do |group|
   users.each do |user|
       if user.acount.index(group.name) != nil
          GroupUser.create(:group_id => group.id, :user_id => user.id)
       end
   end 
end

# relation Category <==> User
users.each do |user|
    if user.acount.index("group1") != nil 
        CategoryUser.create(:display => "基本情報技術者", :category_id => basicInfo.id, :user_id => user.id)
    elsif user.acount.index("group2") != nil 
        CategoryUser.create(:display => "セキュリティマネージメント試験", :category_id => secureManager.id, :user_id => user.id)
    else
        CategoryUser.create(:display => "ネットワークスペシャリスト", :category_id => networksp.id, :user_id => user.id)
    end
end

# questions
5.times do | no |
    Question.create(:category_id => basicInfo.id, :body => "問題#{no}", :profile => "", :form => "")
    Question.create(:category_id => secureManager.id, :body => "問題#{no}", :profile => "", :form => "")
    Question.create(:category_id => networksp.id, :body => "問題#{no}", :profile => "", :form => "")
end

# answers
questions = Question.all
questions.each do | question |
    Answer.create(:question_id => question.id, :body => "#{question.body}の回答", :note => "#{question.body}の解説", :profile => "", :result => "正答")
end
# results
users = User.all
catetories = Category.all
questions = Question.all
catetories.each do |category|
    users.each do |user|
        questions.each do |question|
            Result.create(:user_id => user.id, :category_id => category.id, :question => question.id, :score => rand(100))
        end
    end
end
# 2016-04-29 t-ito modify end
