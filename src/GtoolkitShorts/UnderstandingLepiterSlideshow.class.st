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
UnderstandingLepiterSlideshow >> annotations: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #annotations:);
		titleWithFormat: (self asHeader: 'Markdown annotations')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> annotationsPage: aSlide [
	<gtSlide>
	self initAnnotationsPage.
	^ aSlide lepiterPage
		priority: (self priorityFor: #annotationsPage:);
		pageNamed: 'Lepiter annotations' from: self myLepiterDB;
		yourself
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
	^ aSlide title
		priority: (self priorityFor: #editingPages:);
		titleWithFormat: (self asHeader: 'Editing Lepiter pages')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> editingPagesPage: aSlide [
	<gtSlide>
	self initEditingPagesPage. 
	^ aSlide lepiterPage
		priority: (self priorityFor: #editingPagesPage:);
		pageNamed: 'Editing Lepiter pages' from: self gtShortsLepiterDB;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> exampleSnippets: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #exampleSnippets:);
		titleWithFormat: (self asHeader: 'Example snippets')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> exampleSnippetsPage: aSlide [
	<gtSlide>
	self initExampleSnippetsPage.
	^ aSlide lepiterPage
		priority: (self priorityFor: #exampleSnippetsPage:);
		pageNamed: 'Example snippets' from: self gtShortsLepiterDB;
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
UnderstandingLepiterSlideshow >> initAnnotationsPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Lepiter annotations'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> initEditingPagesPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Editing Lepiter pages'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'To add a new text snippet, just use the `return` key.';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> initExampleSnippetsPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Example snippets'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> initQueryingLepiterPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Querying Lepiter'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'To add a new text snippet, just use the `return` key.';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> initSnippetTypesPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Snippet types'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'Snippet types are subclasses of {{gtClass:name=LeSnippet}}. ';
				yourself);
		addSnippet: (LeElementSnippet new
				code: 'GtPhlowView empty tree
	items: [ {LeSnippet} ];
	children: #subclasses;
	expandAll;
	yourself.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> lepiterAPI: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #lepiterAPI:);
		titleWithFormat: (self asHeader: 'The Lepiter API')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> lepiterAsAKnowledgeBase: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #lepiterAsAKnowledgeBase:);
		titleWithFormat: (self asHeader: 'Lepiter as a knowledge base')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> lepiterAsANotebook: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #lepiterAsANotebook:);
		titleWithFormat: (self asHeader: 'Lepiter as a notebook')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> markdownSyntax: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #markdownSyntax:);
		titleWithFormat: (self asHeader: 'Use Markdown syntax in text snippets')
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
UnderstandingLepiterSlideshow >> queryingLepiterPage: aSlide [
	<gtSlide>
	self initQueryingLepiterPage.
	^ aSlide lepiterPage
		priority: (self priorityFor: #queryingLepiterPage:);
		pageNamed: 'Querying Lepiter' from: self gtShortsLepiterDB;
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
		
		lepiterAsAKnowledgeBase:
			gtWorld:
			tutorialExamplePage:
			documentationExamplePage:
			caseStudyExamplePage:
			faqExamplePage:
		
		lepiterAsANotebook
			gtWorld2:
			randomNoteExamplePage:
			todoExamplePage:
			projectExamplePage:
		
		markdownSyntax:		
			textSnippetPage:

		editingPages:
			editingPagesPage:
		
		exampleSnippets:
			exampleSnippetsPage:
		
		annotations:
			annotationsPage:
		
		snippetTypes:
			snippetTypesPage:
		
		lepiterAPI:
			queryingLepiterPage:
				

		closing:
	)
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> snippetTypes: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #snippetTypes:);
		titleWithFormat: (self asHeader: 'Snippet types')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> snippetTypesPage: aSlide [
	<gtSlide>
	"self initSnippetTypesPage."
	^ aSlide lepiterPage
		priority: (self priorityFor: #snippetTypesPage:);
		pageNamed: 'Snippet types' from: self gtShortsLepiterDB;
		yourself
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
