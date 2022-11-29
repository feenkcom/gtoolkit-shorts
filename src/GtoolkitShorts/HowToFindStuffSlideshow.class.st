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
		heading: 'Which classes are abstract';
		addCodeSnippet: 'Collection isAbstract';
		addCodeSnippet: 'String isAbstract';
		addCodeSnippet: '(String >> #asByteArray) isAbstract'
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
HowToFindStuffSlideshow >> gtQueries: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #gtQueries:);
		titleWithFormat: (self asHeader: 'GT queries')
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

{ #category : #accessing }
HowToFindStuffSlideshow >> queryingPharoCode: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #queryingPharoCode:);
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
			#queryingPharoCode:
		
		queryingSmalltalk:
			isAbstract:
			abstractClasses:

		
		methodFinder:
		
		exploringViewCode:
		
		drilling:
		
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
	^ aSlide labelAndElement
		priority: (self priorityFor: #stringAsByteArray:);
		element: [ (GtClassCoderLiveSlide new class: String) asElement ]
]

{ #category : #slides }
HowToFindStuffSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'How to find stuff in GT in 7''')
]
