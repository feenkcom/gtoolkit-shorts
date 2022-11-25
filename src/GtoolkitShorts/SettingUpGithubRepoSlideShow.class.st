Class {
	#name : #SettingUpGithubRepoSlideShow,
	#superclass : #GtShortSlideShow,
	#category : #'GtoolkitShorts-Slideshows'
}

{ #category : #utility }
SettingUpGithubRepoSlideShow class >> show [
	"Implement this here just so we can run it directly from the Coder."
	super show
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
				fontSize: 40;
				glamorousRegularFont;
				bold)
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

{ #category : #constants }
SettingUpGithubRepoSlideShow >> slidePriorities [
	"Instead of manually setting priorities, just list the slides in order here."
	<gtExample>
	
	^ #( 
		titleSlide:
		
		gitCredentials:
			sshAdd:
			howToWorkWithGitHub:

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
		titleWithFormat: (self asTitle: 'How to set up a GT github repo in 7''')
]
