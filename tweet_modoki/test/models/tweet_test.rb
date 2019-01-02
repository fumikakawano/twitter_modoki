# == Schema Information
#
# Table name: tweets
#
#  id         :bigint(8)        not null, primary key
#  tweet      :string(255)
#  user_id    :string(255)
#  reply_id   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
