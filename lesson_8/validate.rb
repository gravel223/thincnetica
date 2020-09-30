# frozen_string_literal: true

module Validate
  def valid?
    validation!
    true
  rescue StandardError
    false
  end
end
