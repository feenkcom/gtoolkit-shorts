Class {
	#name : #ExploringGitHubRESTAPI,
	#superclass : #GtShortSlideShow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #slides }
ExploringGitHubRESTAPI class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
ExploringGitHubRESTAPI >> apiEndpoint: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #apiEndpoint:);
		titleWithFormat: (self asBigCode: 'https://api.github.com/orgs/feenkcom')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> closing: aSlide [
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
ExploringGitHubRESTAPI >> exploringTheData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #exploringTheData:);
		titleWithFormat: (self asHeader: 'Exploring the data')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> extractingRawDataPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #extractingRawDataPage:);
		pageNamed: 'Extracting the raw data' from: self myLepiterDB
]

{ #category : #slides }
ExploringGitHubRESTAPI >> extractingRawDataPagePart2: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #extractingRawDataPagePart2:);
		pageNamed: 'Extracting the raw data' from: self myLepiterDB
]

{ #category : #slides }
ExploringGitHubRESTAPI >> gettingRawData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #gettingRawData:);
		titleWithFormat: (self asHeader: 'Getting the raw data')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> introEmpty: aSlide [
	"Empty slide to show github rest api docs in foreground"

	<gtSlide>
	^ aSlide empty priority: (self priorityFor: #introEmpty:)
]

{ #category : #constants }
ExploringGitHubRESTAPI >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	
	^ #( 
		titleSlide:

		introEmpty:

		gettingRawData:
			apiEndpoint:
			extractingRawDataPage:
		
		wrappingTheData:
			extractingRawDataPagePart2:
		
		exploringTheData:
		
		closing:
	)
]

{ #category : #slides }
ExploringGitHubRESTAPI >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Exploring the GitHub REST API in 7''')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> typingPageDemo: aSlide [
	"<gtSlide>"
	| typist |
	typist := Typist onPageNamed: 'Extracting the raw data' from: self myLepiterDB.
	^ aSlide lepiterPage
		priority: (self priorityFor: #extractingRawDataPage:);
		pageNamed: 'Extracting the raw data' from: self myLepiterDB;
		onEveryAddToSceneGraphDo: [ typist
				clearPage;
				typeFast;
				typeCodeSnippet: 'url := ''https://api.github.com/orgs/feenkcom''.' ]
]

{ #category : #slides }
ExploringGitHubRESTAPI >> wrappingTheData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #wrappingTheData:);
		titleWithFormat: (self asHeader: 'Wrapping the raw data in a live object')
]
