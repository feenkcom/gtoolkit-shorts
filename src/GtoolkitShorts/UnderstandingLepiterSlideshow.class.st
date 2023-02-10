Class {
	#name : #UnderstandingLepiterSlideshow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
UnderstandingLepiterSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> caseStudyExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #caseStudyExamplePage:);
		pageNamed: 'Working with a REST API: the GitHub case study' from: self gtBook;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> closing: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #closing:);
		titleWithFormat: ('glamoroustoolkit' asRopedText
				fontSize: 80;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 'glamorous' size + 1 to: t size) bold ];
				yourself);
		subtitleWithFormat: ('gtoolkit.com' asRopedText
				fontSize: 40;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> documentationExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #documentationExamplePage:);
		pageNamed: 'Geometry, visual and layout bounds explained' from: self gtBook;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> editingPages: aSlide [
	<gtSlide>
	self initEditingPagesPage. 
	^ aSlide lepiterPage
		priority: (self priorityFor: #editingPages:);
		pageNamed: 'Editing Lepiter pages' from: self gtShortsLepiterDB;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> faqExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #faqExamplePage:);
		pageNamed: 'How to set up a new GitHub repo' from: self gtBook;
		yourself
]

{ #category : #accessing }
UnderstandingLepiterSlideshow >> gtShortsLepiterDB [
	^ 'GT Shorts Notebook'
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> gtWorld2: aSlide [
	<gtSlide>
	
	^ (aSlide element)
		priority: (self priorityFor: #gtWorld2:);
		element: [ aSlide world ]
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> gtWorld: aSlide [
	<gtSlide>
	
	^ (aSlide element)
		priority: (self priorityFor: #gtWorld:);
		element: [ aSlide world ]
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> initEditingPagesPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Editing Lepiter pages'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LePharoSnippet new
				code: '''hello''';
				yourself);
		yourself
]

{ #category : #accessing }
UnderstandingLepiterSlideshow >> oscarsLepiterDB [
	^ 'Documents/lepiter/default'
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> projectExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #projectExamplePage:);
		pageNamed: 'Parsing bibtex' from: self gtShortsLepiterDB;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> randomNoteExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #randomNoteExamplePage:);
		pageNamed: 'Where are buttons implemented?' from: self myLepiterDB;
		yourself
]

{ #category : #accessing }
UnderstandingLepiterSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		
		gtWorld:
		tutorialExamplePage:
		documentationExamplePage:
		caseStudyExamplePage:
		faqExamplePage:
		
		gtWorld2:
		randomNoteExamplePage:
		todoExamplePage:
		projectExamplePage:
		
		textSnippetPage:
		editingPages:
		
		closing:
	)
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> textSnippetPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #textSnippetPage:);
		pageNamed: 'Text snippet' from: self gtBook;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Understanding Lepiter in 7''')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> todoExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #randomNoteExamplePage:);
		pageNamed: 'Where are buttons implemented?' from: self oscarsLepiterDB;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> tutorialExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #tutorialExamplePage:);
		pageNamed: 'Working with collections in Pharo' from: self gtBook;
		yourself
]
