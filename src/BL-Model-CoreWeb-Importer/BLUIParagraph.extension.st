Extension { #name : #BLUIParagraph }

{ #category : #'*BL-Model-CoreWeb-Importer' }
BLUIParagraph class >> canHandle: anInvocation [
	^ #('BLLabel' 'Label' 'FactoryBLLabel') includes: anInvocation invokedClassName
]

{ #category : #'*BL-Model-CoreWeb-Importer' }
BLUIParagraph >> canHaveAttribute: blAttributeClass [
	^ blAttributeClass ~= BLEnable
]

{ #category : #'*BL-Model-CoreWeb-Importer' }
BLUIParagraph class >> createWidgetFor: anInvocation [
	| widget |
	widget := super createWidgetFor: anInvocation.
	widget
		addWidget:
			(BLUILeaf new
				text:
					(anInvocation parameters
						at: 1
						ifAbsent: [ self flag: #todo.
							'TODO' ])).
	widget parameters at: 'class' put: ((anInvocation parameters at: 3 ifAbsent: [ 'NIVEAU2' ]) removePrefix: 'BLLabel.').
	^ widget
]