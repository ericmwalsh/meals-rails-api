# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  cost        :integer
#  prep_time   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
