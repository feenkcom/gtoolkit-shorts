Extension { #name : #LePage }

{ #category : #'*GtoolkitShorts' }
LePage >> gtMetricsFor: aView [
	"In the English language, people speak about 140 words per minute. A fast speaker will get to 170 words per minute, a slow speaker will use around 110 words."

	<gtView>
	| wordsPerMinutes |
	wordsPerMinutes := 140.
	^ aView columnedList
		title: 'Metrics';
		priority: 8;
		items: [ | words |
			words := (' ' join: (self textSnippetsStartingWith: '*')) substrings.
			{'Number of words' -> words size.
				'Estimated duration'
					-> ((Duration minutes: words size / wordsPerMinutes) roundTo: 1 second)} ];
		column: 'Metric' text: #key;
		column: 'Value' text: [ :assoc | assoc value asString ];
		updateWhen: LeContentTreeChanged in: [ self announcer ];
		actionUpdateButton
]

{ #category : #'*GtoolkitShorts' }
LePage >> gtRawScriptFor: aView [
	<gtView>
	self class isAbstract ifTrue: [ ^ aView empty ].
	^ aView explicit
		title: 'Raw script';
		priority: 6;
		stencil: [ LePageToolContentTreeElement new
				pageViewModel: ((LePage named: 'Raw script')
						addSnippet: (LeTextSnippet new
								string: (('

' join: (self textSnippetsStartingWith: '*')) copyWithoutAll: '*`'));
						yourself) asContentUIModel;
				matchParent ];
		updateWhen: LeContentTreeChanged in: [ self announcer ];
		actionUpdateButton
]

{ #category : #'*GtoolkitShorts' }
LePage >> gtScriptFor: aView [
	<gtView>
	self class isAbstract ifTrue: [ ^ aView empty ].
	^ aView explicit
		title: 'Script';
		priority: 4;
		stencil: [ LePageToolContentTreeElement new
				pageViewModel: ((LePage named: 'Script')
						addSnippet: (LeTextSnippet new
								string: ('

' join: (self textSnippetsStartingWith: '*`#')));
						yourself) asContentUIModel;
				matchParent ];
		updateWhen: LeContentTreeChanged in: [ self announcer ];
		actionUpdateButton
]

{ #category : #'*GtoolkitShorts' }
LePage >> textSnippetsStartingWith: startChars [
	^ (self allChildrenTextSnippets collect: #string)
		select: [ :each | each notEmpty and: [ startChars includes: each first ] ]
]
