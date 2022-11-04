Class {
	#name : #GtHeadingAndCodeSnippets,
	#superclass : #GtLiveSlide,
	#instVars : [
		'snippets',
		'heading',
		'snippetsElement',
		'elementWeight',
		'inspectorElement'
	],
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
GtHeadingAndCodeSnippets >> addSnippet: aString [
	self snippets add: aString
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> coderElementFor: defaultCode [
	| coder editor container |
	coder := GtPharoSnippetCoder new forSource: defaultCode.
	editor := (coder asElement query
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
										margin: (BlInsets all: 10);
										aptitude: BrShadowAptitude;
										background: Color white;
										addChild: x ]).
					e consumed: true ].

	container := BrHorizontalPane new
			hExact: 500;
			vExact: 300;
			addChild: editor.
	^ container asScalableElement size: 750 @ 450
]

{ #category : #'api - instantiation' }
GtHeadingAndCodeSnippets >> create [
	"We have a container holding two elements.
	At the left is a content element with a heading and snippets.
	At the right is a preview element. 
	The percentage of space for the preview can be adjusted.
	See GtTextAndElementLiveSlide."

	| container |
	container := BlElement new
		constraintsDo: [:c |
			c horizontal matchParent.
			c vertical matchParent ];
		padding: (BlInsets top: 20 bottom: 20);
		layout: BlFrameLayout new.

	inspectorElement := BrVerticalPane new matchParent.


	snippetsElement := BlElement new
			constraintsDo: [ :c | 
				c frame horizontal weight: 1 - elementWeight.
				c vertical matchParent.
				c horizontal matchParent ];
			padding: (BlInsets
					top: 10
					left: 50
					bottom: 10
					right: 50);
			layout: BlLinearLayout vertical ;
			margin: (BlInsets all: 20).



	snippetsElement
		addChild: (BlTextElement new
				margin: (BlInsets all: 1);
				constraintsDo: [ :c | 
					c vertical fitContent.
					c horizontal fitContent.
					c linear horizontal  ];
				text: self heading).


	self snippets
		do: [ :snippet | 
			self snippetsElement
				addChild: ((self coderElementFor: snippet)
						constraintsDo: [ :c | 
							c horizontal matchParent.
							c vertical matchParent ]) ].

	container
		addChild: snippetsElement;
		addChild: (inspectorElement
				constraintsDo: [ :c | 
					c frame horizontal weight: elementWeight.
					c frame horizontal alignRight.
					c vertical matchParent.
					c horizontal matchParent ]).

	
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

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippets: anObject [

	snippets := anObject
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippetsElement [

	^ snippetsElement
]
