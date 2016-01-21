# == Schema Information
#
# Table name: pollls
#
#  id         :integer          not null, primary key
#  title      :string
#  author_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Polll < ActiveRecord::Base

  
  belongs_to :author,
    class_name: "User",
    foreign_key: :author_id,
    primary_key: :id

  has_many :questions,
    class_name: "Question",
    foreign_key: :poll_id,
    primary_key: :id
end
