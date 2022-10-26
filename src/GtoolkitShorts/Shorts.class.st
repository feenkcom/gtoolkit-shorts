Class {
	#name : #Shorts,
	#superclass : #Object,
	#category : #'GtoolkitShorts-Utility'
}

{ #category : #accessing }
Shorts class >> fileIn: aFilename [
	(self new fileOuts / aFilename) fileIn
]

{ #category : #accessing }
Shorts >> fileOuts [
	"The directory where the fileOuts are stored."

	<gtExample>
	^ FileLocator localDirectory / 'iceberg' / 'feenkcom' / 'gtoolkit-shorts'
		/ 'fileOuts'
]
