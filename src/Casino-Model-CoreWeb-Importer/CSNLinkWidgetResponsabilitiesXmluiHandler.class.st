Class {
	#name : #CSNLinkWidgetResponsabilitiesXmluiHandler,
	#superclass : #CSNLinkWidgetResponsabilitiesHandler,
	#category : #'Casino-Model-CoreWeb-Importer'
}

{ #category : #handlers }
CSNLinkWidgetResponsabilitiesXmluiHandler >> handleAddLinkedFromVariable: aCollectionOfUsages to: widgetContainer withXmlui: xmluiLinkTable andImporter: theCurrentImporter [
	xmluiLinkTable
		at: ((widgetContainer source source atAnyScope: {FamixTClass . FamixTParameterizedType}) anyOneIfOnlyOneElement)
		ifPresent: [ :listOfWidgetClass | 
			listOfWidgetClass
				do: [ :widgetClass | 
					(theCurrentImporter model allCSNWidgetExceptPage select: [ :widget | widget isContainer and: [ widget realClass = widgetClass ] ])
						do: [ :widget | widget addWidget: widgetContainer ] ] ]
]
