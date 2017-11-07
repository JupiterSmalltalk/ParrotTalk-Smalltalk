| id hydratedId encodedBytes |
id := SecureSessionRSAIdentity newRandom.
encodedBytes := PBEEncryptor encryptRawBytes: id asBytes.
hydratedId := SecureSessionRSAIdentity fromBytes: (PBEEncryptor decryptEncodedBytes: encodedBytes).
id -> hydratedId

| roundTripBlock |
roundTripBlock := [:password :msg |
	(PBEEncryptor decryptOn: password encodedBytes: 
		(PBEEncryptor encryptOn: password rawBytes: msg))
			asString].
roundTripBlock value: 'password' value: 'hello world'

algorithmId := X509AlgorithmIdentifier
	oidString: '1.2.840.113549.1.5.12'
	parameters: (OrderedCollection
		with: salt
		with: PBKDF2WithHmacSHA1 defaultIterations
		with: PBKDF2WithHmacSHA1 defaultKeyBitLength
		with: (X509AlgorithmIdentifier oidString: '1.2.840.113549.7')).
algorithmBytes := ASN1Stream encode: algorithmId withType: ((ASN1Module name: #x509) find: #AlgorithmIdentifier).
bytes := (OrderedCollection with: algorithmBytes with: concatPublicKeyBytes) asAsn1Bytes.


| id bytes encryptor password salt iv encryptedBytes array params |
id := SecureSessionRSAIdentity newRandom.
password := (UIManager default requestPassword: 'SecureSession Identity password') asByteArray.
bytes := id asAsn1DerBytes.
encryptor := PBEEncryptorWithSHA1 newOn: password.
salt := encryptor salt.
iv := encryptor iv.
encryptedBytes := encryptor encrypt: bytes.
array := Array with: salt with: iv with: encryptedBytes.



| id bytes encryptor unencodedId decryptor password salt iv originalBytes encryptedBytes decryptedBytes |
decryptor := PBEEncryptorWithSHA1 newOn: password salt: salt iv: iv.
decryptedBytes := decryptor decrypt: encryptedBytes.
self assert: (originalBytes = decryptedBytes).

