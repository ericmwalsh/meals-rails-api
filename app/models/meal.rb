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

class Meal < ActiveRecord::Base
end
