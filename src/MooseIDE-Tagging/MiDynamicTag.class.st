Class {
	#name : #MiDynamicTag,
	#superclass : #Object,
	#instVars : [
		'name',
		'query',
		'color',
		'description',
		'category'
	],
	#category : #'MooseIDE-Tagging-Browser'
}

{ #category : #accessing }
MiDynamicTag >> category [

	^ category
]

{ #category : #accessing }
MiDynamicTag >> category: anObject [

	category := anObject
]

{ #category : #accessing }
MiDynamicTag >> color [

	^ color
]

{ #category : #accessing }
MiDynamicTag >> color: anObject [

	color := anObject
]

{ #category : #accessing }
MiDynamicTag >> description [

	^ description
]

{ #category : #accessing }
MiDynamicTag >> description: anObject [

	description := anObject
]

{ #category : #testing }
MiDynamicTag >> isApplicableTo: anObject [

	| queryList result currentQuery |
	"The query should accept one parameter (anObject) and return a boolean."
	queryList := LinkedList new.
	result := MooseGroup new
		          add: anObject;
		          yourself.
	currentQuery := query.
	[ currentQuery isNil ] whileFalse: [ 
		queryList addFirst: currentQuery.
		currentQuery := currentQuery parent ].
	[ queryList isEmpty ] whileFalse: [ 
		result := (currentQuery := queryList removeFirst) runOn: result ].
	^ result isNotEmpty
]

{ #category : #testing }
MiDynamicTag >> isIntent [

	^ true
]

{ #category : #accessing }
MiDynamicTag >> name [

	^ name
]

{ #category : #accessing }
MiDynamicTag >> name: anObject [

	name := anObject
]

{ #category : #accessing }
MiDynamicTag >> query [

	^ query
]

{ #category : #accessing }
MiDynamicTag >> query: anObject [

	query := anObject
]

{ #category : #accessing }
MiDynamicTag >> taggedEntities [

	^ #()
]
