Class {
	#name : #GtHeadingAndCodeSnippets,
	#superclass : #GtLiveSlide,
	#instVars : [
		'snippets',
		'heading',
		'snippetsElement'
	],
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
GtHeadingAndCodeSnippets >> addSnippet: aString [
	self snippets add: aString
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> coderElementFor: defaultCode [
	| coder editor preview container |
	coder := GtPharoSnippetCoder new forSource: defaultCode.
	editor := (coder asElement query
			// GtSourceCoderExpandedContentElement;
			anyOne)
			removeFromParent;
			hMatchParent;
			vFitContent;
			when: GtPhlowObjectToSpawn
				do: [ :e | 
					preview removeChildren
						addChild: ((e object gtViewsFor: GtPhlowView empty)
								asElementDo: [ :x | 
									BrVerticalPane new matchParent
										margin: (BlInsets all: 10);
										aptitude: BrShadowAptitude;
										background: Color white;
										addChild: x ]).
					e consumed: true ].
	preview := BrVerticalPane new matchParent.
	container := BrHorizontalPane new
			hExact: 500;
			vExact: 300;
			addChild: editor;
			addChild: preview.
	^ container asScalableElement size: 750 @ 450
]

{ #category : #'api - instantiation' }
GtHeadingAndCodeSnippets >> create [
	| container |
	container := BlElement new
			constraintsDo: [ :c | 
				c horizontal matchParent.
				c vertical matchParent ];
			padding: (BlInsets top: 20 bottom: 20);
			layout: BlLinearLayout vertical.
	container
		addChild: (BlTextElement new
				margin: (BlInsets all: 1);
				constraintsDo: [ :c | 
					c vertical fitContent.
					c horizontal fitContent.
					c linear horizontal alignLeft ];
				text: self heading).
	container
		addChild: (BlElement new
				constraintsDo: [ :ct | 
					ct vertical matchParent.
					ct horizontal matchParent ];
				layout: BlLinearLayout vertical;
				margin: (BlInsets all: 20);
				addChild: (snippetsElement value asElement
						constraintsDo: [ :c | 
							c horizontal matchParent.
							c vertical matchParent ])).
	self snippets
		do: [ :snippet | 
			self snippetsElement
				addChild: ((self coderElementFor: snippet)
						constraintsDo: [ :c | 
							c horizontal matchParent.
							c vertical matchParent ]) ].
	^ container
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> heading [
	^ heading
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> heading: aString [
	self
		headingWithFormat: (aString asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 40)
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> headingWithFormat: aRopedText [
	heading := aRopedText
]

{ #category : #initialization }
GtHeadingAndCodeSnippets >> initialize [
	super initialize.
	self heading: ''.
	self snippets: OrderedCollection new.
	self
		snippetsElement: (BlElement new
				constraintsDo: [ :ct | 
					ct vertical matchParent.
					ct horizontal matchParent ];
				layout: BlLinearLayout vertical;
				margin: (BlInsets all: 20))
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippets [

	^ snippets
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippets: anObject [

	snippets := anObject
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippetsElement [

	^ snippetsElement
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippetsElement: anElement [
	snippetsElement := anElement
]
