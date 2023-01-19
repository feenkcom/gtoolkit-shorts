Class {
	#name : #SettingUpGithubRepoSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
SettingUpGithubRepoSlideShow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> addingALepiterDatabase: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #addingALepiterDatabase:);
		titleWithFormat: (self asHeader: 'Adding a Lepiter database')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> addingPackages: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #addingPackages:);
		titleWithFormat: (self asHeader: 'Adding source and baseline packages')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> addingProjectMetadata: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #addingProjectMetadata:);
		titleWithFormat: (self asHeader: 'Adding the project metadata')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> automatingTheLoadProcess: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #automatingTheLoadProcess:);
		titleWithFormat: (self asHeader: 'Automating the load process')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> cloningTheRepo: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #cloningTheRepo:);
		titleWithFormat: (self asHeader: 'Cloning the repo in GT')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> closing: aSlide [
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
				fontSize: 48;
				glamorousRegularFont;
				bold)
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> creatingTheGitHubRepo: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #creatingTheGitHubRepo:);
		titleWithFormat: (self asHeader: 'Creating the GitHub repo')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> gitCredentials: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #gitCredentials:);
		titleWithFormat: (self asHeader: 'Setting up the git credentials')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> howToWorkWithGitHub: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #howToWorkWithGitHub:);
		pageNamed: 'How to work with GitHub' from: self gtBook;
		yourself
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> loadingTheRepo: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #loadingTheRepo:);
		titleWithFormat: (self asHeader: 'Loading the repo')
]

{ #category : #constants }
SettingUpGithubRepoSlideShow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		
		gitCredentials:
			sshAdd:
			howToWorkWithGitHub:
		
		creatingTheGitHubRepo:
		cloningTheRepo:
		addingProjectMetadata:
		addingPackages:
		addingALepiterDatabase:
		automatingTheLoadProcess:
		loadingTheRepo:
		
		closing:
	)
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> sshAdd: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #sshAdd:);
		titleWithFormat: (self asBigCode: 'ssh-add ~/.ssh/id_rsa')
]

{ #category : #slides }
SettingUpGithubRepoSlideShow >> titleSlide: aSlide [
	<gtSlide>
	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'How to set up a GT GitHub repo in 7''')
]
