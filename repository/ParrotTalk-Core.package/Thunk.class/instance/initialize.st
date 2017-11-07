initialize-release
initialize

	self doesPop: true.
	self upThunk: [:frame | frame payload ].

	self doesPush: true.
	self headerMakerThunk: [:frame | frame header ].
	self downThunk: [:frame | frame asByteArray ].
