building
buildDESProtocolMaker

	^ CipherThunkMaker newName: 'DES' cipherClass: DES keySize: nil blockSize: 8 hasIvParameter: true