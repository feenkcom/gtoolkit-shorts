"
I am an abstract class holding utility methods for slideshows.
"
Class {
	#name : #GtShortSlideShow,
	#superclass : #PrioritySlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
GtShortSlideShow class >> <> aSymbol [
	^ self show: aSymbol
]

{ #category : #utility }
GtShortSlideShow >> ensureEmptyClass: aClassSymbol inPackage: aPackageSymbol [
	Object
		subclass: aClassSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: aPackageSymbol.
	self removeAllMethods: aClassSymbol
]

{ #category : #utility }
GtShortSlideShow >> fileIn: aFilename [
	(self fileOuts / aFilename) fileIn
]

{ #category : #constants }
GtShortSlideShow >> fileOuts [
	"The directory where the fileOuts are stored."

	<gtExample>
	^ FileLocator localDirectory / 'iceberg' / 'feenkcom' / 'gtoolkit-shorts'
		/ 'fileOuts'
]

{ #category : #testing }
GtShortSlideShow >> isAbstract [
	^ self == GtShortSlideShow
]

{ #category : #constants }
GtShortSlideShow >> myLepiterDB [
	^ 'feenkcom/gtoolkit-shorts/lepiter'
]

{ #category : #constants }
GtShortSlideShow >> picturesDirectoryPath [
	^ Path * 'feenkcom' / 'gtoolkit-shorts' / 'doc'
]

{ #category : #utility }
GtShortSlideShow >> removeAllMethods: aClassSymbol [
	[ aClassSymbol asClass selectors
		do: [ :each | aClassSymbol asClass removeSelector: each ] ] onErrorDo: [  ]
]

{ #category : #utility }
GtShortSlideShow >> removeClass: aClassSymbol [
	[ aClassSymbol asClass removeFromSystem ] onErrorDo: [  ]
]
