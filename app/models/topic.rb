class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :description, length: { maximum: 200 }, presence: true

  def totals
    votes.count
  end
end
