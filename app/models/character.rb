class Character < ApplicationRecord
	after_initialize :default_values
	before_save :set_stats
	belongs_to :job
	has_one :stat, dependent: :destroy
	accepts_nested_attributes_for :stat, allow_destroy: true

private
  def default_values
    self.job = Job.find_by(level: 0)
    self.level = 1
    self.experience = 0
  end

  def set_stats
    self.stat = Stat.new(str:1, agi: 1, vit: 1, int: 1, dex: 1, luk: 1)
  end
end
