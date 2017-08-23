class Stat < ApplicationRecord
	belongs_to :character
	has_one :sub_stat, dependent: :destroy
end
