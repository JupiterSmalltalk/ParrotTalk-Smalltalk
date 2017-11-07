instance creation
newOnKeys: keys host: host port: port nick: nick

	| vatId |
	vatId := self newOnKeys: keys host: host port: port.
	vatId nickname: nick.
	^ vatId.
