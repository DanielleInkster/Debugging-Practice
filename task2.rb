def encode(plaintext, key)
  # cipher = key.chars.uniq + (('a'...'z').to_a - key.chars) <- was excluding z
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    #(65 + cipher.find_index(char)).chr <- no conversion to integer
    (65 + cipher.find_index(char).to_i).chr
  end
  #ciphertext_chars.join <- no indication where to join
   puts ciphertext_chars.join('')
end

def decode(ciphertext, key)
  #cipher = key.chars.uniq + (('a'...'z').to_a - key.chars) <- was excluding z
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    #cipher[65 - char.ord] <-no conversion to integer, subtract what was added
    cipher[char.ord.to_i - 65]
  end
  #plaintext_chars.join <- no indication where to join
  puts plaintext_chars.join('')
end

# Intended output:
#
puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
