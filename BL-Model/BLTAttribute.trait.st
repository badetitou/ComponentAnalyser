Trait {
	#name : #BLTAttribute,
	#instVars : [
		'#attribute => FMOne type: #BLTWithAttributes opposite: #attributes'
	],
	#category : 'BL-Model-Traits'
}

{ #category : #meta }
BLTAttribute classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAttribute super: #Trait>
	<generated>
	<package: #'BL-Model'>
	^self
]

{ #category : #generator }
BLTAttribute classSide >> generatedSlotNames [
	<generated>
	'BLTAttribute class>>#generatedSlotNames'.
	^ #(attributeOwner)
]

{ #category : #generator }
BLTAttribute classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
BLTAttribute >> attributeOwner [

	<generated>
	<container>

	^ attributeOwner
]

{ #category : #accessing }
BLTAttribute >> attributeOwner: anObject [

	<generated>
	attributeOwner := anObject

]