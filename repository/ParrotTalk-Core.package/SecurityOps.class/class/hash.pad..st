compiling
hash: byteArray pad: padByte

	| paddedStream |
	paddedStream := (ReadWriteStream on: (ByteArray new: 64))
		nextPutAll: (ByteArray new: 16 withAll: padByte);
		nextPutAll: byteArray; reset.
	^ MD5 hashStream: paddedStream.
