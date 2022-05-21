class Aluno < ApplicationRecord
  RGA_REGEX = /([0-9]{4}[\.]?[0-9]{4}?[0-9]{3}[\.]?[-][0-9]{1})/

  validates :rga, format: { with: RGA_REGEX }, length: { maximum: 15 }
end
