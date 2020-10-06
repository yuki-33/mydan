class Inquiry
  include ActiveModel::Model
  attr_accessor :name, :tel, :email, :subject, :text

  validates :tel, presence: true
  validates :name, presence: true
  validates :text, presence: true
  # validates :acknowledgement, acceptance: true

  # def persisted? ; false ; end
end
