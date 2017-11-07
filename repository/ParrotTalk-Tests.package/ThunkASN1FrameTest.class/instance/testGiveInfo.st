as yet unclassified
testGiveInfo

	| hdr frame bytes newFrame encodedBytes |
	encodedBytes := #[0 0 0 81 0 0 1 44 170 130 1 32 12 10 49 50 51 52 53 54 55 56 57 48 12 5 104 101 108 108 111 48 130 1 9 2 130 1 0 115 231 153 187 59 135 204 18 127 9 12 71 230 103 111 173 138 207 196 239 59 28 52 143 84 156 199 153 38 6 5 171 95 32 86 226 220 15 113 75 219 7 231 107 127 151 131 167 61 47 254 81 15 154 249 130 72 109 9 238 96 163 166 246 177 27 120 235 164 185 46 195 118 137 64 96 5 6 114 135 40 130 212 7 122 117 210 245 75 11 96 124 58 251 42 195 125 250 206 101 83 61 31 144 103 79 70 23 254 144 145 119 235 187 244 164 75 53 41 191 97 154 47 86 87 143 193 82 134 68 40 131 148 65 211 9 229 16 199 95 202 97 244 139 199 219 4 86 230 164 243 111 16 251 29 137 99 165 234 109 174 141 111 81 12 112 71 153 220 88 216 180 91 87 57 250 118 102 81 139 159 242 4 84 100 13 226 171 231 153 218 77 157 61 170 119 222 28 84 110 202 214 175 135 243 39 174 31 126 223 39 44 249 194 187 127 53 122 124 55 25 222 42 224 98 135 168 13 109 202 167 18 37 6 204 211 46 102 48 10 3 145 189 10 200 145 85 137 192 109 245 178 155 155 119 25 2 3 1 0 1].
	hdr := GiveInfo new.
	hdr vatId: '1234567890'.
	hdr domain: 'hello'.
	hdr publicKey: self buildSamplePublicKey.
	frame := hdr asFrame.
	bytes := frame asByteArray.
"	Transcript cr; cr; show: bytes printString."
	self assert: (frame tags == 0).
	self assert: (frame multicast == 0).
	self assert: (frame frameVersion == 1).
	self assert: (frame priority == 0).
	self assert: (frame headerType == 10).
	self assert: (frame hash == 0).
	self assert: (frame messageSize == 300).

	self assert: (bytes = encodedBytes).

	newFrame := Frame readFrom: bytes readStream.
	self assert: (frame header class = newFrame header class).
	self assert: (frame header vatId = newFrame header vatId).
	self assert: (frame header domain = newFrame header domain).
	self assert: (frame header publicKey exponent = newFrame header publicKey exponent).
	self assert: (frame header publicKey modulo = newFrame header publicKey modulo).
