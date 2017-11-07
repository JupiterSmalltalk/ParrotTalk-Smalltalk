action
addRemoteFrame: frame

	remoteMessagesToSign addLast: frame header asSignableBytes.

