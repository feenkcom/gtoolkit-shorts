Extension { #name : #GtProtoLiveSlide }

{ #category : #'*GtoolkitShorts' }
GtProtoLiveSlide >> headingAndCode [
	^ GtCodeSnippetsSlide new
		definingMethod: (GtPhlowDefiningMethodsCollector new
				stack: thisContext stack;
				collect)
]
