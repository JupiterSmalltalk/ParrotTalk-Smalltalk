building
buildDESedeProtocolMaker

	^ CipherThunkMaker newName: 'DESede' cipherClass: TripleDES keySize: nil blockSize: 8 hasIvParameter: true