Class {
	#name : #BaselineOfGtoolkitShorts,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtoolkitShorts
}

{ #category : #accessing }
BaselineOfGtoolkitShorts class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'feenkcom' / 'gtoolkit-shorts' / 'lepiter'.
	LeDatabasesRegistry default defaultLogicalDatabase reload
]

{ #category : #accessing }
BaselineOfGtoolkitShorts >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec package: 'GtoolkitShorts'.
			"spec package: 'RPNCalculator'" ]
]
