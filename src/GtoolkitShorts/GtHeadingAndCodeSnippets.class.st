Class {
	#name : #GtHeadingAndCodeSnippets,
	#superclass : #GtLiveSlide,
	#instVars : [
		'snippets',
		'heading',
		'elementWeight',
		'inspectorElement'
	],
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
GtHeadingAndCodeSnippets >> addCodeSnippet: aSourceString [
	self
		addSnippet: (self extractCoderElementFor: (GtPharoSnippetCoder forSource: aSourceString))
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> addExampleSnippet: exampleMethod [
	self
		addSnippet: (self extractCoderElementFor: (GtPharoMethodCoder forMethod: exampleMethod))
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> addSnippet: aSnippetElement [
	self snippets add: aSnippetElement
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> addTextSnippet: aString [
	self addSnippet: (BlTextElement new text: aString asRopedText)
]

{ #category : #'api - instantiation' }
GtHeadingAndCodeSnippets >> create [
	"The container holds vertical heading and body elements.
	The body holds horizontal snippets and inspector elements.
	The snippets element holds the snippets.
	At the left is a content element with a heading and snippets.
	At the right is a preview element. 
	The percentage of space for the preview can be adjusted.
	See GtTextAndElementLiveSlide."

	| container bodyElement snippetsElement headingElement |
	container := BlElement new
			constraintsDo: [ :c | 
				c vertical matchParent.
				c horizontal matchParent ];
		padding: (BlInsets
				top: 20
				right: 20
				bottom: 20
				left: 20);
			layout: BlLinearLayout vertical alignTopLeft.

	headingElement := BlTextElement new
			margin: (BlInsets all: 1);
			constraintsDo: [ :c | 
				c vertical fitContent.
				c horizontal fitContent.
				c linear horizontal ];
			text: self heading.

	bodyElement := BrHorizontalPane new
			 matchParent ;
			padding: (BlInsets top: 20 bottom: 20).

	snippetsElement := BlElement new
			constraintsDo: [ :c | 
				c frame horizontal weight: 1 - elementWeight.
				c vertical matchParent.
				c horizontal matchParent ];

			layout: BlLinearLayout vertical.

	inspectorElement := BrVerticalPane new matchParent.


	self snippets
	do: [ :snippet | 
		snippetsElement
			addChild: (snippet
					padding: (BlInsets top: 10 bottom: 10);
					constraintsDo: [ :c | 
						c horizontal matchParent.
						c vertical fitContent ]) ].

	bodyElement
		addChild: snippetsElement;
		addChild: (inspectorElement
				constraintsDo: [ :c | 
					c frame horizontal weight: elementWeight.
					c frame horizontal alignLeft.
					c vertical matchParent.
					c horizontal matchParent ]
				).


	container
		addChild: headingElement;
		addChild: bodyElement.



	^ container
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> elementWeight [

	^ elementWeight
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> elementWeight: anObject [

	elementWeight := anObject
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> extractCoderElementFor: aCoder [
	| editor |
	editor := (aCoder asElement query
			// GtSourceCoderExpandedContentElement;
			anyOne)
			removeFromParent;
			hMatchParent;
			vFitContent;
			when: GtPhlowObjectToSpawn
				do: [ :e | 
					self inspectorElement removeChildren
						addChild: ((e object gtViewsFor: GtPhlowView empty)
								asElementDo: [ :x | 
									BrVerticalPane new matchParent
										aptitude: BrShadowAptitude;
										background: Color white;
										addChild: x ]).
					e consumed: true ].
	^ editor
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
	snippets := OrderedCollection new.
	self elementWeight: 0.5
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> inspectorElement [

	^ inspectorElement
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippets [

	^ snippets
]
