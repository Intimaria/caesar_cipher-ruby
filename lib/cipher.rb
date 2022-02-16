# frozen_string_literal: true
require 'helpers.rb'

def caesar_cipher(string, n)
  code = rotated_alphabet(n)
  string.chars.map { |c| code.fetch(c, c) }.join
end
