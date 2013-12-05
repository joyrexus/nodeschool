crypto = require 'crypto'

passphrase = process.argv[2]
decrypt = crypto.createDecipher('aes256', passphrase)

process.stdin
  .pipe(decrypt)
  .pipe(process.stdout)
