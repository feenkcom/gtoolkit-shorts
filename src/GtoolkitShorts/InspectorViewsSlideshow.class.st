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
InspectorViewsSlideshow >> customViewsForSubtitlesPage: aSlide [
	<gtSlide>
	self initCustomViewsForSubtitlesPage.
	^ aSlide lepiterPage
		priority: (self priorityFor: #customViewsForSubtitlesPage:);
		pageNamed: 'Custom views for subtitles' from: self myLepiterDB;
		yourself
]

{ #category : #slides }
InspectorViewsSlideshow >> exploringCartoonAddressesPage: aSlide [
	<gtSlide>
	self initExploringCartoonAddressesPage.
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
		priority: (self priorityFor: #exploringTheAPIPage:);
		pageNamed: 'Exploring the Inspector view API' from: self myLepiterDB;
		yourself
]

{ #category : #initialization }
InspectorViewsSlideshow >> initCustomViewsForSubtitlesPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Custom views for subtitles'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'Here are English subtitles for the movie “Taxi Tehran”:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'fileContents := ''../Subtitles/Taxi Tehran (2015).srt'' asFileReference contents.';
				yourself);
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
				yourself)
				";
		addSnippet: (LePharoSnippet new
				code: '(GtCoder forClass: GtPhlowProtoView)
	selectMethodProtocolNamed: #decorating';
				yourself);
		yourself"
]

{ #category : #initialization }
InspectorViewsSlideshow >> initFullCustomViewsForSubtitlesPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Custom views for subtitles'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'Here are English subtitles for the movie “Taxi Tehran”:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'fileContents := ''../Subtitles/Taxi Tehran (2015).srt'' asFileReference contents.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'We can split the file up into a collection of dictionaries:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'data := (String crlf , String crlf split: fileContents)
		collect: [ :each | 
			| text times |
			text := String crlf split: each.
			times := ('' --> '' split: text second)
				collect: [ :time | 
					(''00:'' , (time replaceAll: $, with: $:)) asDuration ].
			lines := text copyFrom: 3 to: text size.
			{''Number'' -> text first asNumber.
				''Start'' -> times first.
				''End'' -> times second.
				''Lines'' -> lines} asOrderedDictionary ].';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'We wrap it as an object.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: ' subs := Subtitles new data: data. ';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Now we just need to create a custom view.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
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
		exploringCartoonAddressesPage:
		exploringTheAPIPage:
		customViewsForSubtitlesPage:
		closing:
	)
]

{ #category : #slides }
InspectorViewsSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Inspecting objects with custom views in 7''')
]
