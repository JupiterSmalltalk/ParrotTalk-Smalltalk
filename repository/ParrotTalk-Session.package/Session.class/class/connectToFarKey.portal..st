instance creation
connectToFarKey: farKey portal: portal

	| ep |
	[ep := SocketThunk newConnection: farKey host port: farKey port]
		on: ConnectionTimedOut
		do: [:ex |
			ex pass].
	^ self onSource: ep farKey: farKey portal: portal.
