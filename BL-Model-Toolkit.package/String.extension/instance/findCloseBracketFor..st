*BL-Model-Toolkit
findCloseBracketFor: startIndex
	"assume (self at: startIndex) is ${.  Find the matching $}, allowing parentheses to nest."

	| pos nestLevel |
	pos := startIndex + 1.
	nestLevel := 1.
	[ pos <= self size ]
		whileTrue: [ (self at: pos) = ${
				ifTrue: [ nestLevel := nestLevel + 1 ].
			(self at: pos) = $}
				ifTrue: [ nestLevel := nestLevel - 1 ].
			nestLevel = 0
				ifTrue: [ ^ pos ].
			pos := pos + 1 ].
	^ self size + 1