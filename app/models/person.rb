class Person < ApplicationRecord
  validates :identifier, presence: true, uniqueness: true
  validate :validate_identifier_format

  private

  def valid_identifier?
    false
  end

  def validate_identifier_format
    errors.add(:identifier, "Invalid identifier format") unless valid_identifier?
  end
end
