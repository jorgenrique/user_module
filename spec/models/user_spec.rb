# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  username   :string(255)
#  ref_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
