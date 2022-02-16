
def convert(start, finish, n)
    arr = (start..finish).to_a
    arr.zip(arr.rotate(n)).to_h
  end
  
  def rotated_alphabet(n)
    convert('a', 'z', n).merge(convert('A', 'Z', n))
  end