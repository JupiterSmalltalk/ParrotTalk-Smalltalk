private - making
makeImmigrationThunk: stack

	^ (Thunk new)
		upThunk: [:frame |
			stack propertyAt: #ReadMAC put: frame hdr mac.
			frame payload ];
		headerMakerThunk: [:frame | MAC new mac: (stack propertyAt: #WriteMAC) ];
		downThunk: [:frame | frame asByteArray ];
		yourself