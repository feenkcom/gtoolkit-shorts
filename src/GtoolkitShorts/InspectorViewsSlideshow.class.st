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
		setPriority;
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
InspectorViewsSlideshow >> customViewsForSubtitles: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Custom views for subtitles');
		yourself
]

{ #category : #page }
InspectorViewsSlideshow >> customViewsForSubtitlesPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Custom views for subtitles')
		addSnippet: (LeTextSnippet new
				string: 'Here are English subtitles for the movie “Taxi Tehran”:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'fileContents := ''pharo-local/iceberg/feenkcom/gtoolkit-shorts/doc/Subtitles/Taxi Tehran (2015).srt'' asFileReference contents.';
				yourself);
		yourself
]

{ #category : #page }
InspectorViewsSlideshow >> exploringCartoonAddresses: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Exploring an AddressBook object');
		yourself
]

{ #category : #page }
InspectorViewsSlideshow >> exploringCartoonAddressesPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Exploring an AddressBook object')
		addSnippet: (LePharoSnippet new
				code: 'GtABCartoonAddressBookExample new cartoonAddressBook';
				yourself);
		yourself
]

{ #category : #slides }
InspectorViewsSlideshow >> exploringTheAPI: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		setPriority;
		startPage: (self db pageNamed: 'Exploring the Inspector view API');
		yourself
]

{ #category : #page }
InspectorViewsSlideshow >> exploringTheAPIPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Exploring the Inspector view API')
		addSnippet: (LeTextSnippet new
				string: 'The main API is defined in {{gtClass:name=GtPhlowProtoView}} in the `decorating` protocol.';
				yourself);
		yourself
]

{ #category : #initialization }
InspectorViewsSlideshow >> fullCustomViewsForSubtitlesPage [
	"These snippets are normally added by the Typist from the script."

	<gtExample>
	<noTest>
	^ (LePage named: 'Custom views for subtitles')
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
InspectorViewsSlideshow >> fullExploringTheAPIPage [
	"These snippets are normally added by the Typist from the script."

	<gtExample>
	<noTest>
	^ (LePage named: 'Exploring the Inspector view API')
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

{ #category : #initialization }
InspectorViewsSlideshow >> initializeDb [
	self db addPage: self customViewsForSubtitlesPage.
	self db addPage: self exploringCartoonAddressesPage.
	self db addPage: self exploringTheAPIPage
]

{ #category : #accessing }
InspectorViewsSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		#exploringCartoonAddresses:
		#exploringTheAPI:
		#customViewsForSubtitles:
		closing:
	)
]

{ #category : #slides }
InspectorViewsSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		setPriority;
		titleWithFormat: (self asTitle: 'Inspecting objects with custom views in 7''')
]
