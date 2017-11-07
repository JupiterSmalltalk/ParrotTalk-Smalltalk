instance creation
newOnKeys: keys port: port nick: nick

	| vatId |
	vatId := self newOnKeys: keys port: port.
	vatId nickname: nick.
	^ vatId.
