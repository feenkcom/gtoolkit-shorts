Extension { #name : #LePage }

{ #category : #'*GtoolkitShorts' }
LePage >> gtMetricsFor: aView [
	"In the English language, people speak about 140 words per minute. A fast speaker will get to 170 words per minute, a slow speaker will use around 110 words."

	<gtView>
	| words wordsPerMinutes |
	words := (' ' join: (self textSnippetsStartingWith: '*`')) substrings.
	wordsPerMinutes := 140.
	^ aView columnedList
		title: 'Metrics';
		priority: 5;
		items: [ {'Number of words' -> words size.
				'Estimated duration' -> (Duration minutes: words size / wordsPerMinutes)} ];
		column: 'Metric' text: #key;
		column: 'Value' text: [ :assoc | assoc value asString ];
		updateWhen: LeContentTreeAdded in: [ self announcer ];
		updateWhen: LeContentTreeRemoved in: [ self announcer ];
		actionUpdateButton
]

{ #category : #'*GtoolkitShorts' }
LePage >> gtRawScriptFor: aView [
	<gtView>
	self class isAbstract ifTrue: [ ^ aView empty ].
	^ aView forward
		title: 'Raw Script';
		priority: 4;
		object: [ (LePage unnamedPage
				addSnippet: (LeTextSnippet new
						string: (('

' join: (self textSnippetsStartingWith: '*`')) copyWithoutAll: '*`'));
				yourself) asContentUIModel ];
		view: #gtLiveFor:;
		updateWhen: LeContentTreeChanged in: [ self announcer ];
		actionUpdateButton
]

{ #category : #'*GtoolkitShorts' }
LePage >> gtScriptFor: aView [
	<gtView>
	self class isAbstract ifTrue: [ ^ aView empty ].
	^ aView forward
		title: 'Script';
		priority: 3;
		object: [ (LePage unnamedPage
				addSnippet: (LeTextSnippet new
						string: ('

' join: (self textSnippetsStartingWith: '*`#')));
				yourself) asContentUIModel ];
		view: #gtLiveFor:;
		updateWhen: LeContentTreeChanged in: [ self announcer ];
		actionUpdateButton
]

{ #category : #'*GtoolkitShorts' }
LePage >> textSnippetsStartingWith: startChars [
	^ (self allChildrenTextSnippets collect: #string)
		select: [ :each | each notEmpty and: [ startChars includes: each first ] ]
]
