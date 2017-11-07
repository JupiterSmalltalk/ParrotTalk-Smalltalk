instance creation
onPayload: bytes

	^ self onHeader: RawData new payload: bytes.
