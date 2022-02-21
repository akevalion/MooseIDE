Extension { #name : #FamixTFileAnchor }

{ #category : #'*CPPS-Entities' }
FamixTFileAnchor >> gtInspectorCompleteSourceTextIn: composite [
	<gtInspectorPresentationOrder: 20>
	self flag: 'gtinspector'.
	composite text
		title: 'Complete source code';
		format: [ self completeText ];
		when: [ self completeText notEmpty ];
		withLineNumbers: true
]

{ #category : #'*CPPS-Entities' }
FamixTFileAnchor >> gtInspectorSourceTextIn: composite [
	<gtInspectorPresentationOrder: 25>
	self flag: 'gtinspector'.
	composite text
		title: 'Source code';
		format: [ self sourceText ];
		when: [ self sourceText notEmpty ];
		withLineNumbers: true
]
