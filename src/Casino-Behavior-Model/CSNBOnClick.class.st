"
Should happen when the click event is fired
"
Class {
	#name : #CSNBOnClick,
	#superclass : #CSNAction,
	#category : #'Casino-Behavior-Model-Entities'
}

{ #category : #testing }
CSNBOnClick class >> accept: aCSNModelVisitor [
	<generated>
	^ aCSNModelVisitor visitCSNBOnClick: self
]

{ #category : #meta }
CSNBOnClick class >> annotation [

	<FMClass: #OnClick super: #CSNAction>
	<package: #'Casino-Behavior-Model'>
	<generated>
	^self
]

{ #category : #testing }
CSNBOnClick class >> canHandle: aFAMIXClass [
	^ aFAMIXClass name includesSubstring: 'ClickHandler'
]

{ #category : #testing }
CSNBOnClick class >> createActionFrom: aClass for: aWidgetInstance withImporter: anImporter [
	^ (super createActionFrom: aClass for: aWidgetInstance withImporter: anImporter)
		name: 'click';
		yourself
]

{ #category : #'as yet unclassified' }
CSNBOnClick >> getAngularRepresentation [
	^ self behavior
		ifEmpty: [ "self warning: #ThisShouldBeFixed."
			'' ]
		ifNotEmpty: [ :behaviors | '(click)="' , behaviors anyOne uniqueName , '()"' ]
]