

require 'rbnacl/libsodium'

def hash(file)
  a = 'technical#{file}'
  puts a.to_s.hash
end

def secure_hash(file)
  print (RbNaCl::Hash.sha256(file)).bytes
end

msg = 'Hello, World!\n'

puts "Normal Hash"
hash(msg)
puts "Secure Hash!"
secure_hash(msg)
