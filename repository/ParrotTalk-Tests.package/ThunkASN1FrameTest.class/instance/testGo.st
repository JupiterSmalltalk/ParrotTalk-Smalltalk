as yet unclassified
testGo

	| hdr frame bytes newFrame encodedBytes dhParm |
	encodedBytes := #[0 0 0 97 0 0 2 17 172 130 2 5 12 5 104 101 108 108 111 12 5 119 111 114 108 100 4 129 240 90 86 168 229 173 75 79 80 74 246 246 97 100 221 231 135 39 213 12 29 163 29 20 233 45 51 184 124 113 106 249 85 153 177 90 16 245 252 39 61 46 172 115 1 46 155 68 17 5 169 219 135 183 16 13 95 209 227 76 205 192 180 194 153 135 27 77 171 91 243 110 168 216 16 42 203 140 242 197 31 167 146 175 73 165 153 89 68 47 108 99 29 34 48 77 189 9 68 254 43 56 67 232 93 122 186 185 56 140 77 223 198 159 5 119 192 106 6 100 69 234 37 92 123 195 113 136 69 19 26 246 236 35 110 21 204 206 76 88 172 211 186 68 180 171 229 5 142 245 74 78 217 210 164 255 63 15 5 246 157 63 38 69 241 201 56 44 146 139 42 10 66 128 90 0 71 23 151 28 53 113 89 129 39 193 131 180 33 31 14 187 160 43 114 236 66 220 200 154 189 79 201 64 106 16 76 249 80 69 128 3 181 198 117 212 109 162 44 132 42 125 239 102 210 169 189 186 83 184 45 230 91 166 49 230 10 128 65 113 232 4 130 1 0 76 209 101 125 140 49 25 147 148 94 117 219 200 210 180 196 123 80 204 245 169 240 247 156 22 145 152 110 1 157 63 145 230 33 167 104 59 17 138 185 62 111 194 252 215 245 24 59 146 210 19 129 173 88 95 205 214 212 82 101 123 119 233 45 190 99 43 93 79 242 23 100 79 5 223 146 61 98 61 114 227 26 2 221 234 202 18 78 41 102 93 63 139 178 221 102 77 53 25 94 9 130 253 11 141 209 59 184 187 150 0 186 227 102 89 9 143 15 22 2 231 85 66 57 249 221 113 160 73 84 152 93 100 46 120 176 157 34 208 100 96 194 14 90 104 228 172 220 9 19 159 194 152 170 240 68 125 233 17 113 36 5 216 35 91 53 35 145 218 171 112 251 27 22 121 207 31 82 23 97 176 217 132 37 119 124 1 19 60 2 123 212 71 64 41 144 66 138 112 13 173 12 251 28 57 208 100 214 223 248 228 116 241 121 164 35 30 101 179 159 88 155 86 112 219 68 213 116 170 126 225 91 100 200 223 28 160 4 88 58 165 16 129 252 216 229 150 74 34 169 162 86 172 70 63 185].
	dhParm := #[90 86 168 229 173 75 79 80 74 246 246 97 100 221 231 135 39 213 12 29 163 29 20 233 45 51 184 124 113 106 249 85 153 177 90 16 245 252 39 61 46 172 115 1 46 155 68 17 5 169 219 135 183 16 13 95 209 227 76 205 192 180 194 153 135 27 77 171 91 243 110 168 216 16 42 203 140 242 197 31 167 146 175 73 165 153 89 68 47 108 99 29 34 48 77 189 9 68 254 43 56 67 232 93 122 186 185 56 140 77 223 198 159 5 119 192 106 6 100 69 234 37 92 123 195 113 136 69 19 26 246 236 35 110 21 204 206 76 88 172 211 186 68 180 171 229 5 142 245 74 78 217 210 164 255 63 15 5 246 157 63 38 69 241 201 56 44 146 139 42 10 66 128 90 0 71 23 151 28 53 113 89 129 39 193 131 180 33 31 14 187 160 43 114 236 66 220 200 154 189 79 201 64 106 16 76 249 80 69 128 3 181 198 117 212 109 162 44 132 42 125 239 102 210 169 189 186 83 184 45 230 91 166 49 230 10 128 65 113 232].
	hdr := Go new.
	hdr cryptoProtocol: 'hello'.
	hdr dataEncoder: 'world'.
	hdr diffieHellmanParameter: dhParm.
	hdr signature: (SessionIdentity sampleVatId1 signMessage: dhParm).
	frame := hdr asFrame.
	bytes := frame asByteArray.
"	Transcript cr; cr; show: bytes printString."
	self assert: (frame tags == 0).
	self assert: (frame multicast == 0).
	self assert: (frame frameVersion == 1).
	self assert: (frame priority == 0).
	self assert: (frame headerType == 12).
	self assert: (frame hash == 0).
	self assert: (frame messageSize == 529).

	self assert: (bytes = encodedBytes).

	newFrame := Frame readFrom: encodedBytes readStream.
	self assert: (frame header class = newFrame header class).
	self assert: (frame header cryptoProtocol = newFrame header cryptoProtocol).
	self assert: (frame header dataEncoder = newFrame header dataEncoder).
	self assert: (frame header diffieHellmanParameter = newFrame header diffieHellmanParameter).
	self assert: (frame header signature = newFrame header signature).