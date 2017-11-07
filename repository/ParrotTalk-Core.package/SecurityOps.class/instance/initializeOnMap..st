initialize-release
initializeOnMap: aPortalMap

	portalMap := aPortalMap.
	self initialize.
	diffieHellman := DiffieHellman prime: self dhPrime1 generator: self dhGenerator.
	"diffieHellman := DiffieHellman prime: self dhPrime2 generator: self dhGenerator."
	"diffieHellman := DiffieHellman prime: self dhPrime3 generator: self dhGenerator."
