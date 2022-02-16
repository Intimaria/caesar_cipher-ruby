# frozen_string_literal: true
require_relative 'helpers'

def caesar_cipher(string, n)
  code = rotated_alphabet(n)
  string.chars.map { |c| code.fetch(c, c) }.join
end
