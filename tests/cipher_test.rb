require "test_helper"
require "cipher.rb"

class CipherTest < Minitest::Test
  def test_empty
    assert_equal "", caesar_cipher("", 1)
    assert_equal "¿10\n?", caesar_cipher("¿10\n?", 4)
  end

  def test_cipher_13
    assert_equal "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm",
                 caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 13)
    assert_equal "¿Pbzb fr chrqr qvfgvathve n ha rkgebiregvqb qr ha vagebiregvqb " \
                 "ra yn AFN? En los ascensores, el extrovertido mira los zapatos " \
                 "de los OTROS tipos.",
                 caesar_cipher("¿Como se puede distinguir a un extrovertido de un " \
                     "introvertido en la NSA? Ra ybf nfprafberf, ry rkgebi" \
                     "regvqb zven ybf mncngbf qr ybf BGEBF gvcbf.", 13)
  end

  def test_cipher_1
    assert_equal "Mjovy", caesar_cipher("Linux", 1)
  end

  def test_cipher_2
    assert_equal "Nkpwz", caesar_cipher("Linux", 2)
  end

  def test_cipher_3
    assert_equal "Olqxa", caesar_cipher("Linux", 3)
  end
end
