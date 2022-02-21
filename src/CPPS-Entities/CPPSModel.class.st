"
TODO
"
Class {
	#name : #CPPSModel,
	#superclass : #MooseModel,
	#instVars : [
		'rulesManager'
	],
	#category : #'CPPS-Entities-Model'
}

{ #category : #accessing }
CPPSModel >> allMainEntities [
	<navigation: 'All main entities'>
	^ self
		lookUpPropertyNamed: #allMainEntities
		computedAs: [ 'Compute allMainEntities' record.
			self allModelBehaviourals , self allModelContainers ]
]

{ #category : #accessing }
CPPSModel >> allModelClasses [
	<navigation: 'All model classes'>
	"a cpp model can have types or classes hence we show both: types and classes.
	we double check here that types shown have sourceanchor in addition to checking in the super class that these are stubs
	we try to avoid showing type alias in the interface"

	^ self lookUpPropertyNamed: #allModelClasses computedAs: [ self allTypes reject: [ :each | each isStub or: [ each hasSourceAnchor not ] ] ]
]

{ #category : #accessing }
CPPSModel >> computeAllModelBehaviourals [
	self flag: #todo.	"we remove empty functions because these are function pointers and we dont know yet how to show  these in the interface correctly"
	^ super computeAllModelBehaviourals reject: [ :each | each name isEmpty ]
]
