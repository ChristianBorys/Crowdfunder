class Pledge < ActiveRecord::Base
  attr_accessible :amount, :project, :user_id

  belongs_to :project
  belongs_to :user

end
