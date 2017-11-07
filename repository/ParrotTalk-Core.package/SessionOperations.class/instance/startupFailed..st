control
startupFailed: reason

	securityOps clearSensitiveInfo.
	securityOps := nil.
	self triggerEvent: #connectionFailed with: self.
	session shutdown.
