connect
connectToKey: farKey

	| conn |
	conn := Session
		connectToFarKey: farKey 
		portal: self.
	conn call.
	^ conn