Class {
	#name : #Shorts,
	#superclass : #Object,
	#category : #'GtoolkitShorts-Utility'
}

{ #category : #accessing }
Shorts class >> fileIn: aFilename [
	(self fileOuts / aFilename) fileIn
]

{ #category : #accessing }
Shorts class >> fileOuts [
	"The directory where the fileOuts are stored."

	<gtExample>
	^ FileLocator localDirectory / 'iceberg' / 'feenkcom' / 'gtoolkit-shorts'
		/ 'fileOuts'
]

{ #category : #accessing }
Shorts class >> removeClass: aSymbol [
	[ aSymbol asClass removeFromSystem ] onErrorDo: [  ]
]
