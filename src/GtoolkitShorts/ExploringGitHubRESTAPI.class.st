"
This class contains the full slideshow. The idea is to open both versions, so that when this slideshow hits the ""exploring the data"" lepiter page slide, we can flip back and forth between the two slideshows, continuing with the headings on the other one, while keeping this one queued to the lepiter page.
NB: the lepiter page slide initializes the page, so we don't want to do that from the parent slideshow.
"
Class {
	#name : #ExploringGitHubRESTAPI,
	#superclass : #ExploringGitHubRESTAPIpartial,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #slides }
ExploringGitHubRESTAPI >> apiEndpoint: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #apiEndpoint:);
		titleWithFormat: (self asBigCode: 'https://api.github.com/orgs/feenkcom')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> exploringTheDataPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #exploringTheDataPage:);
		startPage: (self db pageNamed: 'Exploring the GitHub REST API')
]

{ #category : #slides }
ExploringGitHubRESTAPI >> gettingRawData: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #gettingRawData:);
		titleWithFormat: (self asHeader: 'Getting the raw data')
]

{ #category : #initialization }
ExploringGitHubRESTAPI >> initializeDb [
	super initializeDb
]

{ #category : #slides }
ExploringGitHubRESTAPI >> introEmpty: aSlide [
	"Empty slide to show github rest api docs in foreground"

	<gtSlide>
	^ aSlide empty priority: (self priorityFor: #introEmpty:)
]

{ #category : #slides }
ExploringGitHubRESTAPI >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Exploring the GitHub REST API in 7''')
]
