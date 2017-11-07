building
buildMapAESedeJson

	^ SessionAgentMap newProtocol: self buildAESedeProtocolMaker encoder: self buildJsonEncoderThunk