Extension { #name : #CSNPage }

{ #category : #'*Casino-Model-CoreWeb-Importer' }
CSNPage >> addWidget: aWidget [
	self businessPage
		ifEmpty: [ self businessPage
				add:
					(CSNBusinessPage new
						name: 'autoGenerated';
						addWidget: aWidget) ]
		ifNotEmpty: [ (self businessPage at: 1) addWidget: aWidget ]
]