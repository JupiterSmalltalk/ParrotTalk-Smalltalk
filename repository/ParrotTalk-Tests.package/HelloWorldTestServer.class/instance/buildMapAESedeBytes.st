building
buildMapAESedeBytes

	^ SessionAgentMap 
		newProtocol: (CipherThunkMaker newName: 'AESede' cipherClass: Rijndael keySize: 32 blockSize: 16 hasIvParameter: true)
		encoder: (EncoderThunk
			newName: 'String'
			serializeThunk: [:payload | payload asByteArray ]
			materializeThunk: [:payload | payload asString ])