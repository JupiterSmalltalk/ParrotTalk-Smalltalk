control
startupSuccessful: isIncoming
  "Patch the protocol stack to include an encrypting protocol layer"

  securityOps installOnSession: session stack: stack incoming: isIncoming.
  securityOps clearSensitiveInfo.
  securityOps := nil.
  self triggerEvent: #'connectionSuccessful' with: session