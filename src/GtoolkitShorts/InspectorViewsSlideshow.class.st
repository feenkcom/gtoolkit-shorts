Class {
	#name : #InspectorViewsSlideshow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
InspectorViewsSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
InspectorViewsSlideshow >> closing: aSlide [
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
InspectorViewsSlideshow >> exploringCartoonAddressesPage: aSlide [
	<gtSlide>
	self initExploringFileReferencesPage.
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringCartoonAddressesPage:);
		pageNamed: 'Exploring an AddressBook object' from: self myLepiterDB;
		yourself
]

{ #category : #slides }
InspectorViewsSlideshow >> exploringTheAPIPage: aSlide [
	<gtSlide>
	self initExploringTheAPIPage. 
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringCartoonAddressesPage:);
		pageNamed: 'Exploring the Inspector view API' from: self myLepiterDB;
		yourself
]

{ #category : #initialization }
InspectorViewsSlideshow >> initExploringCartoonAddressesPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Exploring an AddressBook object'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LePharoSnippet new
				code: 'GtABCartoonAddressBookExample new cartoonAddressBook';
				yourself);
		yourself
]

{ #category : #initialization }
InspectorViewsSlideshow >> initExploringTheAPIPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Exploring the Inspector view API'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'The main API is defined in {{gtClass:name=GtPhlowProtoView}} in the `decorating` protocol.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: '(GtCoder forClass: GtPhlowProtoView)
	selectMethodProtocolNamed: #decorating';
				yourself);
		yourself
]

{ #category : #initialization }
InspectorViewsSlideshow >> initFullExploringTheAPIPage [
	"These snippets are normally added by the Typist from the script."

	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Exploring the Inspector view API'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'The main API is defined in {{gtClass:name=GtPhlowProtoView}} in the `decorating` protocol.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: '(GtCoder forClass: GtPhlowProtoView)
	selectMethodProtocolNamed: #decorating';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'The full API also includes the `mondrian` message:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'apiSelectors := ((GtPhlowProtoView methods
		select: [ :each | each protocol = ''decorating'' ])	
	collect: #selector) asSet, {#mondrian}';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'How widely used are these different kinds of views?';
				yourself);
		addSnippet: (LePharoSnippet new
				code: '(#gtView gtPragmas contents
	flatCollect: [ :method | 
		method ast sentMessages intersection: apiSelectors ])
	asBag sortedCounts';
				yourself);
		yourself
]

{ #category : #accessing }
InspectorViewsSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		
		#exploringCartoonAddressesPage:
		
		#exploringTheAPIPage:
		
		
		closing:
	)
]

{ #category : #slides }
InspectorViewsSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Implementing custom Inspector views in 7''')
]
