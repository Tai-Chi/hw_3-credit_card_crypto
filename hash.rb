require 'rbnacl/libsodium'

module HASH
public
def secure_hash(file)
  #"blob #{file.size}\0#{file}"
  h = RbNacl1::Hash.sha256(file)
end

##test
msg = 'Hello World!'
secure_hash(msg)

##Shall I need to Override it? 

end
