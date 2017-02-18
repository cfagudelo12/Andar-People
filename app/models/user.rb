class User < ApplicationRecord
  def self.identification_types
    %w(C.C. T.I.)
  end
  def self.careers_list
  end
  has_many :observations
  mount_uploader :photo, PhotoUploader
  mount_uploader :volunteering_agreement, VolunteeringAgreementUploader
  serialize :careers, Array
  validates :name, length: { maximum: 140 }, presence: true
  validates :identification, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :identification_type, inclusion: { in: identification_types }, presence: true
  validates :student_code, format: { with: /[0-9]{9}/ }, presence: true
  validates :email, length: { maximum: 140 }, presence: true
  validates :phone, format: { with: /[0-9]{9}/ }, presence: true
  validates :semester, numericality: { greater_than_or_equal_to: 1 }, presence: true
  validates :careers, presence: true
end
