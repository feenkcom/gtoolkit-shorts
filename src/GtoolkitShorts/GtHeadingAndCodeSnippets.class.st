Class {
	#name : #GtHeadingAndCodeSnippets,
	#superclass : #GtLiveSlide,
	#instVars : [
		'snippets',
		'heading',
		'elementWeight',
		'inspectorElement',
		'margin',
		'snippetPadding',
		'bodyPadding'
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
GtHeadingAndCodeSnippets >> bodyPadding [
	^ bodyPadding
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> bodyPadding: aNumber [

	bodyPadding := aNumber
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> bottomMargin: aNumber [
	self margin: (self margin withBottom: aNumber)
]

{ #category : #'api - instantiation' }
GtHeadingAndCodeSnippets >> create [
	| container bodyElement snippetsElement headingElement |
	container := BlElement new
			constraintsDo: [ :c | 
				c vertical matchParent.
				c horizontal matchParent ];
			padding: self margin;
			layout: BlLinearLayout vertical alignTopLeft.	"The container holds vertical heading and body elements."

	headingElement := BlTextElement new
			margin: (BlInsets all: 1);
			constraintsDo: [ :c | 
				c vertical fitContent.
				c horizontal fitContent.
				c linear horizontal ];
			text: self heading.	"The heading sits atthe top of the page by itself"

	bodyElement := BrHorizontalPane new
			matchParent;
					padding: (BlInsets top: self bodyPadding bottom: self bodyPadding).
				"The body holds horizontal snippets and inspector elements."

	snippetsElement := BlElement new
			constraintsDo: [ :c | 
				c linear weight: 1 - elementWeight.
				c vertical matchParent.
				c horizontal matchParent ];
			layout: BlLinearLayout vertical.

	inspectorElement := BrVerticalPane new matchParent.

	self snippets
		do: [ :snippet | 
			snippetsElement
				addChild: (snippet
						padding: (BlInsets top: self snippetPadding bottom: self snippetPadding);
						constraintsDo: [ :c | 
							c horizontal matchParent.
							c vertical fitContent ]) ].

	bodyElement
		addChild: snippetsElement;
		addChild: (inspectorElement
				constraintsDo: [ :c | 
					c linear weight: elementWeight.
					c vertical matchParent.
					c horizontal matchParent ]).

	container
		addChild: headingElement;
		addChild: bodyElement.

	^ container
]

{ #category : #initialization }
GtHeadingAndCodeSnippets >> defaultBodyPadding [
	^ 10
]

{ #category : #initialization }
GtHeadingAndCodeSnippets >> defaultMargin [
	^ BlInsets
		top: 100
		right: 50
		bottom: 100
		left: 50
]

{ #category : #initialization }
GtHeadingAndCodeSnippets >> defaultSnippetPadding [
	^ 20
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
GtHeadingAndCodeSnippets >> example [
	<gtExample>
	^ GtHeadingAndCodeSnippets new
		heading: 'Slide Heading';
		addTextSnippet: 'A plain text snippet';
		addTextSnippet: ('A formatted text snippet' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 24);
		addCodeSnippet: '"A code snippet"
3+4';
		addCodeSnippet: '"Another code snippet"
2r101010';
		addExampleSnippet: self class >> #exampleMethod
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> exampleMethod [
	"This is an example of an example method"

	<gtExample>
	^ 'I am an example of a string'
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> exampleSlide: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: 10;
		heading: 'Slide Heading';
		addTextSnippet: 'A plain text snippet';
		addTextSnippet: ('A formatted text snippet' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 24);
		addCodeSnippet: '"A code snippet"
3+4';
		addCodeSnippet: '"Another code snippet"
2r101010';
		addExampleSnippet: self class >> #exampleMethod;
		leftMargin: 200; "left margin of whole slide"
		snippetPadding: 5; "padding between snippets"
		bodyPadding: 5; "padding above and below snippets/inspector body"
		elementWeight: 0.6 "percentage horizontal for inspector vs snippets"
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
	self elementWeight: 0.5.
	self
		margin: self defaultMargin .
		self snippetPadding:  self defaultSnippetPadding.
		self bodyPadding:  self defaultBodyPadding.
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> inspectorElement [

	^ inspectorElement
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> leftMargin: aNumber [
	self margin: (self margin withLeft: aNumber)
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> margin [
	^ margin
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> margin: anObject [

	margin := anObject
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> rightMargin: aNumber [
	self margin: (self margin withRight: aNumber)
]

{ #category : #'api - instantiation' }
GtHeadingAndCodeSnippets >> snippetPadding [
	"Top and bottom padding between snippets"
	^ snippetPadding
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippetPadding: aNumber [
	snippetPadding := aNumber
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> snippets [

	^ snippets
]

{ #category : #accessing }
GtHeadingAndCodeSnippets >> topMargin: aNumber [
	self margin: (self margin withTop: aNumber)
]
