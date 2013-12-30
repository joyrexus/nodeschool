ui32 = new Uint32Array(1)
ui32[0] = parseInt process.argv[2]
ui16 = new Uint16Array(ui32.buffer)
console.log JSON.stringify(ui16)
