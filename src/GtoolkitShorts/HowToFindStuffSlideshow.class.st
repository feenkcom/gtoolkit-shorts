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
HowToFindStuffSlideshow >> sendersAndImplementors: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #sendersAndImplementors:);
		titleWithFormat: (self asTitle: 'Senders and Implementors')
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
		
		methodFinder:
		
		gtQueries:
		
		queryingSmalltalk:
		
		findingExamples:
		
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
		titleWithFormat: (self asTitle: 'Spotter')
]

{ #category : #slides }
HowToFindStuffSlideshow >> spotterExample: aSlide [
	<gtSlide>
	^ aSlide labelAndElement
		priority: (self priorityFor: #spotterExample:);
		element: [ GtSpotterLiveSlide new asElement ];
		newFadedText: 'Search is pervasive. Try searching for Object'.
]

{ #category : #slides }
HowToFindStuffSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'How to find stuff in GT in 7''')
]
