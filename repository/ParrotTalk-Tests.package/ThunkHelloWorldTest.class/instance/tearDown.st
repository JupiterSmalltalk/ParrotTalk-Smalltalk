building
tearDown

	SessionAgent allInstances do: [:e | e stop].
	Session allInstances do: [:e | e shutdown].
	Socket allInstances do: [:e | e destroy].
