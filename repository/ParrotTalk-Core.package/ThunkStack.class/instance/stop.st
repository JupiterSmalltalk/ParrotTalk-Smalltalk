protocol
stop
	self
		do: [:proto | proto close].
	self shutdown