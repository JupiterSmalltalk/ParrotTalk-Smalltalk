building
buildAESedeProtocolMaker

	^ CipherThunkMaker newName: 'AESede' cipherClass: Rijndael keySize: 32 blockSize: 16 hasIvParameter: true