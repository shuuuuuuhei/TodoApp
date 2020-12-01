# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  gender       :integer
#  introduction :text
#  nickname     :string
#  subscribed   :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
class Profile < ApplicationRecord
    has_one_attached :avatar
    belongs_to :user
    enum gender: { male: 0, female: 1, other: 2 }
end
