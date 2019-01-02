# == Schema Information
#
# Table name: likes
#
#  id         :bigint(8)        not null, primary key
#  like       :string(255)
#  user_id    :string(255)
#  tweet_id   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
