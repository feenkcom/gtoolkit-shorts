Class {
	#name : #GettingStartedWithGTSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #GtoolkitShorts
}

{ #category : #accessing }
GettingStartedWithGTSlideShow >> blindMenWithElephantSlide: aSlide [
	"Blind monks examining an elephant, an ukiyo-e print by Hanabusa Itchō (1652–1724). https://en.wikipedia.org/wiki/Hanabusa_Itchō"

	<gtSlide>
	<text: '# Blind  monks examining an elephant

The Glamorous Toolkit is a *moldable development environment*, which means that it can be easily and cheaply adapted to variety of needs.

This means that, as in the parable of the blind men and the elephant, if you look too closely at one part, you may miss the greater picture.

Let''s take a tour of the various parts that make up GT.'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #blindMenWithElephantSlide:);
		newFadedText: 'Blind monks examining an elephant';
		element: [ self elementForPicture: 'Blind_monks_examining_an_elephant.jpg' ]
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> closing: aSlide [
	<gtSlide>
	<text:
'# Closing

You''ll find more GT in 7'' videos on our YouTube channel, or you can explore GT by downloading it from gtoolkit.com.

Thanks for listening.'>

	^ aSlide title
		priority: (self priorityFor: #closing:);
		titleWithFormat: ('glamoroustoolkit' asRopedText
				fontSize: 80;
				glamorousRegularFont;
				thin;
				in: [ :t | (t from: 'glamorous' size + 1 to: t size) bold ];
				yourself);
		subtitleWithFormat: ('gtoolkit.com' asRopedText
				fontSize: 48;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> downloadGt: aSlide [
	<gtSlide>
	<text: 
'# Download GT

The first thing to do is to download Glamorous Toolkit for your platform and start it up.

*(Open [](https://gtoolkit.com), download GT and run it.)*'>
	^ aSlide labelAndElement
		priority: (self priorityFor: #downloadGt:);
		newTextWithFormat: (self asHeader: 'Downloading GT');
		element: [ self elementForPicture: 'blind-monks-trunk.jpg' ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> elementForPicture: aFilename [
	^ GtFileUtility imageElementFromFileReference: self picturesFolder / aFilename
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> gtWorld: aSlide [
	<gtSlide>
	<text:
'**TODO**

# GT World

```
"Run this to hide the unwanted home cards"
(#gtHomeSection gtPragmas contents copyWithout: GtHome >> #getStartedSection)
	do: [ :each | each removeFromSystem ]
```

When we open GT, we see an image populated with live objects, and a number of tools we can use to interact with these objects.

At the left there is a list of such tools that we can fire up, and also at the top right there is a quick access menu to access severak of these tools.
There is also a button to save the current state of the image, should we wish to do so.

At the center we also a see a GT Home card to quickly access a given project.

**CONTINUE**
'>


	^ aSlide labelAndElement
		priority: (self priorityFor: #gtWorld:);
		newFadedText: 'GT World';
		element: [  aSlide world ]
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> headerSize [
	^ 40
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> initializeDb [
	db := nil.
	self db addPage: self placeholderPage.
]

{ #category : #accessing }
GettingStartedWithGTSlideShow >> picturesFolder [
	<gtExample>
	<noTest>
	^ GtResourcesUtility
		resourceAtPath: self picturesDirectoryPath / 'GettingStarted'
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> placeholderPage [
	<gtExample>
	^ (LePage named: 'PLACEHOLDER')
		addSnippet: (LeTextSnippet new
				string: 'Start by downloading GT for your platform from [](https://gtoolkit.com).';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Then go to {{gtPage:How to configure GitHub SSH key authentication|db=2j9m7db2i4oz116bexd7wbdxo}}. ';
				yourself);
		yourself
]

{ #category : #constants }
GettingStartedWithGTSlideShow >> slidePriorities [
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		blindMenWithElephantSlide:
		
		downloadGt:
		gtWorld:
		
		
		closing:
	)
]

{ #category : #slides }
GettingStartedWithGTSlideShow >> titleSlide: aSlide [
	<gtSlide>
	<text: 
'# Getting started with GT in 7''

Hello. My name is Oscar Nierstrasz.

Today I''d like to introduce you to GT.'>

	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'Getting started with GT in 7''')
]
