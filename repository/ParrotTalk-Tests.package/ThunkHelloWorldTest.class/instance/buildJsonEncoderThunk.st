building
buildJsonEncoderThunk

"	^ EncoderThunk
		newName: 'bytes'
		serializeThunk: [:payload | Json render: payload ]
		materializeThunk: [:payload |  Json new readFrom: payload asString readStream ]"

	^ EncoderThunk
		newName: 'bytes'
		serializeThunk: [:payload | payload asByteArray ]
		materializeThunk: [:payload | payload asByteArray ]