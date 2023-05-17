Class {
	#name : #UnderstandingLepiterSlideshow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
UnderstandingLepiterSlideshow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slide }
UnderstandingLepiterSlideshow >> annotations: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #annotations:);
		startPage: (self db pageNamed: 'Lepiter annotations');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> annotationsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Lepiter annotations')
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> annotationsTitle: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #annotationsTitle:);
		titleWithFormat: (self asHeader: 'Markdown annotations')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> caseStudyExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #caseStudyExamplePage:);
		pageNamed: 'Working with a REST API: the GitHub case study' from: self gtBookName;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> closing: aSlide [
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
UnderstandingLepiterSlideshow >> documentationExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #documentationExamplePage:);
		pageNamed: 'Geometry, visual and layout bounds explained' from: self gtBookName;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> editingPages: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #editingPages:);
		startPage: (self db pageNamed: 'Editing Lepiter pages');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> editingPagesPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Editing Lepiter pages')
		addSnippet: (LeTextSnippet new
				string: 'To add a new text snippet, just use the `return` key.';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> editingPagesTitle: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #editingPagesTitle:);
		titleWithFormat: (self asHeader: 'Editing Lepiter pages')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> exampleSnippets: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #exampleSnippets:);
		startPage: (self db pageNamed: 'Example snippets');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> exampleSnippetsPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Example snippets')
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> exampleSnippetsTitle: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #exampleSnippetsTitle:);
		titleWithFormat: (self asHeader: 'Example snippets')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> faqExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #faqExamplePage:);
		pageNamed: 'How to set up a new GitHub repo' from: self gtBookName;
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> finalGraphQLPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'GraphQL snippet')
		addSnippet: (LeTextSnippet new
				string: 'You need to retrieve your GitHub personal access token:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'githubAccessKeyFile := FileLocator home / ''.secrets'' / ''home-github.txt''.
githubAccessKey := githubAccessKeyFile contents trimBoth.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'And you have to download GitHub''s GraphQL schema:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'aContext := GtGQLContext new
		url: ''https://api.github.com/graphql'';
		bearerToken: githubAccessKey;
		buildSchema.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Then you can compose a query using the GraphQL snippet:';
				yourself);
		addSnippet: (GtGQLSnippet new
				input: '{
	"ownername": "feenkcom",
	"reponame": "gtoolkit"
}';
				operation: 'query Repository($ownername: String!, $reponame: String!) {
	repository(owner: $ownername, name: $reponame) {
		url
		description
	}
}';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> graphQL: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #graphQL:);
		startPage: (self db pageNamed: 'GraphQL snippet');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> graphQLPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'GraphQL snippet')
		addSnippet: (LeTextSnippet new
				string: 'You need to retrieve your GitHub personal access token:';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'githubAccessKeyFile := FileLocator home / ''.secrets'' / ''home-github.txt''.
githubAccessKey := githubAccessKeyFile contents trimBoth.';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> gtWorld2: aSlide [
	<gtSlide>
	
	^ (aSlide element)
		priority: (self priorityFor: #gtWorld2:);
		element: [ aSlide world ]
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> gtWorld: aSlide [
	<gtSlide>
	
	^ (aSlide element)
		priority: (self priorityFor: #gtWorld:);
		element: [ aSlide world ]
]

{ #category : #initialization }
UnderstandingLepiterSlideshow >> initializeDb [
	self db addPage: self annotationsPage.
	self db addPage: self graphQLPage.
	self db addPage: self editingPagesPage.
	self db addPage: self exampleSnippetsPage.
	self db addPage: self parsingBibtexPage.
	self db addPage: self queryingLepiterPage.
	self db addPage: self randomNoteExamplePage.
	self db addPage: self snippetTypesPage.
	self db addPage: self todoExamplePage.
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> lepiterAPI: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #lepiterAPI:);
		titleWithFormat: (self asHeader: 'The Lepiter API')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> lepiterAsAKnowledgeBase: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #lepiterAsAKnowledgeBase:);
		titleWithFormat: (self asHeader: 'Lepiter as a knowledge base')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> lepiterAsANotebook: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #lepiterAsANotebook:);
		titleWithFormat: (self asHeader: 'Lepiter as a notebook')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> lepiterDatabaseInRepo: aSlide [
	<gtSlide>
	^ aSlide element
		priority: (self priorityFor: #lepiterDatabaseInRepo:);
		element: [ (GtGitElement new
				repository: (GtGitRepository forPackage: GtShortSlideshow package))
				createInPager maximized ]
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> markdownSyntax: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #markdownSyntax:);
		titleWithFormat: (self asHeader: 'Use Markdown syntax in text snippets')
]

{ #category : #accessing }
UnderstandingLepiterSlideshow >> oscarsLepiterDB [
	^ 'Documents/lepiter/default'
]

{ #category : #page }
UnderstandingLepiterSlideshow >> parsingBibtexPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Parsing Bibtex')
		addSnippet: (LeTextSnippet new
				string: 'In this project we explore how to parse bibtex bibliography entries using the PetitParser framework.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Todo';
				addSnippet: (LeTextSnippet new
						string: '{{gtTodo:label=Merge duplicate keys in fields?}}';
						addSnippet: (LeTextSnippet new
								string: 'Dictionaries can''t hold duplicate keys, so we must merge them somehow.';
								yourself);
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Using PP2 to parse bibtex';
				addSnippet: (LeTextSnippet new
						string: 'Using [A complete guide to the BibTeX format](https://www.bibtex.com/g/bibtex-format/).';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'An example bib entry.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'agg := ''@misc{AGG,
	Key = {visprog agg},
	Note = {http://tfs.cs.tu-berlin.de/agg/index.html},
	Title = {{AGG} --- The Attributed Graph Grammar System},
	Url = {http://tfs.cs.tu-berlin.de/agg/index.html},
	Bdsk-Url-1 = {http://tfs.cs.tu-berlin.de/agg/index.html}}''.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We start by building parsers and tests for all the parts.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: '##Entry type';
						addSnippet: (LeTextSnippet new
								string: 'The entry type starts with `@`  and is followed by the name.';
								yourself);
						addSnippet: (LeTextSnippet new
								string: 'There are 14 standard entry types.';
								yourself);
						addSnippet: (LePharoSnippet new
								code: 'type := $@ asPParser , #letter asPParser plus flatten ==> #second.';
								addSnippet: (LePharoSnippet new
										code: 'type end parse: ''@misc''.';
										yourself);
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '##Citation key';
						addSnippet: (LeTextSnippet new
								string: 'The citation key can be any sequence of letters and digits, as well as `-`, `_` and `:`.';
								yourself);
						addSnippet: (LePharoSnippet new
								code: 'citeKey := (#word asPParser 
			/ $- asPParser 
			/ $_ asPParser 
			/ $: asPParser) plus flatten.';
								addSnippet: (LePharoSnippet new
										code: 'citeKey end parse: ''AGG''.';
										yourself);
								addSnippet: (LePharoSnippet new
										code: 'citeKey end parse: ''Nier22a''.';
										yourself);
								addSnippet: (LePharoSnippet new
										code: 'citeKey end parse: ''foo-bar:22_a''.';
										yourself);
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '##Field key names';
						addSnippet: (LeTextSnippet new
								string: 'There are about 20 standard field names. They normally consist of just letters, but digits, hyphens and underscores also appear in ad hoc field names.';
								yourself);
						addSnippet: (LePharoSnippet new
								code: 'fieldName := (#word asPParser / $- asPParser / $_ asPParser) plus flatten.';
								addSnippet: (LePharoSnippet new
										code: 'fieldName end parse: ''Key''.';
										yourself);
								addSnippet: (LePharoSnippet new
										code: 'fieldName end parse: ''Bdsk-Url-1''.';
										yourself);
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '##Field values';
						addSnippet: (LeTextSnippet new
								string: 'Field values may be enclosed in double quotes or curly braces, or if they are just a scalar string (a year or a month), they may appear as a raw string.';
								yourself);
						addSnippet: (LeTextSnippet new
								string: '###Raw fields';
								addSnippet: (LePharoSnippet new
										code: 'rawFieldString := #word asPParser plus flatten.';
										addSnippet: (LePharoSnippet new
												code: 'rawFieldString end parse: ''sep''.';
												yourself);
										addSnippet: (LePharoSnippet new
												code: 'rawFieldString end parse: ''1984''.';
												yourself);
										yourself);
								yourself);
						addSnippet: (LeTextSnippet new
								string: '###Quoted fields';
								addSnippet: (LeTextSnippet new
										string: 'Quoted fields start and end with double quotes, but may contain escaped quotes. The field might be empty.';
										yourself);
								addSnippet: (LePharoSnippet new
										code: 'fieldCharWithinQuotes := ($\ asPParser / $" asPParser) negate.
fieldStringWithinQuotes := 
		( fieldCharWithinQuotes
		/ ($\ asPParser , #any asPParser)
		) star flatten.
fieldValueInQuotes := ($" asPParser , fieldStringWithinQuotes , $" asPParser)
		==> #second.';
										addSnippet: (LePharoSnippet new
												code: 'fieldValueInQuotes end parse: ''"{AGG} --- The Attributed Graph Grammar System"''.';
												yourself);
										addSnippet: (LePharoSnippet new
												code: 'fieldValueInQuotes end parse: ''"Z{\"u}rich, Switzerland"''.';
												yourself);
										addSnippet: (LePharoSnippet new
												code: 'fieldValueInQuotes end parse: ''""''.';
												yourself);
										yourself);
								yourself);
						addSnippet: (LeTextSnippet new
								string: '###Braced fields';
								addSnippet: (LeTextSnippet new
										string: 'Fields in curly braces may contain escaped braces, but may also contain nested strings in braces.';
										yourself);
								addSnippet: (LeTextSnippet new
										string: 'This one is tricky because it''s recursive, so must be defined using `def:`.';
										yourself);
								addSnippet: (LePharoSnippet new
										code: 'fieldCharWithinBraces := ($\ asPParser / ${ asPParser / $} asPParser) negate.

fieldStringWithinBraces := PP2UnresolvedNode new.
fieldStringWithinBraces def: 
	( fieldCharWithinBraces 
	/ ($\ asPParser , #any asPParser)
	/ (${ asPParser , fieldStringWithinBraces , $} asPParser)
	) star flatten.

fieldValueInBraces := (${ asPParser , fieldStringWithinBraces , $} asPParser)
		==> #second.';
										addSnippet: (LePharoSnippet new
												code: 'fieldValueInBraces end parse: ''{}''.';
												yourself);
										addSnippet: (LePharoSnippet new
												code: 'fieldValueInBraces end parse: ''{{AGG} --- The Attributed Graph Grammar System}''.';
												yourself);
										addSnippet: (LePharoSnippet new
												code: 'fieldValueInBraces end parse: ''{Fran{\c{c}}oise Balmas}''.';
												yourself);
										addSnippet: (LePharoSnippet new
												code: 'fieldValueInBraces end parse: ''{Special Section on the Programming Languages Track at the 23rd \{ACM\} Symposium on Applied Computing \{ACM\} \{SAC\} 08}''.';
												yourself);
										yourself);
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '##Fields';
						addSnippet: (LeTextSnippet new
								string: 'A field is a field key/value pair.';
								yourself);
						addSnippet: (LePharoSnippet new
								code: 'fieldValue := fieldValueInQuotes / fieldValueInBraces / rawFieldString.
field := (fieldName trim , $= asPParser trim , fieldValue)
		==> [ :node | node first -> node third ].';
								addSnippet: (LePharoSnippet new
										code: 'field end parse: ''title = {Compact and efficient strings for Java}''.';
										yourself);
								addSnippet: (LePharoSnippet new
										code: 'field end parse: ''author={M. {Hazhirpasand} and M. {Ghafari} and S. {Kr\"{u}ger} and E. {Bodden} and O. {Nierstrasz}}''.';
										yourself);
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '##Bib entries';
						addSnippet: (LeTextSnippet new
								string: 'A bib entry puts the pieces together.';
								yourself);
						addSnippet: (LeTextSnippet new
								string: 'We package the result as a dictionary.';
								yourself);
						addSnippet: (LePharoSnippet new
								code: 'type := $@ asPParser , #letter asPParser plus flatten ==> #second.
citeKey := (#word asPParser / $- asPParser / $_ asPParser / $: asPParser) plus
		flatten.
fieldName := (#word asPParser / $- asPParser / $_ asPParser) plus flatten.
rawFieldString := #word asPParser plus flatten.
fieldCharWithinQuotes := ($\ asPParser / $" asPParser) negate.
fieldStringWithinQuotes := (fieldCharWithinQuotes
		/ ($\ asPParser , #any asPParser)) star flatten.
fieldValueInQuotes := ($" asPParser , fieldStringWithinQuotes , $" asPParser)
		==> #second.
fieldCharWithinBraces := ($\ asPParser / ${ asPParser / $} asPParser) negate.
fieldStringWithinBraces := PP2UnresolvedNode new.
fieldStringWithinBraces
	def: (fieldCharWithinBraces / ($\ asPParser , #any asPParser)
			/ (${ asPParser , fieldStringWithinBraces , $} asPParser)) star flatten.
fieldValueInBraces := (${ asPParser , fieldStringWithinBraces , $} asPParser)
		==> #second.
fieldValue := fieldValueInQuotes / fieldValueInBraces / rawFieldString.
field := (fieldName trim , $= asPParser trim , fieldValue)
		==> [ :node | node first -> node third ].
fields := (field , ($, asPParser , field) star)
		==> [ :node | 
			(node second collect: #second)
				addFirst: node first;
				yourself ].
bibEntry := (type , ${ asPParser , citeKey , $, asPParser trim , fields
		, $} asPParser trim)
		==> [ :node | 
			({''entryType'' -> node first.
				''citeKey'' -> node third} copyWithAll: node fifth) asOrderedDictionary ].';
								addSnippet: (LePharoSnippet new
										code: 'bibEntry end parse: ''@misc{AGG,
	Key = {visprog agg},
	Note = {http://tfs.cs.tu-berlin.de/agg/index.html},
	Title = {{AGG} --- The Attributed Graph Grammar System},
	Url = {http://tfs.cs.tu-berlin.de/agg/index.html},
	Bdsk-Url-1 = {http://tfs.cs.tu-berlin.de/agg/index.html}}''.';
										yourself);
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: '##Bib file';
						addSnippet: (LeTextSnippet new
								string: 'Finally, the bib file is a sequence of bib entries.';
								yourself);
						addSnippet: (LePharoSnippet new
								code: '"The scannerless parser"
type := ($@ asPParser , #letter asPParser plus flatten) ==> #second.
citeKey := (#word asPParser / $- asPParser / $_ asPParser / $: asPParser) plus
		flatten.
fieldName := (#word asPParser / $- asPParser / $_ asPParser) plus flatten.
rawFieldString := #word asPParser plus flatten.
fieldCharWithinQuotes := ($\ asPParser / $" asPParser) negate.
fieldStringWithinQuotes := (fieldCharWithinQuotes
		/ ($\ asPParser , #any asPParser)) star flatten.
fieldValueInQuotes := ($" asPParser , fieldStringWithinQuotes , $" asPParser)
		==> #second.
fieldCharWithinBraces := ($\ asPParser / ${ asPParser / $} asPParser) negate.
fieldStringWithinBraces := PP2UnresolvedNode new.
fieldStringWithinBraces
	def: (fieldCharWithinBraces / ($\ asPParser , #any asPParser)
			/ (${ asPParser , fieldStringWithinBraces , $} asPParser)) star flatten.
fieldValueInBraces := (${ asPParser , fieldStringWithinBraces , $} asPParser)
		==> #second.
fieldValue := fieldValueInQuotes / fieldValueInBraces / rawFieldString.
field := (fieldName trim , $= asPParser trim , fieldValue)
		==> [ :node | node first -> node third ].
fields := (field , ($, asPParser trim , field) star)
		==> [ :node | 
			(node second collect: #second)
				addFirst: node first;
				yourself ].
bibEntry := (type trim , ${ asPParser trim , citeKey , $, asPParser trim
		, fields , $} asPParser trim)
		==> [ :node | 
			({''entryType'' -> node first.
				''citeKey'' -> node third} copyWithAll: node fifth) asOrderedDictionary ].
bibFile := (bibEntry , #space asPParser star) star
		==> [ :node | node collect: #first ].';
								addSnippet: (LePharoSnippet new
										code: 'scgbib := ZnClient new
		get: ''https://raw.githubusercontent.com/scgbern/scgbib/main/scg.bib''.
input := scgbib contents.
bibFile end parse: input.';
										yourself);
								yourself);
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> projectExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #projectExamplePage:);
		startPage: (self db pageNamed: 'Parsing Bibtex');
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> queryingLepiter: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #queryingLepiter:);
		startPage: (self db pageNamed: 'Querying Lepiter');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> queryingLepiterPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Querying Lepiter')
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> queryingLepiterPageComplete [
	"The final state of the page"

	<gtExample>
	<noTest>
	^ (LePage named: 'Querying Lepiter')
		addSnippet: (LeTextSnippet new
				string: 'Inspect this snippet.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'thisSnippet.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Access the page of a snippet.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'thisSnippet page.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Access the database of a page.';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'thisSnippet page database.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'How to find a database by name?';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'gtBook := LeDatabasesRegistry uniqueInstance defaultLogicalDatabase databases
		detect: [ :db | db databaseName = ''Glamorous Toolkit Book'' ].';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'How to find all open to-dos?';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'gtBook pages  select: #hasUncompletedGtTodo.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Get all the snippets';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'allSnippets := (gtBook pages deepCollect: #children)
	select: [ :each | each isKindOf: LeSnippet ].';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'How many snippets are there of each type?';
				yourself);
		addSnippet: (LePharoSnippet new
				code: '(allSnippets collect: #class) asBag sortedCounts.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'What are examples of Wardley map snippets?';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'allSnippets select: [ :each | each isKindOf: LeWardleyMapSnippet ].';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Which pages have Wardley map snippets?';
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'gtBook pages
	select: [ :each | (each deep: #children 
		select: [ :child | child isKindOf: LeWardleyMapSnippet ]) notEmpty ].';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> randomNoteExample: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #randomNoteExample:);
		startPage: (self db pageNamed: 'Where are buttons implemented?');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> randomNoteExamplePage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Where are buttons implemented?')
		addSnippet: (LeTextSnippet new
				string: 'We want to know how to implement new buttons with actions. This can be done in various ways.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Inspector buttons';
				addSnippet: (LeTextSnippet new
						string: 'If we inspect an object, we get several inspector buttons.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '''foo'' ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'There is {{gtMethod:name=ProtoObject>>#gtActionInspectInWindowFor:}} and three more.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'They are all defined in Object or ProtoObject and have a gtAction pragma.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '#gtAction gtPragmas  & Object gtMethodsInClass';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '#gtAction gtPragmas  & ProtoObject gtMethodsInClass';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'So it seems that if we add a gtACtion method to a specific class, instances of that class will get a button in the inspector.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Let''s try to add a "Help" button to ByteString that does nothing but show a tooltip.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '
ByteString compile: ''gtHelpFor: anAction
	<gtAction>
	^ anAction button
		icon: BrGlamorousIcons help;
		tooltip: ''''Help'''';
		action: [  ]''';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Indeed, now when we inspect a string we see the new button.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '''foo'' ';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#LePage buttons';
				addSnippet: (LeTextSnippet new
						string: 'We can''t inspect the view code of the "Copy as Remote Reference" and "Remove page" buttons. Where are they implemented? ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Let''s try to dive into the UI. We find{{gtMethod:name=LePageHeaderBuilder>>#addRemoteLinkToClipboardButton}} in the Action of the first button.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'The second button just has an `initialize` action. We''ll do a brute force search.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '''Remove Page'' gtSubstringMatch';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We find {{gtMethod:name=LePageHeaderBuilder>>#addRemovePageButton}}. ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'So in both cases we add buttons to the toolbarElement in a {{gtClass:name=LePageHeaderBuilder}} method.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Let''s try to add a new button.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'LePageHeaderBuilder compile: ''addBrowseButton
	"Test of adding a new help button that does nothing."
	| newButton |

	newButton := BrButton new 
		aptitude: BrGlamorousButtonWithIconAptitude;
		label: ''''Browse'''';
		icon: BrGlamorousVectorIcons emphasizedBrowse;
		action: [ :aButton |  ].
	self toolbarElement addItem: newButton.''';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'We also have to send this message somewhere. There appear to be multiple `build` methods.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'If we follow the breadcrumbs, the one that''s actually used seems to be {{gtMethod:name=LePageHeaderWithTitleAndRemoveActionBuilder>>#build}}. ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Let''s try to add the new browse button.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'LePageHeaderWithTitleAndRemoveActionBuilder compile: ''build
	self removeAllItems.
	self addTitle.
	self addRemoteLinkToClipboardButton.
	self addRemovePageButton.
	"self addBrowseButton."
	self addTableOfContentsToggle.
	self addExtensionButtons.''';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Now let''s open a new view of this page:[[Where are buttons implemented?]] ';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'That works!';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'What are the extension buttons added in {{gtMethod:name=LePageHeaderBuilder>>#addExtensionButtons|expanded}}';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '#leHeaderAction gtPragmas ';
						yourself);
				yourself);
		yourself
]

{ #category : #accessing }
UnderstandingLepiterSlideshow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		
		lepiterAsAKnowledgeBase:
			gtWorld:
			tutorialExamplePage:
			documentationExamplePage:
			caseStudyExamplePage:
			faqExamplePage:
		
		lepiterAsANotebook:
			gtWorld2:
			#randomNoteExample:
			#todoExample:
			projectExamplePage:
		
		#editingPagesTitle:
			#editingPages:
		
		markdownSyntax:		
			textSnippetPage:

		#exampleSnippetsTitle:
			#exampleSnippets:
		
		#annotationsTitle:
			#annotations:
		
		#snippetTypesTitle:
			#snippetTypes:
		
		lepiterAPI:
			#queryingLepiter:
		
		snippetLanguage:
			#graphQL:
			wardleyMapPage:

		#tips:
			understandingLepiterPage:
			lepiterDatabaseInRepo:
			
		closing:
	)
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> snippetLanguage: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #snippetLanguage:);
		titleWithFormat: (self asHeader: 'Snippets have their own language')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> snippetTypes: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #snippetTypes:);
		startPage: (self db pageNamed: 'Snippet types');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> snippetTypesPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Snippet types')
		addSnippet: (LeTextSnippet new
				string: 'Snippet types are subclasses of {{gtClass:name=LeSnippet}}. ';
				yourself);
		addSnippet: (LeElementSnippet new
				code: 'GtPhlowView empty tree
	items: [ {LeSnippet} ];
	children: #subclasses;
	expandAll;
	yourself.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Actually this is an example of a live *Element snippet* that can be embedded in a Lepiter page.';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> snippetTypesTitle: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #snippetTypesTitle:);
		titleWithFormat: (self asHeader: 'Snippet types')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> textSnippetPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #textSnippetPage:);
		pageNamed: 'Text snippet' from: self gtBookName;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> tips: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #tips:);
		titleWithFormat: (self asHeader: 'Tips')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Understanding Lepiter in 7''')
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> todoExample: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #todoExample:);
		startPage: (self db pageNamed: 'Prepare a “What is GT anyway?” short');
		yourself
]

{ #category : #page }
UnderstandingLepiterSlideshow >> todoExamplePage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Prepare a “What is GT anyway?” short')
		addSnippet: (LeTextSnippet new
				string: 'The idea of this short is to provide a quick overview of the different tasks that GT can be used for.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'See also [WTF is moldable development](https://blog.container-solutions.com/wtf-is-moldable-development). ';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Metaphors';
				addSnippet: (LeTextSnippet new
						string: '5 blind men touching an elephant';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Grand touring — guided tour';
						addSnippet: (LeTextSnippet new
								string: 'Go far; go fast!';
								yourself);
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Toolkit, toolbox, swiss army knife';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#What (the heck) is GT?';
				addSnippet: (LeTextSnippet new
						string: '(Need examples for each of these.)';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'A data analysis platform';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'A data visualization tool';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'A language workbench';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'A modeling platform';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'A distributed execution platform';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'A rapid prototyping tool';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '';
				yourself);
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> tutorialExamplePage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #tutorialExamplePage:);
		pageNamed: 'Working with collections in Pharo' from: self gtBookName;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> understandingLepiterPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #understandingLepiterPage:);
		pageNamed: 'Understanding Lepiter' from: self gtShortsLepiterDB;
		yourself
]

{ #category : #slides }
UnderstandingLepiterSlideshow >> wardleyMapPage: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #wardleyMapPage:);
		pageNamed: 'Mapping Moldable Development' from: self gtBookName;
		yourself
]
