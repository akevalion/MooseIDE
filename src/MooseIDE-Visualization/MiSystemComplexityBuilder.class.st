Class {
	#name : #MiSystemComplexityBuilder,
	#superclass : #HSimpleVisualizationBuilder,
	#instVars : [
		'mapModel',
		'nodeMooseIDDict',
		'widthMetricThreshold',
		'heightMetricThreshold',
		'colorMetricThreshold'
	],
	#category : #'MooseIDE-Visualization-System Complexity'
}

{ #category : #building }
MiSystemComplexityBuilder >> borderFor: node [

	^ node hasChildren
		  ifTrue: [ 
			  RSBorder new
				  width: 2;
				  capSquare;
				  joinMiter;
				  color: Smalltalk ui theme textColor;
				  dashArray: #( 5 10 );
				  yourself ]
		  ifFalse: [ 
			  RSBorder new
				  color: Color black translucent;
				  yourself ]
]

{ #category : #building }
MiSystemComplexityBuilder >> build [

	
	self initializeRootNode.
	self setDependencies.
	self renderIn: self container.
	self buildLegend.
	^ self container
]

{ #category : #building }
MiSystemComplexityBuilder >> buildCompositeEmptyNodeIn: shape [

	| node box rect |
	node := shape model.
	node level <= 1 ifTrue: [ 
		shape
			color: Color black;
			border: (self borderFor: node).
		shape schildren: #(  ).

		^ self ].


	shape addAll: (self nodeStyler labelAndIconFor: node).
	rect := shape children encompassingRectangle.
	box := RSBox new
		       model: node;
		       position: rect floatCenter;
		       extent: rect extent + 10;
		       cornerRadius: self fullCornerRadius;
		       color: (self colorFor: node);
		       border: (self borderFor: node);
		       yourself.
	shape add: box.
	box pushBack.
	shape schildren: #(  ).

	shape
		propertyAt: #background put: box;
		adjustToChildren
]

{ #category : #building }
MiSystemComplexityBuilder >> buildCompositeFullNodeIn: shape [
	| childrenShapes node titleGroup title titleBox children 
	boxChildren titleRadius boxChildrenRadius list |
	node := shape model.
	titleGroup := self nodeStyler labelAndIconFor: node.
	titleBox := RSBox new
		extent: titleGroup extent + 10;
		color: ((self colorFor: node) alpha: 0.7);
		position: titleGroup position;
		yourself.
	title := RSComposite new
		add: titleBox; 
		addAll: titleGroup;
		adjustToChildren;
		yourself.
	shape propertyAt: #background put: titleBox.
	childrenShapes := self childrenFor: node.
	self layoutChildrenOn: childrenShapes parent: node.
	
	shape schildren: childrenShapes.
	childrenShapes do: [ :child | child sparent: shape ].
	children := childrenShapes asShape
		padding: 10.
	childrenShapes do: [ :child | child model position: child position ].
	title width < children width
		ifTrue: [ titleBox width: children width. title adjustToChildren ]
		ifFalse: [ children width: title width ].
	boxChildren := self boxChildrenFor: node.
	titleRadius := self topCornerRadius.
	boxChildrenRadius := self bottomCornerRadius.
	list := { title. children }.
	self nodeStyler position = #below ifTrue: [ 
		titleRadius := self bottomCornerRadius.
		boxChildrenRadius := self topCornerRadius.
		list := { children. title }.
		 ].
	RSVerticalLineLayout new
		gapSize: 0;
		on: list.
	titleBox cornerRadius: titleRadius.
	boxChildren
		cornerRadius: boxChildrenRadius;
		fromRectangle: children encompassingRectangle.
	
	shape add: title; add: boxChildren; add: children.
	shape adjustToChildren.
	
]

{ #category : #building }
MiSystemComplexityBuilder >> buildLegend [
	| legend |
	legend := RSLegend new.
	legend container: self container.
	legend onDemand.
	legend title: 'System complexity'.
	legend text: ''.
	legend
		polymetricWidth: mapModel widthMetric
		height: mapModel heightMetric
		box: 'Class'.
	legend
		text: mapModel colorMetric
		withFadingRamp:
			{(0 -> mapModel colorRangeStart).
			(1 -> mapModel colorRangeEnd)}.
	legend text: 'Line = Inheritance'.
	legend build
]

{ #category : #building }
MiSystemComplexityBuilder >> buildNodeFromEntity: anEntity [

	| node |
	node := HNode new
		        rawModel: anEntity;
		        name: (anEntity perform: self mapModel nameToDisplay);
		        addAll:
			        ((anEntity children asOrderedCollection sort: [ :c1 :c2 | 
					          c1 name < c2 name ]) collect: [ :e | 
					         self buildNodeFromEntity: e ]);
		        collapse;
		        yourself.
	nodeMooseIDDict at: anEntity mooseID put: node.
	^ node
]

{ #category : #building }
MiSystemComplexityBuilder >> colorBlock [

	^ [ :e | e rawModel perform: mapModel colorMetric ]
]

{ #category : #initialization }
MiSystemComplexityBuilder >> colorFor: node [
	^ Color fromHexString: '2980B9'
]

{ #category : #accessing }
MiSystemComplexityBuilder >> colorMetricThreshold [

	^ colorMetricThreshold ifNil: [ colorMetricThreshold := 100 ]
]

{ #category : #accessing }
MiSystemComplexityBuilder >> colorMetricThreshold: anObject [

	colorMetricThreshold := anObject
]

{ #category : #building }
MiSystemComplexityBuilder >> cornerRadius [

	^ 0
]

{ #category : #building }
MiSystemComplexityBuilder >> elements [

	^ self types entityStorage
]

{ #category : #accessing }
MiSystemComplexityBuilder >> heightMetricThreshold [

	^ heightMetricThreshold ifNil: [ heightMetricThreshold := 10 ]
]

{ #category : #accessing }
MiSystemComplexityBuilder >> heightMetricThreshold: anObject [

	heightMetricThreshold := anObject
]

{ #category : #initialization }
MiSystemComplexityBuilder >> initialize [

	super initialize.
	nodeMooseIDDict := Dictionary new
]

{ #category : #building }
MiSystemComplexityBuilder >> initializeRootNode [

	(rootNode := HNode new) addAll:
		(self elements collect: [ :e | self buildNodeFromEntity: e ])
]

{ #category : #building }
MiSystemComplexityBuilder >> layoutChildrenOn: aGroupOfShapes parent: shape [
	aGroupOfShapes ifEmpty: [ ^ self ].
	
	aGroupOfShapes first model position ifNotNil: [ 
		aGroupOfShapes do: [ :child | child position: (child model position ifNil: [ 0@0 ]) ].
		^ self.
		 ].
	self relayoutChildren: aGroupOfShapes parent: shape.
	
	
]

{ #category : #building }
MiSystemComplexityBuilder >> layoutOn: aGroupOfShapes parent: shape [
	aGroupOfShapes ifEmpty: [ ^ self ].
	
	
	self relayout: aGroupOfShapes parent: shape.
	
	
]

{ #category : #accessing }
MiSystemComplexityBuilder >> mapModel [

	^ mapModel
]

{ #category : #accessing }
MiSystemComplexityBuilder >> mapModel: anObject [

	mapModel := anObject
]

{ #category : #building }
MiSystemComplexityBuilder >> nodeAnnouncer [
	"plug new events here"
	baseNode ifNotNil: [ ^ baseNode announcer ].
	baseNode := RSComposite new
		@ self nodeStyler popup;
		@ self menuInteraction;
		@ (RSNodeOnTopWhenPositionChanged new);
		@ (HUpdateSelectionBox new);
		yourself.
	^ baseNode announcer
	
]

{ #category : #building }
MiSystemComplexityBuilder >> normalizeColor [

	| colorMetric scale |
	colorMetric := mapModel colorMetric.
	scale := self
		         normalizeMetric: colorMetric
		         threshold: self colorMetricThreshold.
	scale range: { 
			mapModel colorRangeStart.
			mapModel colorRangeEnd }.
	shapes do: [ :each | 
		each color:
			(scale scale: (each model rawModel perform: colorMetric)) ]
]

{ #category : #building }
MiSystemComplexityBuilder >> normalizeHeight [

	| heightMetric scale |
	heightMetric := mapModel heightMetric.
	scale := self
		         normalizeMetric: heightMetric
		         threshold: self heightMetricThreshold.
	scale range: { 20. 400 }.
	shapes do: [ :each | 
		each height:
			(scale scale: (each model rawModel perform: heightMetric)) ]
]

{ #category : #building }
MiSystemComplexityBuilder >> normalizeMetric: metric threshold: threshold [

	"When all elements are homogeneous, we want to show that the difference is small by making them look similar. They are considered homogeneous when the difference between the min and max values of the metric is below the threshold."

	| min max |
	"start by finding min and max"
	min := SmallInteger maxVal.
	max := 0.
	shapes do: [ :shape | 
		| value |
		value := shape model rawModel perform: metric.
		min := min min: value.
		max := max max: value ].

	"widen the domain by the difference if it is below the threshold, which reduces the effective range and thus makes the elements more similar"
	^ NSScale linear
		  domain: (max - min > threshold
				   ifTrue: [ { min. max } ]
				   ifFalse: [ 
					   { 
						   (min - max / 2 + min).
						   (max - min / 2 + max) } ])
]

{ #category : #building }
MiSystemComplexityBuilder >> normalizeShapes [

	self normalizeWidth.
	self normalizeHeight.
	self normalizeColor.
	self container nodes do: [ :canvasShape | 
		canvasShape model isExpanded ifTrue: [ canvasShape adjustToChildren ] ]
]

{ #category : #building }
MiSystemComplexityBuilder >> normalizeWidth [

	| widthMetric scale |
	widthMetric := mapModel widthMetric.
	scale := self
		         normalizeMetric: widthMetric
		         threshold: self widthMetricThreshold.
	scale range: { 20. 400 }.
	shapes do: [ :each | 
		each width:
			(scale scale: (each model rawModel perform: widthMetric)) ]
]

{ #category : #building }
MiSystemComplexityBuilder >> rebuildShape: shape [

	| canvas newShape node parent children |
	node := shape model.
	canvas := shape canvas.
	canvas ifNil: [ ^ self ].
	canvas lines copy do: #remove.
	self removeShapeWithAllChildren: shape.
	newShape := self shapeFor: node.
	newShape position: shape position.
	parent := shape parent.
	parent add: newShape.

	"shape sparent schildren add: newShape."
	children := shape sparent schildren.
	children
		remove: shape;
		add: newShape.
	newShape sparent: shape sparent.
	shape remove.

	self renderLinesIn: canvas.
	self fixShadowForSelectedShape: shape and: newShape.


	self normalizeShapes.
	self layoutOn: canvas nodes parent: rootNode.


	(canvas visibleRectangle containsRect:
		 newShape globalEncompassingRectangle) ifFalse: [ 
		canvas camera
			zoomToFit: canvas extent * 0.9
			rectangle: canvas shapes encompassingRectangle ].
	canvas signalUpdate
]

{ #category : #building }
MiSystemComplexityBuilder >> relayout: aGroupOfShapes parent: shape [

	RSDominanceTreeLayout new
		childrenSortBlock: [ :shapeA :shapeB | shapeA model name < shapeB model name ];
		horizontalGap: 20;
		on: aGroupOfShapes
]

{ #category : #building }
MiSystemComplexityBuilder >> relayoutChildren: aGroupOfShapes parent: shape [

	shape layout ifNil: [ 
		RSFlowLayout new
			gapSize: 10;
			on: aGroupOfShapes. 
		^ self ].
	shape layout on: aGroupOfShapes.
	
	
]

{ #category : #building }
MiSystemComplexityBuilder >> renderIn: aCanvas [

	| rootShapes |
	aCanvas color: Smalltalk ui theme backgroundColor.
	shapes := RSGroup new.
	rootShapes := rootNode children
		              collect: [ :child | 
		              (self shapeFor: child) sparent: aCanvas ]
		              as: RSGroup.
	aCanvas schildren: rootShapes.
	aCanvas addAll: rootShapes.
	aCanvas @ self menuInteraction.
	rootNode when: HNodeAddedEvent do: [ :evt | 
		| newShape |
		newShape := (self shapeFor: evt newChild) sparent: aCanvas.
		newShape position: aCanvas camera position.
		rootShapes add: newShape.
		aCanvas add: newShape.
		aCanvas signalUpdate ].

	self normalizeShapes.
	self renderLinesIn: aCanvas.
	self layoutOn: rootShapes parent: rootNode
]

{ #category : #building }
MiSystemComplexityBuilder >> renderLinesIn: aCanvas [

	| arrow |
	arrow := RSShapeFactory triangle.
	arrow extent: 10 @ 5.
	arrow := arrow asMarker.
	arrow offset: -2.5.
	RSLineBuilder orthoVertical
		shapes: aCanvas nodes;
		attachPoint: (RSVerticalAttachPoint new startOffset: 5);
		markerStart: arrow;
		connectFromAll: #dependentsFromLinks.
	aCanvas pushBackEdges
]

{ #category : #building }
MiSystemComplexityBuilder >> setDependencies [

	rootNode children do: [ :each | self setDependenciesFor: each ]
]

{ #category : #building }
MiSystemComplexityBuilder >> setDependenciesFor: aNode [

	aNode rawModel directSubclasses do: [ :e | 
		nodeMooseIDDict
			at: e mooseID
			ifPresent: [ :hNode | aNode dependencyTo: hNode ] ]
]

{ #category : #building }
MiSystemComplexityBuilder >> shapeFor: node [

	| shape |
	shape := RSComposite new
		         model: node;
		         announcer: self nodeAnnouncer;
		         yourself.
	(node isExpanded and: [ node hasChildren ])
		ifTrue: [ self buildCompositeFullNodeIn: shape ]
		ifFalse: [ self buildCompositeEmptyNodeIn: shape ].
		
	
	node 
		removeInteractionIfPresent: self class;
		when: HCollapseEvent do: [ :evt |	self rebuildShape: shape ];
		when: HExpandEvent do: [ :evt | self rebuildRootShape: shape ].

	shapes add: shape.
	^ shape
]

{ #category : #accessing }
MiSystemComplexityBuilder >> types [

	^ self mapModel entities
]

{ #category : #accessing }
MiSystemComplexityBuilder >> widthMetricThreshold [

	^ widthMetricThreshold ifNil: [ widthMetricThreshold := 10 ]
]

{ #category : #accessing }
MiSystemComplexityBuilder >> widthMetricThreshold: anObject [

	widthMetricThreshold := anObject
]
