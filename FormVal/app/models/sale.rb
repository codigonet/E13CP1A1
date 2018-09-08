class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :value, numericality: {only_integer: true}
  validates :discount, numericality: {
    only_integer: true,
    less_than_or_equal_to: 40
  }
  validates :category, inclusion: {
    in: %w(uno dos tres cuatro cinco),
    message: "%{value} no es una categoría válida"
  }

  def to_s
    self.cod.to_s
  end

end
