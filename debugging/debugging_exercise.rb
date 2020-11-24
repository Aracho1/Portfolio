# Exercise 1
def say_hello(name)
  "hello #{name}"
end

# Exercise 2
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  cipher.find_index('z')
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  p cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end

# encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

# Exercise 3
def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
    n -= 1
  end
  product
end

# p factorial(5)

# Exercise 4
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end
# Locate the problems in this code
# and make notes you can use to explain the problem.
# => it does not map 'z' properly because it used ... instead of .. 
