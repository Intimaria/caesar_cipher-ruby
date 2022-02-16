# frozen_string_literal: true

require './lib/cipher.rb'

puts "Give me a message to encrypt! "
message = gets.chomp

puts "How many letters do you want to shift by? "
num = gets.chomp.to_i


puts 'Your encrypted message is:' 
puts caesar_cipher(message, num)

gets 