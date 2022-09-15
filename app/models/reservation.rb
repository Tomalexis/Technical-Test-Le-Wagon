class Reservation < ApplicationRecord
  belongs_to :listing
  validate :end_after_start
  validates :start_date, :end_date, presence: true, format: { with: /(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:29|30))|(?:(?:0[13578]|1[02])-31))/, message: "only allows YYYY/MM/DD format" }

  private

  def end_after_start
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
