Class {
	#name : #HowToFindStuffSlideshow,
	#superclass : #GtShortSlideShow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
HowToFindStuffSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractClasses: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractClasses:);
		heading: 'Which classes are abstract?';
		addCodeSnippet: 'Object withAllSubclasses
	select: #isAbstract';
		addCodeSnippet: 'Collection withAllSubclasses
	select: #isAbstract'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractCollectionPackageMethods: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractCollectionPackageMethods:);
		heading: 'Finding abstract methods in Collection packages';
		addCodeSnippet: '#subclassResponsibility gtSenders
	& ''Collection'' gtPackageMatches'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractMethods: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractMethods:);
		heading: 'Which methods are abstract?';
		typeTextSnippet: 'We can query for senders of subclassResponsibility';
		addCodeSnippet: 'String methods 
	select: [: m | 
		m sendsSelector: #subclassResponsibility ]';
		typeTextSnippet: 'Better yet, we just ask if they are abstract';
		addCodeSnippet: 'String methods select: #isAbstract';
		typeTextSnippet: '... and we can find all classes in a hierarchy with abstract methods';
		addCodeSnippet: 'Collection withAllSubclasses
	select: [ :class | class methods 
		anySatisfy: #isAbstract ]'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractMethodsQuery: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractMethodsQuery:);
		heading: 'Finding all abstract methods';
		addCodeSnippet: '#subclassResponsibility gtSenders'
]

{ #category : #slides }
HowToFindStuffSlideshow >> abstractStringMethods: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #abstractStringMethods:);
		heading: 'Finding abstract methods in the String class';
		addCodeSnippet: '#subclassResponsibility gtSenders
	& String gtMethodsInClass'
]

{ #category : #accessing }
HowToFindStuffSlideshow >> asHeading: aString [
	^ (aString asRopedText)
		glamorousRegularFont;
		bold;
		fontSize: 24
]

{ #category : #accessing }
HowToFindStuffSlideshow >> asHeadingCode: aString [
	^ aString asRopedText
		glamorousMonospace;
		fontSize: 24
]

{ #category : #slides }
HowToFindStuffSlideshow >> closing: aSlide [
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
HowToFindStuffSlideshow >> concatenateStrings: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #concatenateStrings:);
		heading: 'How do I concatenate two Strings?';
		addCodeSnippet: 'MethodFinder new
	findMethodsByExampleInput: {''foo'' . ''bar''}
	andExpectedResult: ''foobar'''
]

{ #category : #slides }
HowToFindStuffSlideshow >> concreteClassAbstractMethods: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #concreteClassAbstractMethods:);
		heading: 'Which “concrete” classes have abstract methods?';
		addCodeSnippet: '(Collection withAllSubclasses
	reject: #isAbstract)
	select: [ :class | class methods 
		anySatisfy: #isAbstract ]';
		addCodeSnippet: '(Object withAllSubclasses
	reject: #isAbstract)
	select: [ :class | class methods 
		anySatisfy: #isAbstract ]'
]

{ #category : #slides }
HowToFindStuffSlideshow >> drilling: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #drilling:);
		titleWithFormat: (self asHeader: 'Drilling into UI code')
]

{ #category : #slides }
HowToFindStuffSlideshow >> exploringCharacterViewsPage: aSlide [
	<gtSlide>
	self initExploringCharacterViewsPage.
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringCharacterViewsPage:);
		pageNamed: 'Exploring Character views' from: self myLepiterDB;
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> exploringViewCode: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #exploringViewCode:);
		titleWithFormat: (self asHeader: 'Exploring view code')
]

{ #category : #slides }
HowToFindStuffSlideshow >> findingShortcutsEmpty: aSlide [
	<gtSlide>
	^ aSlide empty 
		  priority: (self priorityFor: #findingShortcutsEmpty:)
]

{ #category : #slides }
HowToFindStuffSlideshow >> findingShortcutsPage: aSlide [
	"<gtSlide>"
	self initFindingShortcutsPage.
	^ aSlide lepiterPage
		  priority: (self priorityFor: #findingShortcutsPage:);
		  pageNamed: 'Finding shortcuts' from: self myLepiterDB
]

{ #category : #slides }
HowToFindStuffSlideshow >> gtQueries: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #gtQueries:);
		titleWithFormat: (self asHeader: 'GT queries')
]

{ #category : #slides }
HowToFindStuffSlideshow >> initExploringCharacterViewsPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Exploring Character views'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LePharoSnippet new
				code: '''hello''';
				yourself);
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> initFindingShortcutsPage [
	<gtExample>
	<noTest>
	| pageName page |
	pageName := 'Finding shortcuts'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'Typing CMD= and CMD- will increase or decrease the size of all the fonts in this page, but how does the shortcut work?';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Holding SHIFT CONTROL OPT while clicking in the page will allow us to drill into the UI elements.';
				yourself);
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> isAbstract: aSlide [
	<gtSlide>
	^ aSlide headingAndCode
		priority: (self priorityFor: #isAbstract:);
		headingWithFormat: (self asHeading: 'Classes and methods respond to ')
				, (self asHeadingCode: 'isAbstract');
		addCodeSnippet: 'Collection isAbstract';
		addCodeSnippet: 'String isAbstract';
		addCodeSnippet: '(String >> #asByteArray) isAbstract'
]

{ #category : #slides }
HowToFindStuffSlideshow >> methodFinder: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #methodFinder:);
		titleWithFormat: (self asBigCode: 'MethodFinder')
]

{ #category : #accessing }
HowToFindStuffSlideshow >> queryingPharoCodePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #queryingPharoCodePage:);
		pageNamed: 'Querying Pharo code' from: self gtBook;
		yourself
]

{ #category : #slides }
HowToFindStuffSlideshow >> queryingSmalltalk: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #queryingSmalltalk:);
		titleWithFormat: (self asHeader: 'Querying Smalltalk classes and methods ')
]

{ #category : #slides }
HowToFindStuffSlideshow >> sendersAndImplementors: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #sendersAndImplementors:);
		titleWithFormat: (self asHeader: 'seNders and iMplementors')
]

{ #category : #constants }
HowToFindStuffSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		
		spotter:
			spotterExample:
		
		sendersAndImplementors:
			stringAsByteArray:
		
		gtQueries:
			#abstractMethodsQuery:
			#abstractStringMethods:
			#abstractCollectionPackageMethods:
			#queryingPharoCodePage:
		
		queryingSmalltalk:
			isAbstract:
			abstractClasses:
			abstractMethods:
			concreteClassAbstractMethods:
			workingWithCollectionsPage:
			understandingCollectionsPage:

		methodFinder:
			concatenateStrings:
		
		exploringViewCode:
			#exploringCharacterViewsPage:
		
		drilling:
			findingShortcutsEmpty:
			"findingShortcutsPage:"
		
		closing:
	)
]

{ #category : #slides }
HowToFindStuffSlideshow >> spotter: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #spotter:);
		titleWithFormat: (self asHeader: 'Spotter')
]

{ #category : #slides }
HowToFindStuffSlideshow >> spotterExample: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #spotterExample:);
		element: [ GtSpotterLiveSlide new asElement ]
]

{ #category : #slides }
HowToFindStuffSlideshow >> stringAsByteArray: aSlide [
	<gtSlide>
	^ aSlide element
		priority: (self priorityFor: #stringAsByteArray:);
		element: [ (GtCoder forClass: String) createInPager maximized asElement ]
]

{ #category : #slides }
HowToFindStuffSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'How to find stuff in GT in 7''')
]

{ #category : #accessing }
HowToFindStuffSlideshow >> understandingCollectionsPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #understandingCollectionsPage:);
		pageNamed: 'Understanding Smalltalk classes and metaclasses' from: self gtBook;
		yourself
]

{ #category : #accessing }
HowToFindStuffSlideshow >> workingWithCollectionsPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #workingWithCollectionsPage:);
		pageNamed: 'Working with collections in Pharo' from: self gtBook;
		yourself
]
