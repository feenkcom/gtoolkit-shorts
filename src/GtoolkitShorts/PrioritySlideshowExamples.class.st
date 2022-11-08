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
PrioritySlideshowExamples >> exampleExample [
	"This is an example of an example method"

	<gtExample>
	^ 'I am an example of a string'
]

{ #category : #accessing }
PrioritySlideshowExamples >> exampleSnippetSlide: aSlide [
	"Testing TG's editor+preview widget in a slide"

	<gtSlide>
	^ GtHeadingAndCodeSnippets new
		heading: 'Slide Heading';
		addTextSnippet: 'A plain text snippet';
		addTextSnippet: ('A formatted text snippet' asRopedText
				glamorousRegularFont;
				bold;
				fontSize: 24);
		addCodeSnippet: '"A code snippet"
3+4';
		addCodeSnippet: '"Another code snippet"
2r101010';
		addExampleSnippet: self class >> #exampleExample
]

{ #category : #accessing }
PrioritySlideshowExamples >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."

	<gtExample>
	^ #(singleSnippetSlide: #exampleSnippetSlide:)
]
