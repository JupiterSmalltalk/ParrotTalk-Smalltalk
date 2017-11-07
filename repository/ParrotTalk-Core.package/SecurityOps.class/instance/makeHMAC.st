private - making
makeHMAC

	| sharedKey hashPadder macKey |
	sharedKey := diffieHellman sharedKeyPadPositiveByteArray.
	hashPadder := self class.
	macKey := MD5 hashMessage: (
		(hashPadder hash: sharedKey pad: 16rCC), 
		(hashPadder hash: sharedKey pad: 16rBB), 
		(hashPadder hash: sharedKey pad: 16rAA), 
		(hashPadder hash: sharedKey pad: 16r99)).
	macKey := macKey, (MD5 hashMessage: (
		(hashPadder hash: sharedKey pad: 16r88), 
		(hashPadder hash: sharedKey pad: 16r77), 
		(hashPadder hash: sharedKey pad: 16r66), 
		(hashPadder hash: sharedKey pad: 16r55))).
	macKey := macKey, (MD5 hashMessage: (
		(hashPadder hash: sharedKey pad: 16r44), 
		(hashPadder hash: sharedKey pad: 16r33), 
		(hashPadder hash: sharedKey pad: 16r22), 
		(hashPadder hash: sharedKey pad: 16r11))).
	^  SHA1 new hmac key: macKey.
