class Inquiry
  include ActiveModel::Model
  attr_accessor :name, :tel, :email, :subject, :text

  validates :name, presence: true
  validates :tel, presence: true
  # validates :tel, telephone_number: {country: :ca, types: [:fixed_line, :mobile]}
  validates :text, presence: true
  # validates :acknowledgement, acceptance: true

  # def persisted? ; false ; end
end
