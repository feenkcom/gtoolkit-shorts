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
ExploringGitHubRESTAPI >> creatingAView: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #creatingAView:);
		titleWithFormat: (self asHeader: 'Creating a view')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> exploringTheData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #exploringTheData:);
		titleWithFormat: (self asHeader: 'Exploring the data')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> exploringTheDataPage: aSlide [
	<gtSlide>
	self ensureEmptyPageNamed: 'Exploring the GitHub REST API'.
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringTheDataPage:);
		pageNamed: 'Exploring the GitHub REST API' from: self myLepiterDB
]

{ #category : #slides }
ExploringGitHubRESTAPI >> extractingNavigationCode: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #extractingNavigationCode:);
		titleWithFormat: (self asHeader: 'Extracting the navigation code')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> gettingRawData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #gettingRawData:);
		titleWithFormat: (self asHeader: 'Getting the raw data')
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> initFinalExploringDataPage [
	<gtExample>
	| pageName page |
	pageName := 'Exploring the GitHub REST API'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LeTextSnippet new
				string: 'First we get the API URL.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'url := ''https://api.github.com/orgs/feenkcom''.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'We download the API endpoint.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'json := ZnClient new get: url.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'We can parse the JSON.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'dictionary := STON fromString: json.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'We wrap the data in an Organization object.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'MyOrganization new rawData: dictionary.';
				yourself);
		yourself
]

{ #category : #slides }
ExploringGitHubRESTAPI >> introEmpty: aSlide [
	"Empty slide to show github rest api docs in foreground"

	<gtSlide>
	^ aSlide empty priority: (self priorityFor: #introEmpty:)
]

{ #category : #slides }
ExploringGitHubRESTAPI >> introducingANewEntity: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #introducingANewEntity:);
		titleWithFormat: (self asHeader: 'Introducing a new domain entity')
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

		exploringTheDataPage:
		
		wrappingTheData:
		exploringTheData:
		extractingNavigationCode:
		creatingAView:
		introducingANewEntity:
		updatingTheView:
		summary:
		
		closing:
	)
]

{ #category : #slides }
ExploringGitHubRESTAPI >> summary: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #summary:);
		titleWithFormat: (self asHeader: 'Moldable development');
		subtitleWithFormat: (self
				asHeader: 'of executable domain models')
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
ExploringGitHubRESTAPI >> updatingTheView: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #updatingTheView:);
		titleWithFormat: (self asHeader: 'Updating the view')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> wrappingTheData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #wrappingTheData:);
		titleWithFormat: (self asHeader: 'Wrapping the raw data in a live object')
]
