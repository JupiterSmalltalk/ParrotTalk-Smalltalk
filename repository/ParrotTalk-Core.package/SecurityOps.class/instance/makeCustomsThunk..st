private - making
makeCustomsThunk: stack

	| hmac |
	hmac := self makeHMAC.
	^ (Thunk new) doesPop: false; doesPush: false;
		upThunk: [:frame |
			((hmac digestMessage: frame payload) = (stack propertyAt: #ReadMAC))
				ifFalse: [ CryptographyError signal: 'customs failed MAC verification' ] ];
		downThunk: [:frame | stack propertyAt: #WriteMAC put: (hmac digestMessage: frame payload) ];
		yourself.
