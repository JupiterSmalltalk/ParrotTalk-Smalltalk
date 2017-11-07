action
lookupProtocolByName: protoName

	^ cryptoProtocols
		detect: [ :proto | proto protocolName = protoName ]
		ifNone: [ Exception signal: (protoName, ' not found') ]
