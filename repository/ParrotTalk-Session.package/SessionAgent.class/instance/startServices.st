initialize-release
startServices

	"start this broker"
	
	Socket initializeNetwork.
	connectionQueue notNil ifTrue: [^self].
	connectionQueue := ConnectionQueue portNumber: self portalKey port queueLength: 8.
	process := [self doAwaitInbound] newProcess.
	process priority: Processor highIOPriority.
	process resume.
	self triggerEvent: #PortalOpened.
	(Delay forMilliseconds: 30) wait.