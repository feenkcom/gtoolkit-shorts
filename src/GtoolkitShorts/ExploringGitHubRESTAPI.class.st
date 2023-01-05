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

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringData1: aSlide [
	"<gtSlide>"
	^ self exploringData: aSlide number: 1
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringData2: aSlide [
	"<gtSlide>"
	^ self exploringData: aSlide number: 2
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringData3: aSlide [
	"<gtSlide>"
	^ self exploringData: aSlide number: 3
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringData4: aSlide [
	"<gtSlide>"
	^ self exploringData: aSlide number: 4
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringData5: aSlide [
	"<gtSlide>"
	^ self exploringData: aSlide number: 5
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringData6: aSlide [
	"<gtSlide>"
	^ self exploringData: aSlide number: 6
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringData: aSlide number: aNumber [
	^ aSlide filePicture
		priority: (self priorityFor: #exploringData , aNumber asString , ':');
		fileReference: (GtResourcesUtility
				resourceAtPath: 'feenkcom/gtoolkit-shorts/doc/exploringData/exploringData.00' , aNumber asString
						, '.png')
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringDataScenery: aSlide [
	<gtSlide>
	^ aSlide element
		priority: (self priorityFor: #exploringDataScenery:);
		element: [  self exploringScenery ]
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> exploringScenery [
	<gtExample>
	| item3 item1 scenery item4 item2 |
	scenery := GtScenery new.
	item1 := scenery
			addItem: [ (self responseForFeenkOrg gtJsonFor: GtPhlowEmptyView new)
					asElementDo: [ :e | 
						e
							background: Color white;
							aptitude: BrShadowAptitude;
							margin: (BlInsets all: 10) ] ] asStencil.
	item1 position: 0 @ 0.
	item1 extent: 400.0 @ 400.0.
	item2 := scenery
			addItem: (GtInspectorSceneryStencil new
					extent: 200 @ 400;
					target: [ GhOrganization new rawData: self organizationData ]).
	item2 position: 600 @ 0.
	item2 extent: 400.0 @ 400.0.
	item3 := scenery
			addItem: [ (self responseForGToolkitRepo gtJsonFor: GtPhlowEmptyView new)
					asElementDo: [ :e | 
						e
							background: Color white;
							aptitude: BrShadowAptitude;
							margin: (BlInsets all: 10) ] ] asStencil.
	item3 position: 603 @ 513.
	item3 extent: 400.0 @ 400.0.
	item4 := scenery
			addItem: (GtInspectorSceneryStencil new
					extent: 200 @ 400;
					target: [ GhRepo new rawData: self gtoolkitData ]).
	item4 position: 1205 @ 518.
	item4 extent: 400.0 @ 400.0.


	scenery
		addConnection: (GtParabollaArcSceneryStencil new labelText: 'wrap & view')
		from: item1
		to: item2.

	scenery
		addConnection: (GtParabollaArcSceneryStencil new labelText: 'explore')
		from: item2
		to: item3.

	scenery
		addConnection: (GtParabollaArcSceneryStencil new labelText: 'wrap & view')
		from: item3
		to: item4.


	^ scenery
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
ExploringGitHubRESTAPI >> fullExample: aSlide [
	<gtSlide>
	self initFullExamplePage.
	^ aSlide lepiterPage
		priority: (self priorityFor: #fullExample:);
		pageNamed: 'An executable GitHub REST API model' from: self myLepiterDB
]

{ #category : #slides }
ExploringGitHubRESTAPI >> gettingRawData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #gettingRawData:);
		titleWithFormat: (self asHeader: 'Getting the raw data')
]

{ #category : #rest }
ExploringGitHubRESTAPI >> gtoolkitData [
	<gtExample>
	^ STON
		fromString: (ZnClient new
				username: '' password: self password;
				get: 'https://api.github.com/repos/feenkcom/gtoolkit')
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
ExploringGitHubRESTAPI >> initFullExamplePage [
	<gtExample>
	| pageName page |
	pageName := 'An executable GitHub REST API model'.
	page := self ensureEmptyPageNamed: pageName.
	^ page
		addSnippet: (LePharoSnippet new
				code: 'GhOrganizationExamples new feenkcomOrganization';
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

{ #category : #rest }
ExploringGitHubRESTAPI >> organizationData [
	<gtExample>
	^ STON
		fromString: (ZnClient new
				username: '' password: self password;
				get: 'https://api.github.com/orgs/feenkcom')
]

{ #category : #rest }
ExploringGitHubRESTAPI >> password [
	| githubAccessKeyFile |
	githubAccessKeyFile := FileLocator home / '.secrets' / 'home-github.txt'.
	^ githubAccessKeyFile contents trimBoth
]

{ #category : #rest }
ExploringGitHubRESTAPI >> responseForFeenkOrg [
	"^ GtWorkingWithTheGitHubRestApiShow new responseForFeenkOrg"

	<gtExample>
	<noTest>
	| response |
	response := ZnClient new
			username: '' password: self password;
			url: 'https://api.github.com/orgs/feenkcom';
			get;
			response.

	self assert: response isNotNil.
	self assert: response status equals: 200.

	^ response
]

{ #category : #accessing }
ExploringGitHubRESTAPI >> responseForGToolkitRepo [
	"^ GtWorkingWithTheGitHubRestApiShow new responseForGToolkitRepo"

	<gtExample>
	<noTest>
	| response |
	response := ZnClient new
			username: '' password: self password;
			url: 'https://api.github.com/repos/feenkcom/gtoolkit';
			get;
			response.

	self assert: response isNotNil.
	self assert: response status equals: 200.

	^ response
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
			exploringDataScenery:
		
		fullExample:
		
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

{ #category : #accessing }
ExploringGitHubRESTAPI >> testScenery [
	<gtExample>
	| scenery item1 item2 item3 item4 |
	scenery := GtScenery new.
	item1 := scenery
			addItem: [ (self responseForFeenkOrg gtJsonFor: GtPhlowEmptyView new)
					asElementDo: [ :e | 
						e
							background: Color white;
							aptitude: BrShadowAptitude;
							margin: (BlInsets all: 10) ] ] asStencil.
	item1 position: 0 @ 0.
	item1 extent: 400.0 @ 400.0.
	item2 := scenery
			addItem: (GtInspectorSceneryStencil new
					extent: 200 @ 400;
					target: [ GhOrganization new rawData: self organizationData ]).
	item2 position: 600 @ 0.
	item2 extent: 400.0 @ 400.0.
	item3 := scenery
			addItem: [ (self responseForGToolkitRepo gtJsonFor: GtPhlowEmptyView new)
					asElementDo: [ :e | 
						e
							background: Color white;
							aptitude: BrShadowAptitude;
							margin: (BlInsets all: 10) ] ] asStencil.
	item3 position: 603 @ 513.
	item3 extent: 400.0 @ 400.0.
	item4 := scenery
			addItem: (GtInspectorSceneryStencil new
					extent: 200 @ 400;
					target: [ GhRepo new rawData: self gtoolkitData ]).
	item4 position: 1205 @ 518.
	item4 extent: 400.0 @ 400.0.
	scenery
		addConnection: (GtParabollaArcSceneryStencil new labelText: 'wrap & view')
		from: item1
		to: item2.
	scenery
		addConnection: (GtParabollaArcSceneryStencil new labelText: 'explore')
		from: item2
		to: item3.
	scenery
		addConnection: (GtParabollaArcSceneryStencil new labelText: 'wrap & view')
		from: item3
		to: item4.
	^ scenery
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
