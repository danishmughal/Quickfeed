class ReadPost < ActiveRecord::Base
  attr_accessible :id, :post_id, :user_id

  belongs_to :user
end