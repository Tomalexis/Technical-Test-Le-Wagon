class Mission < ApplicationRecord
  belongs_to :listing
  validates :mission_type, :date, :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :date, format: { with: /(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:29|30))|(?:(?:0[13578]|1[02])-31))/, message: "only allows YYYY/MM/DD format" }
end
