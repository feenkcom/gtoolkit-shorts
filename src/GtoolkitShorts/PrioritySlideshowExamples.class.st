Class {
	#name : #PrioritySlideshowExamples,
	#superclass : #PrioritySlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
PrioritySlideshowExamples class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #accessing }
PrioritySlideshowExamples >> singleSnippetSlide: aSlide [
	"Testing TG's editor+preview widget in a slide"

	<gtSlide>
	^ GtHeadingAndCodeSnippets new
		heading: 'Experimental snippet slide';
		addSnippet: '3+4'
]

{ #category : #accessing }
PrioritySlideshowExamples >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."

	<gtExample>
	^ #(singleSnippetSlide: twoSnippetSlide:)
]

{ #category : #accessing }
PrioritySlideshowExamples >> twoSnippetSlide: aSlide [
	"Testing TG's editor+preview widget in a slide"

	<gtSlide>
	^ GtHeadingAndCodeSnippets new
		heading: 'Experimental snippet slide';
		addSnippet: '3+4';
		addSnippet: '2r101010'
]
