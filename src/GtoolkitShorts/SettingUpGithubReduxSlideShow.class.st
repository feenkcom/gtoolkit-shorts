Class {
	#name : #SettingUpGithubReduxSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #GtoolkitShorts
}

{ #category : #slides }
SettingUpGithubReduxSlideShow >> addingALepiterDatabase: aSlide [
	<gtSlide>
	<text:
'We''d like to have a Lepiter database associated to our repo so we can document our project.

In the git tool we open the header, and add a new database folder.

We call the new database “lepiter”. After creating the folder, don''t forget to click on the checkmark to add it as a database.

We can now add pages to the new Lepiter database. We just add an empty page for now.

The pages will be automatically added to the repo, but make sure that the changes are synced to the file system before committing.

Note that as long as the status is “Pending”, the page only exists in the image, but not on the file system.

Now that the page has synced, we can commit the changes to our Lepiter database to the repo.

We''ll add a class-side method to the Baseline class to automate the loading of the new Lepiter database.

Note especially that this is a class method, not an instance method, so we don''t need to create an instance of BaselineOfGtStuff to evaluate it.

This is mostly boilerplate code. The only thing to change is the path to the folder containing the Lepiter database to be loaded.

This code will find the Lepiter folder in our cloned repo and add it to the registry of Lepiter databases.

We commit this method as well.'>

	^ aSlide title
		priority: (self priorityFor: #addingALepiterDatabase:);
		titleWithFormat: (self asHeader: 'Adding a Lepiter database')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> addingPackages: aSlide [
	<gtSlide>
	<text:
'Since we''ll need a place to store our code, let''s create a package with a dummy class that we can replace later.

We open the Coder and create a new class called “Dummy” in the new “GtStuff” package.

We can now create a baseline for our repo. This will allow us to script the loading of the repo and selected packages in future.

We edit the baseline method to specify just the dependency on the GtStuff package. If we need to, we can later add other packages.

We add the two new packages to our repo ...

And we commit the changes with a suitable commit message.'>

	^ aSlide title
		priority: (self priorityFor: #addingPackages:);
		titleWithFormat: (self asHeader: 'Adding source and baseline packages')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> addingProjectMetadata: aSlide [
	<gtSlide>
	<text:
'Now we will turn the GitHub repo into an Iceberg project repo.

We click on the “Repair” button and add a folder for all the source code, typically called “src”.

We select the src folder add the project metadata to it.

Finally, we commit, adding a suitable commit comment ...

but we won''t push yet.'>

	^ aSlide title
		priority: (self priorityFor: #addingProjectMetadata:);
		titleWithFormat: (self asHeader: 'Adding the project metadata')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> automatingTheLoadProcess: aSlide [
	<gtSlide>
	<text:
'We now would like to automate the process of loading the project packages and the Lepiter database.

At last we''ll push our changes to the remote repository.

Let''s remove the repository from our image and from the file system so that we can test the load scripts.

We can now add the boilerplate load scripts to the README page of our GitHub repository.

This first script automates the cloning of the repository with the help of Metacello, the package management system for Pharo.

It will clone our GitHub repo and add it to the Iceberg registry of loaded repos.

The second one will add the cloned Lepiter database to our GT Lepiter registry.

We commit these changes to the README so we can easily find them.'>

	^ aSlide title
		priority: (self priorityFor: #automatingTheLoadProcess:);
		titleWithFormat: (self asHeader: 'Automating the load process')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> cloningTheRepo: aSlide [
	<gtSlide>
	<text:
'Next we clone the repo in GT using the SSH protocol.

We open the git tool in GT and clone the repo using the copied SHH URL.'>

	^ aSlide title
		priority: (self priorityFor: #cloningTheRepo:);
		titleWithFormat: (self asHeader: 'Cloning the repo in GT')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> closing: aSlide [
	<gtSlide>
	<text:
'You''ll find more GT in 7'' videos on our YouTube channel, or you can explore GT by downloading it from gtoolkit.com.

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
SettingUpGithubReduxSlideShow >> creatingTheGitHubRepo: aSlide [
	<gtSlide>
	<text:
'# Creating the GitHub repo

Next we create a repo on GitHub.

Here we create the gt-stuff repo and initialize it with a README.

We commit the README, and copy the SHH link.'>

	^ aSlide title
		priority: (self priorityFor: #creatingTheGitHubRepo:);
		titleWithFormat: (self asHeader: 'Creating the GitHub repo')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> downloadGt: aSlide [
	<gtSlide>
	<text:
'# Download GT

The first thing to do is to download Glamorous Toolkit for your platform and start it up.

Then you should open the page “How to configure GitHub SSH key authentication” in the GT Book.'>
	^ aSlide lepiterPage
		priority: (self priorityFor: #downloadGt:);
		startPage: (self db pageNamed: 'Download and start GT')
]

{ #category : #initialization }
SettingUpGithubReduxSlideShow >> downloadGtPage [
	<gtExample>
	^ (LePage named: 'Download and start GT')
		addSnippet: (LeTextSnippet new
				string: 'Start by downloading GT for your platform from [](https://gtoolkit.com).';
				yourself);
		yourself
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> gitCredentials: aSlide [
	<gtSlide>
	<text:
'# Set up git credentials

I''ll assume that you already have a GitHub account and have added an SSH key to that account.*

If not, you should first create a GitHub account and read the GitHub page about “Adding a new SSH key to your GitHub account”.'>

	^ aSlide title
		priority: (self priorityFor: #gitCredentials:);
		titleWithFormat: (self asHeader: 'Setting up the git credentials')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> howToWorkWithGitHub: aSlide [
	<gtSlide>
	<text:
'# Configuring git within GT

You can also configure the ssh credentials directly within GT.

Scroll down in the same GT book page to section 3b: “Configuring  Glamorous Toolkit with the SSH key to GitHub.”

The script informs Iceberg, the library that handles the interaction with git, of your GitHub credentials.

Just modify the script to use your ssh credentials, for example `id_rsa.pub` and `id_rsa`.'>

	^ aSlide lepiterPage
		priority: (self priorityFor: #howToWorkWithGitHub:);
		pageNamed: 'How to configure GitHub SSH key authentication' from: self gtBookName;
		yourself
]

{ #category : #initialization }
SettingUpGithubReduxSlideShow >> initializeDb [
	db := nil.
	self db addPage: self downloadGtPage.
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> loadingTheRepo: aSlide [
	<gtSlide>
	<text:
'Now we can use the metacello script to load our repo.

We copy-paste the scripts to a Playground and run them one after the other.

We also run the loadLepiter script to load the Lepiter database from the cloned repo into our image.

If we go  to the git tool and refresh it, we see that the repo is now back.

Similarly, the Lepiter tool shows that our Lepiter database is back again.'>

	^ aSlide title
		priority: (self priorityFor: #loadingTheRepo:);
		titleWithFormat: (self asHeader: 'Loading the repo')
]

{ #category : #constants }
SettingUpGithubReduxSlideShow >> slidePriorities [
	<gtExample>
	<noTest>
	
	^ #( 
		titleSlide:
		
		downloadGt:
		
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
SettingUpGithubReduxSlideShow >> sshAdd: aSlide [
	<gtSlide>
	<text:
'# Informing GT of your git credentials

Before you can can use git within GT, you have to inform it of your git credentials. On Unix platforms, like the Mac, you should run this command before starting GT. (Or add it to your login script.)'>

	^ aSlide title
		priority: (self priorityFor: #sshAdd:);
		titleWithFormat: (self asBigCode: 'ssh-add ~/.ssh/id_rsa')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> titleSlide: aSlide [
	<gtSlide>
	<text: 
'# How to set up a GT GitHub repo in 7''

Hello. My name is Oscar Nierstrasz.

Today I''d like to show you how to set up a GitHub repository to manage your Glamorous Toolkit code and Lepiter pages.'>

	^ aSlide title
		priority: (self priorityFor: #titleSlide:);
		titleWithFormat: (self asTitle: 'How to set up a GT GitHub repo in 7''')
]
