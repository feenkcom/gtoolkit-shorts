Class {
	#name : #GettingStartedWithGTSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #GtoolkitShorts
}

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

*(Open [](https://gtoolkit.com), download GT and run it.)*

*(Switch to full screen mode and run the Zoom script.)*'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #downloadGt:);
		startPage: (self db pageNamed: 'Download and start GT')
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> downloadGtPage [
	<gtExample>
	^ (LePage named: 'Download and start GT')
		addSnippet: (LeTextSnippet new
				string: 'Start by downloading GT for your platform from [](https://gtoolkit.com).';
				yourself);
		addSnippet: (LeTextSnippet new
				string: 'Then go to {{gtPage:How to configure GitHub SSH key authentication|db=2j9m7db2i4oz116bexd7wbdxo}}. ';
				yourself);
		yourself
]

{ #category : #initialization }
GettingStartedWithGTSlideShow >> initializeDb [
	db := nil.
	self db addPage: self downloadGtPage.
]

{ #category : #constants }
GettingStartedWithGTSlideShow >> slidePriorities [
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:

		downloadGt:
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
