control
close

	self triggerEvent: #connectionClosed with: self.
	map ifNotNil: [map release. map := nil].
	self releaseActionMap.
