stack
downcall: frame

	frame payload: (serializeThunk value: frame payload).
	frame header: Encoded new.
