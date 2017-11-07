initialize-release
stopServices

	process ifNotNil: [process terminate. process := nil].
	connectionQueue ifNotNil: [connectionQueue destroy. connectionQueue := nil].
	portalMap release.
	self triggerEvent: #PortalClosed.
	self releaseActionMap.
