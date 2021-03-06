examples
sampleVatId1
	"SessionIdentity sampleVatId1"
	"
		| id |
		id := self newRandomKeysOnPort: 10011.
		((PBESHA1Encryptor newPassword: 'sampleVatId1') encrypt: id asByteArray) base64Encoded.
	"

	| pbeString id |
	pbeString := 'yF37H52C2fQAABOIAAABAAAQfRwyw+OEhn5qocJV+4ENYwQQ+MqNFRSF4fnBCKJZ/Hw6vtCy
kAl69Km2pujSxUuRySM1o3nZBlYbKpadEDAMIjkNSkVh+lQPu9EVTmJAE8kybmciin1PK28T
FAJQ141MsBI9pjMxJ9iNCKqzPWQt907NNhqHOqTEFL11X7Y5vnSALcX/glyAa4EVjoybVy7o
DF/ohpmvfHnD1ao8PfSgBMsnWGHrDgMl5nHDbmVT0Yetj6kPN3/8kAqMejPQSc7OKfVcYpbF
MdW9xo2B+imKVOrDe0cQynHMF5a3ievgPz02qCuzpjpS1XW0FIuhOCER6byTTgqbzLRh0CUk
ZE5tEqpGTnvjTPUXuRZqCNE3/PIjcyw08NZ2l9fCsOb9UrVpLZjbOI0iNPvf/wGynwEZrFhj
GUyX5fAEwUEGP/Z5et6uqK3IvtsHjg10KhEnWQzCZrMfpcuOZen/gfBwjYFVw+/GfFd5hpTb
YckE8VeXclokMXn0nzyVqQBWc4DQoX6TKoyvqAzS9wfgNS4t5GKeNbeMNJYfxBREi4M2mHLQ
yC9DrPrWfw6L95I3djVvXXtMLZ0X+TTvr03O4G7iGgqCkT6AAIybfo8QGlKaT0oKlt47Q2o+
JFy2VQGdEMQV8mAkH9teHLFHj4ruK5mMOa6H3h/V2FPg2360f2teUNwKiFXj3VAqSpd87AiI
/Z83cFcVs9IijuafL01Gg/esuQAbvgixUd/Me+v2cBF/dSil4obYjNy8ZnuegTC5m2h/eNn2
0eCH3KpQFlPtK5E1JxTjn3el48ujO3VrKf3LovGThv8NPH55NfcfTOKSbTdLZ4yYLfipJhzl
WwvIXOp0agRsW8tH57mIJR3NaaNXKlGSQYUsRgDZbqKSgoVzPwaYoY+742+Ep0CNUrbkVKyQ
zgx7PPFAjYRua/K80BPb5dXEoFS2VSJcBUVgKypX1f1ELVXYBjomc1nFkx/ad6TTufrOuFh4
Nb63FVIgepPWcf8phmbj0M0iUM/keNJQQJ05NQahzWi1WHc4Mwpnh3e6zcuow3T1+IYoZf6G
B/hTgj1wmM9srRqABXnuEZCIIY6M3ZOc/82tdNd44+y1jeh++5hcyCvuSW9CXNHRm8MkLEx/
x9DLPBaCdEpOqmfuLkqLpJBPiEntpsehnM4musR151aKSmyQmqBZITvWlHL1j0Bzz5T0N16e
yBQfMcgpBHGKqFeO+ayCqzeRq8fY0i8Tq7zmN9PeNZ52FIRXJTJf1NVMjNASq58/j4oajFYM
AdmRMQ+vR6XU/EE9y9A3Kc2CWBrOEnuS48rxbHJ6lPZJLnBCnvBFQag9qUG3PV5lmUyN8SBZ
pFJgD2j4FKcAPYa1F7hnBYDO8e2ySNSnH6U1jZtAslf7indtFK6QR4SdqeptZOZPqKQ='.

	id := self fromByteArray: ((PBESHA1Encryptor newPassword: 'sampleVatId1') decrypt: pbeString base64Decoded).
	id socketAddress: (InetSocketAddress newOnPort: id port).
	^ id