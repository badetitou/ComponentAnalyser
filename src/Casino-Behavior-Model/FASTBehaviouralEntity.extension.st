Extension { #name : #FASTBehaviouralEntity }

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTBehaviouralEntity >> carrefourOnFailureOwner [
	"Relation named: #carrefourOnFailureOwner type: #CSNBCall opposite: #onFailure"

	<generated>
	<container>
	<derived>
	<FMProperty: #carrefourOnFailureOwner type: #CSNBCall opposite: #onFailure>
	<package: #'Casino-Behavior-Model'>
	^ self attributeAt: #carrefourOnFailureOwner ifAbsent: [ nil ]
]

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTBehaviouralEntity >> carrefourOnFailureOwner: anObject [

	<generated>
	(self attributeAt: #carrefourOnFailureOwner ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self carrefourOnFailureOwner.
		self attributeAt: #carrefourOnFailureOwner put: anObject.
		otherSide onFailure: nil ]
	ifNotNil: [ 
		self attributeAt: #carrefourOnFailureOwner put: anObject.
		anObject onFailure: self ]
]

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTBehaviouralEntity >> carrefourOnSuccessOwner [
	"Relation named: #carrefourOnSuccessOwner type: #CSNBCall opposite: #onSuccess"

	<generated>
	<container>
	<derived>
	<FMProperty: #carrefourOnSuccessOwner type: #CSNBCall opposite: #onSuccess>
	<package: #'Casino-Behavior-Model'>
	^ self attributeAt: #carrefourOnSuccessOwner ifAbsent: [ nil ]
]

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTBehaviouralEntity >> carrefourOnSuccessOwner: anObject [

	<generated>
	(self attributeAt: #carrefourOnSuccessOwner ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self carrefourOnSuccessOwner.
		self attributeAt: #carrefourOnSuccessOwner put: anObject.
		otherSide onSuccess: nil ]
	ifNotNil: [ 
		self attributeAt: #carrefourOnSuccessOwner put: anObject.
		anObject onSuccess: self ]
]

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTBehaviouralEntity >> ui [
	"Relation named: #ui type: #CSNAction opposite: #behavior"

	<generated>
	<FMProperty: #ui type: #CSNAction opposite: #behavior>
	<package: #'Casino-Behavior-Model'>
	^ self attributeAt: #ui ifAbsent: [ nil ]
]

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTBehaviouralEntity >> ui: anObject [

	<generated>
	self attributeAt: #ui put: (FMMultivalueLink on: self update: #behavior from: self ui to: anObject).
]
