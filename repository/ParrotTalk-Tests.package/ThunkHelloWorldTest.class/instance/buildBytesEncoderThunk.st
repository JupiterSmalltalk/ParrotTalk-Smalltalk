building
buildBytesEncoderThunk

	^ EncoderThunk
		newName: 'Bytes'
		serializeThunk: [:payload | payload asByteArray ]
		materializeThunk: [:payload | payload asByteArray ]