instance creation
readFrom: stream

	| id |
	id := super new.
	[ id readFrom: stream ]
		on: Error
		do: [ :ex | NotFound signal].
	^ id