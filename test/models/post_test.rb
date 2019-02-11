# == Schema Information
#
# Table name: posts
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  kind        :string           not null
#  startdate   :datetime         not null
#  enddate     :datetime
#  address     :string           not null
#  number      :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
