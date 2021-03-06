class Survey < ActiveRecord::Base
  belongs_to :content

  has_many :questions, dependent: :destroy
  has_many :survey_responses, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: proc { |attributes| attributes['description'].blank? }

  enum status: [:draft, :published]

  validates_presence_of :title



end
