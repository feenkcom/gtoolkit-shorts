Class {
	#name : #ExploringGitHubRESTAPI,
	#superclass : #GtShortSlideShow,
	#category : #'GtoolkitShorts-Slideshows'
}

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
ExploringGitHubRESTAPI >> introEmpty: aSlide [
	<gtSlide>
	^ aSlide empty priority: (self priorityFor: #introEmpty:)
]

{ #category : #constants }
ExploringGitHubRESTAPI >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	
	^ #( 
		titleSlide:
		
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
