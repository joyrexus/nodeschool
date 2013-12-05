crypto = require 'crypto'
thru = require 'through'
zlib = require 'zlib'
tar = require 'tar'

cipher = process.argv[2] 
password = process.argv[3]
decrypt = crypto.createDecipher(cipher, password)
unzip = zlib.createGunzip()

untar = tar.Parse()
untar.on 'entry', (entry) -> 
  return if not (entry.type is 'File')
  hash = crypto.createHash('md5', {encoding: 'hex'})
  path = " #{entry.path}\n"
  insert = thru null, -> @queue path
  entry.pipe(hash)
    .pipe(insert)
    .pipe(process.stdout)
  ''

process.stdin
  .pipe(decrypt)
  .pipe(unzip)
  .pipe(untar)
