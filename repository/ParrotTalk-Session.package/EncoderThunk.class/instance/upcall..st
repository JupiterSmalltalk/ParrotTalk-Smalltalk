stack
upcall: frame

	frame payload: (materializeThunk value: frame payload).
	frame header: RawData new.
