initialization
initialize
	super initialize.
	collection := OrderedCollection new.
	self printBlock: [ :child :cxt | 'Trace : ' ].
	self evaluationBlock: [ :child :cxt | child do: [ :ch | ch evaluateUsing: cxt ] ]