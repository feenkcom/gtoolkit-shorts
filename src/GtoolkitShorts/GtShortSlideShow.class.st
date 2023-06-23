"
I am an abstract class holding utility methods for slideshows.
"
Class {
	#name : #GtShortSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
GtShortSlideshow class >> <> aSymbol [
	^ self show: aSymbol
]

{ #category : #utility }
GtShortSlideshow class >> disableHomeSections [
	"Useful when we show the GTWorld slide."
	((GtHome methods select: [ :each | each hasPragmaNamed: #gtHomeSection ])
		copyWithout: GtHome >> #getStartedSection)
		do: [ :each | 
			each methodClass
				compile: (each sourceCode replaceAllRegex: '<gtHomeSection>' with: '"<gtHomeSection>"') ]
]

{ #category : #testing }
GtShortSlideshow class >> isAbstract [
	^ self == GtShortSlideshow
]

{ #category : #utility }
GtShortSlideshow class >> restoreHomeSections [
	(GtHome methods
		select: [ :each | each sourceCode includesSubstring: '"<gtHomeSection>"' ])
		do: [ :each | 
			each methodClass
				compile: (each sourceCode replaceAllRegex: '"<gtHomeSection>"' with: '<gtHomeSection>') ]
]

{ #category : #utility }
GtShortSlideshow >> ensureEmptyClass: aClassSymbol inPackage: aPackageSymbol [
	Object
		subclass: aClassSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: aPackageSymbol.
	self removeAllMethods: aClassSymbol
]

{ #category : #utility }
GtShortSlideshow >> fileIn: aFilename [
	(self fileOuts / aFilename) fileIn
]

{ #category : #constants }
GtShortSlideshow >> fileOuts [
	"The directory where the fileOuts are stored."

	<gtExample>
	<noTest>
	^ FileLocator localDirectory / 'iceberg' / 'feenkcom' / 'gtoolkit-shorts'
		/ 'fileOuts'
]

{ #category : #accessing }
GtShortSlideshow >> gtShortsLepiterDB [
	"^ 'feenkcom/gtoolkit-shorts/lepiter'"
	^ 'GT Shorts Notebook'
]

{ #category : #constants }
GtShortSlideshow >> picturesDirectoryPath [
	^ Path * 'feenkcom' / 'gtoolkit-shorts' / 'doc'
]

{ #category : #utility }
GtShortSlideshow >> removeAllMethods: aClassSymbol [
	[ aClassSymbol asClass selectors
		do: [ :each | aClassSymbol asClass removeSelector: each ] ] onErrorDo: [  ]
]

{ #category : #utility }
GtShortSlideshow >> removeClass: aClassSymbol [
	[ aClassSymbol asClass removeFromSystem ] onErrorDo: [  ]
]
