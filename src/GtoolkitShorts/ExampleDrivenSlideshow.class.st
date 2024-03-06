Class {
	#name : #ExampleDrivenSlideshow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #accessing }
ExampleDrivenSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	^ #( 
		title:
		
		"#summarySlide:"
	)
]

{ #category : #slides }
ExampleDrivenSlideshow >> title: aSlide [
	<gtSlide>
	<text:
'# TO DO
Example-Driven Development'>
	^ aSlide title
		setPriority;
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Example-Driven Development in 7''')
]
