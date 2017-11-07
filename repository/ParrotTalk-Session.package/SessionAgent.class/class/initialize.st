class initialization
initialize

	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.
	self startUp: false.