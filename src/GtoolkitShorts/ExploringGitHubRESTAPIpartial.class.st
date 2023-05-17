"
The version of the slideshow starts after the ""exploring the data"" page.
The subclass starts at the beginning and contains all the slides.
"
Class {
	#name : #ExploringGitHubRESTAPIpartial,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #slides }
ExploringGitHubRESTAPIpartial class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> closing: aSlide [
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
ExploringGitHubRESTAPIpartial >> creatingAView: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #creatingAView:);
		titleWithFormat: (self asHeader: 'Creating a view')
]

{ #category : #accessing }
ExploringGitHubRESTAPIpartial >> exploringData: aSlide number: aNumber [
	"Not used"

	^ aSlide filePicture
		priority: (self priorityFor: #exploringData , aNumber asString , ':');
		fileReference: (GtResourcesUtility
				resourceAtPath: 'feenkcom/gtoolkit-shorts/doc/exploringData/exploringData.00' , aNumber asString
						, '.png')
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> exploringDataScenery: aSlide [
	<gtSlide>
	^ aSlide element
		priority: (self priorityFor: #exploringDataScenery:);
		element: [  self exploringScenery ]
]

{ #category : #rest }
ExploringGitHubRESTAPIpartial >> exploringScenery [
	<gtExample>
	<noTest>
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
			addItem: (GtSceneryInspectorStencil new
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
			addItem: (GtSceneryInspectorStencil new
					extent: 200 @ 400;
					target: [ GhRepo new rawData: self gtoolkitData ]).
	item4 position: 1205 @ 518.
	item4 extent: 400.0 @ 400.0.


	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				labelText: 'wrap & view')
		from: item1
		to: item2.

	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				labelText: 'explore')
		from: item2
		to: item3.

	scenery
		addConnectionWithStencil: (GtSceneryParabollaArcStencil new
				labelText: 'wrap & view')
		from: item3
		to: item4.
	^ scenery
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> exploringTheData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #exploringTheData:);
		titleWithFormat: (self asHeader: 'Exploring the data')
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> extractingNavigationCode: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #extractingNavigationCode:);
		titleWithFormat: (self asHeader: 'Extracting the navigation code')
]

{ #category : #accessing }
ExploringGitHubRESTAPIpartial >> finalExploringDataPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Exploring the GitHub REST API')
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
ExploringGitHubRESTAPIpartial >> fullExample: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #fullExample:);
		startPage: (self db pageNamed: 'An executable GitHub REST API model')
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> fullExamplePage [
	<gtExample>
	<noTest>
	^ (LePage named: 'An executable GitHub REST API model')
		addSnippet: (LePharoSnippet new
				code: 'GhOrganizationExamples new feenkcomOrganization';
				yourself);
		yourself
]

{ #category : #rest }
ExploringGitHubRESTAPIpartial >> gtoolkitData [
	<gtExample>
	<noTest>
	^ STON
		fromString: (ZnClient new
				username: '' password: self password;
				get: 'https://api.github.com/repos/feenkcom/gtoolkit')
]

{ #category : #initialization }
ExploringGitHubRESTAPIpartial >> initializeDb [
	self db addPage: self fullExamplePage.
	self db addPage: self finalExploringDataPage
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> introducingANewEntity: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #introducingANewEntity:);
		titleWithFormat: (self asHeader: 'Introducing a new domain entity')
]

{ #category : #rest }
ExploringGitHubRESTAPIpartial >> organizationData [
	<gtExample>
	<noTest>
	^ STON
		fromString: (ZnClient new
				username: '' password: self password;
				get: 'https://api.github.com/orgs/feenkcom')
]

{ #category : #rest }
ExploringGitHubRESTAPIpartial >> password [
	"This is where to find the GitHub access token."

	<gtExample>
	<noTest>
	| githubAccessKeyFile |
	githubAccessKeyFile := FileLocator home / '.secrets' / 'home-github.txt'.
	^ [ githubAccessKeyFile contents trimBoth ] onErrorDo: [ '' ]
]

{ #category : #rest }
ExploringGitHubRESTAPIpartial >> responseForFeenkOrg [
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

{ #category : #rest }
ExploringGitHubRESTAPIpartial >> responseForGToolkitRepo [
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
ExploringGitHubRESTAPIpartial >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
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

		fullExample:
		
		summary:
			exploringDataScenery:
		
		closing:
	)
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> summary: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #summary:);
		titleWithFormat: (self asHeader: 'Moldable development');
		subtitleWithFormat: (self
				asHeader: 'of executable domain models')
]

{ #category : #rest }
ExploringGitHubRESTAPIpartial >> testScenery [
	<gtExample>
	<noTest>
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
ExploringGitHubRESTAPIpartial >> updatingTheView: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #updatingTheView:);
		titleWithFormat: (self asHeader: 'Updating the view')
]

{ #category : #slides }
ExploringGitHubRESTAPIpartial >> wrappingTheData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #wrappingTheData:);
		titleWithFormat: (self asHeader: 'Wrapping the raw data in a live object')
]
