class User < ApplicationRecord
  def self.identification_types
    %w(C.C. T.I.)
  end
  def self.careers_list
    ["Administración", "Contaduría Internacional", "Arquitectura", "Diseño", "Arte", "Historia del Arte", "Literatura", "Música", "Biología", "Física", "Geociencias", "Matemáticas", "Microbiología", "Química", "Antropología", "Ciencia Política", "Filosofía", "Historia", "Lenguas y Cultura", "Psicología", "Derecho", "Economía", "Licenciatura en Artes", "Licenciatura en Ciencias Naturales", "Licenciatura en Ciencias Sociales", "Licenciatura en Educación para la Primera Infancia", "Licenciatura en Humanidades", "Licenciatura en Matemáticas", "Ingeniería Ambiental", "Ingeniería Biomédica", "Ingeniería Civil", "Ingeniería Eléctrica", "Ingeniería Electrónica", "Ingeniería Industrial", "Ingeniería Mecánica", "Ingeniería Química", "Ingeniería de Sistemas y Computación", "Medicina", "Gobierno y Asuntos Públicos"]
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
