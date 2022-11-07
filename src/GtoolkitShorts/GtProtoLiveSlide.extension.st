Extension { #name : #GtProtoLiveSlide }

{ #category : #'*GtoolkitShorts' }
GtProtoLiveSlide >> headingAndCode [
	^ GtHeadingAndCodeSnippets new
		definingMethod: (GtPhlowDefiningMethodsCollector new
				stack: thisContext stack;
				collect)
]
