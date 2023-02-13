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
GtShortSlideshow >> ensureEmptyClass: aClassSymbol inPackage: aPackageSymbol [
	Object
		subclass: aClassSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: aPackageSymbol.
	self removeAllMethods: aClassSymbol
]

{ #category : #utility }
GtShortSlideshow >> ensureEmptyPageNamed: aPageName [
	| page |
	page := self ensurePageNamed: aPageName.
	[ page children notEmpty ]
		whileTrue: [ page removeSnippet: page children last ].
	^ page
]

{ #category : #utility }
GtShortSlideshow >> ensurePageNamed: aPageName [
	| database |
	database := LeDatabasesRegistry default currentLoadedDefaultLogicalDatabase
			databaseNamed: self myLepiterDB.
	(database hasPageNamed: aPageName)
		ifFalse: [ database addPage: (LePage named: aPageName) ].
	^ database pageNamed: aPageName
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

{ #category : #testing }
GtShortSlideshow >> isAbstract [
	^ self == GtShortSlideshow
]

{ #category : #constants }
GtShortSlideshow >> myLepiterDB [
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
