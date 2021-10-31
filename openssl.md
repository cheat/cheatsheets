# To create a 2048-bit private key:
openssl genrsa -out server.key 2048

# To create the Certificate Signing Request (CSR):
openssl req -new -key server.key -out server.csr

# To sign a certificate using a private key and CSR:
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

# (The above commands may be run in sequence to generate a self-signed SSL certificate.)

# To show certificate information for a certificate signing request
openssl req -text -noout -in server.csr

# To show certificate information for generated certificate
openssl x509 -text -noout -in server.crt 

# To get the sha256 fingerprint of a certificate
openssl x509 -in server.crt -noout -sha256 -fingerprint

# To view certificate expiration:
echo | openssl s_client -connect <hostname>:443 2> /dev/null | \
awk '/-----BEGIN/,/END CERTIFICATE-----/' | \
openssl x509 -noout -enddate

# To generate Diffie-Hellman parameters:
openssl dhparam -outform PEM -out dhparams.pem 2048

# High-quality options for openssl for symmetric (secret key) encryption
  
This is what knowledgable people consider a good set of options for 
symmetric encryption with openssl to give you a high-quality result.
Also, always remember that the result is only as good as the password
you use. You must use a strong password otherwise encryption is meaningless.
  
openssl enc -e -aes-256-cbc \
  -salt \
  -pbkdf2 \
  -iter 1000000 \
  -md sha512 \
  -base64 \
  -in somefile \
  -out somefile.enc # to encrypt

openssl enc -d -aes-256-cbc \
  -salt \
  -pbkdf2 \
  -iter 1000000 \
  -md sha512 \
  -base64 \
  -in somefile.enc \
  -out somefile # to decrypt

  
