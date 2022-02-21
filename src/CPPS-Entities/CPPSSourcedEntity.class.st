"
TODO
"
Class {
	#name : #CPPSSourcedEntity,
	#superclass : #CPPSEntity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#category : #'CPPS-Entities-Entities'
}

{ #category : #'as yet unclassified' }
CPPSSourcedEntity >> inspectorSourceText [
	self flag: '	composite text
		title: ''Source code'';
		withLineNumbers: true;
		format: [ self sourceText ];
		when: [ self sourceText isNotEmpty ]'
]
