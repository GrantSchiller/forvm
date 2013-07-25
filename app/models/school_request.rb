# == Schema Information
#
# Table name: school_requests
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class SchoolRequest < ActiveRecord::Base
end
