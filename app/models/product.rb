# frozen_string_literal: true

class Product < ApplicationRecord
  validates_numericality_of :price
  validates_numericality_of :stock, greater_than_or_equal_to: 0,
                                    only_integer: true,
                                    message: 'must be a whole number and greater than zero'

  def price=(input)
    input.delete!('$')
    super
  end
end
