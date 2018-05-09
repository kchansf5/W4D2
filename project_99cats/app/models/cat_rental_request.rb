class CatRentalRequest < ApplicationRecord
  validates :status, inclusion: { in: %w(PENDING APPROVED DENIED),
    message: "%{value} is not a status" }
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validate :does_not_overlap_approved_request

  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: "Cat"

  def overlapping_requests
    CatRentalRequest
      .where.not(id: self.id)
      .where(cat_id: self.cat_id,
        start_date: (self.start_date..self.end_date).to_a)
      .or(CatRentalRequest.where.not(id: self.id)
        .where(end_date: (self.start_date..self.end_date).to_a))
  end

  def overlapping_approved_requests
    self.overlapping_requests.where(status: "APPROVED")
  end

  def does_not_overlap_approved_request
    !self.overlapping_approved_requests.exists?
  end

end
