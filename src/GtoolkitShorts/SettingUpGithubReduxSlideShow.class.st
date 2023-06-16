Class {
	#name : #SettingUpGithubReduxSlideShow,
	#superclass : #GtShortSlideshow,
	#category : #GtoolkitShorts
}

{ #category : #slides }
SettingUpGithubReduxSlideShow >> addingCode: aSlide [
	<gtSlide>
	<text:
'# Adding code

Our  repo has been initialized, but it contains no code and no documentation, so let''s add something.

We start by creating a new Lepiter page in our new, empty database.

*(Go to Lepiter and add a page “Hello world” to the last db.)*

We add a code snippet for a class that doesn''t yet exist.

*(Add this snippet:)*
```
HelloWorld new hello
```

We use the “fixit” tool to create the `HelloWorld` class, specifying that it should be created in out `GtStuff` package.

We click on the checkmark to create the class.

The class now exists, but it needs a `hello` method, so we use the “fixit” tool again.

We implement the method, save it with the checkmark.

Finally we can evaluate and “Inspect” the result to verify the answer.

Of course now we want to commit our changes.

We can do this from the Git tool, but a quicker path is to open the `HelloWorld` class directly in the snippet, and click on “Go to repository.”

There we can see the new Lepiter page, the new class and its “hello” method.

*(Inspect each of these.)*

Finally we commit, 

and don''t forget to push!
'>

	^ aSlide title
		priority: (self priorityFor: #addingCode:);
		titleWithFormat: (self asHeader: 'Adding code')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> addingProjectMetadata: aSlide [
	<gtSlide>
	<text:
'# Adding the project metadata

Now we will turn the GitHub repo into an Iceberg project repo.

First we set up the metadata and the source directory.

*(Click on “Create a source directory”.)*

The source directory is traditionally called “src”.

Next we create an initial package and a baseline to automate loading of dependencies.

*(Click on “Create a package and/or baseline”.)*

The name of the package is automatically derived from the project name.

If we now look at the `README` file we see that a load script has been added.

The last step is to add a dedicated Lepiter database to our project where we can document our progress and provide documentation.

*(Click on “Create Lepiter directory.)*

Finally we commit our changes and push them to the repo.
(Don''t forget to push!)

*(Go to the Changes view, commit and push.)*.

We can verify that the changes have indeed been pushed.

*(Go to [](https://github.com/onierstrasz/gt-stuff) and see the changes.)*'>

	^ aSlide title
		priority: (self priorityFor: #addingProjectMetadata:);
		titleWithFormat: (self asHeader: 'Adding the project metadata')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> cloningTheRepo: aSlide [
	<gtSlide>
	<text:
'# Cloning the repo in GT

Next we clone the repo in GT using the SSH protocol.

We open the git tool in GT and clone the repo using the copied SSH URL.

*(Do this in the downloaded image.)*'>

	^ aSlide title
		priority: (self priorityFor: #cloningTheRepo:);
		titleWithFormat: (self asHeader: 'Cloning the repo in GT')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> closing: aSlide [
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
SettingUpGithubReduxSlideShow >> creatingTheGitHubRepo: aSlide [
	<gtSlide>
	<text:
'# Creating the GitHub repo

Next we create a repo on GitHub.

Here we create the gt-stuff repo and initialize it with a README.

*(Go to [](https://github.com) and do it.)*

We commit the README, and copy the SSH link.'>

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

*(Open [](https://gtoolkit.com), download GT and run it.)*

*(Switch to full screen mode and run the Zoom script.)*

Then you should open the page “How to configure GitHub SSH key authentication” in the GT Book.

*(Open the page in the downloaded image.)*'>
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
		addSnippet: (LeTextSnippet new
				string: 'Then go to {{gtPage:How to configure GitHub SSH key authentication|db=2j9m7db2i4oz116bexd7wbdxo}}. ';
				yourself);
		yourself
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> gitCredentials: aSlide [
	<gtSlide>
	<text:
'# Set up git credentials

I''ll assume that you already have a GitHub account and have added an SSH key to that account.

If not, you should first create a GitHub account and read the GitHub page about [“Adding a new SSH key to your GitHub account”](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

*(Open it in your web browser.)*'>

	^ aSlide title
		priority: (self priorityFor: #gitCredentials:);
		titleWithFormat: (self asHeader: 'Setting up the git credentials')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> howToWorkWithGitHub: aSlide [
	<gtSlide>
	<text:
'# Configuring git within GT

Alternatively you can configure the ssh credentials directly within GT.

First have a look in your `.ssh` folder to check the names of your private and public keys files. 

*(Inspect the `FileLocator home / ''.ssh''` snippet in the GT book page.)*

In my case here they are `id_rsa.pub` and `id_rsa`.

Then scroll down in the same GT book page to section **“3b. Configuring  Glamorous Toolkit with the SSH key to GitHub”**.

The script informs Iceberg, the library that handles the interaction with git, of your GitHub credentials.

It''s a good idea to copy the script to your private Lepiter database, so it''s available the next time you need it.

*(Copy the script to a new page and call it “Telling GT about my SSH keys.”)*

Just modify the script to use your ssh credentials, for example `id_rsa.pub` and `id_rsa`.

*(Modify the script, run it, and check the result back on the GT Book page.)*'>

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
'# Loading the repo

Now let''s verify that we can load our project back into a fresh image.

We''ll quit this image without saving, and download a fresh one from [](https://gtoolkit.com).

We verify that no git repos are loaded, and as Lepiter databases we only have the GT book and our own private Lepiter database loaded.

We open the Lepiter page that tells GT about our SSH credentials.

*(Search in Spotter and open “Telling GT about my SSH keys.”)*

We evaluate the script.

Now we add the load scripts from the README of our GitHub repo.

*(Copy them from [](https://github.com/onierstrasz/gt-stuff) and paste them into code snippets.)*

We evaluate or inspect the two snippets, and now we can see that our code is back.

*(Open the Git tool, and then the Lepiter tool.)*

*(Inspect the `HelloWorld new hello` snippet as before.)*'>

	^ aSlide title
		priority: (self priorityFor: #loadingTheRepo:);
		titleWithFormat: (self asHeader: 'Loading the repo')
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> settingUpAHomeSection: aSlide [
	<gtSlide>
	<text:
'# Setting up a Home section

Since that took us less than 7 minutes, let''s have a quick look at how you can add a card for your project to GT''s Home section.

First go the GT Book page called “How to set up a Home Section”, which explains the steps.

You need to add an extension method to the `GtHome` class that looks like this:

*(Add a method like this:)*

```
gtStuffSection
	<gtHomeSection>
	^ GtHomeStartPageSection new 
		title: ''Hello world!'';
		description: ''Experimenting with GT ...'';
		databaseName: ''onierstrasz/gt-stuff/lepiter'';
		startPageName: ''Hello world!'';
		priority: 8
```

Since it''s an extension method, it needs to be assigned to in your `GtStuff` package.

Just change the method category to `*GtStuff` (or whatever your package is called).

Now if we go to the home section, we will see a card that takes us straight to our Hello world page.

*(Go there, hover over the card to show the description, and then click on the card to go to the Hello world page.)*

Don''t forget to commit and push the extension method.

*(Go to the `HelloWorld` class in the snippet, go to the repo and push the changes.)*'>

	^ aSlide title
		priority: (self priorityFor: #settingUpAHomeSection:);
		titleWithFormat: (self asHeader: 'Setting up a Home section')
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

		addingCode:
		loadingTheRepo:
		
		settingUpAHomeSection:
		
		closing:
	)
]

{ #category : #slides }
SettingUpGithubReduxSlideShow >> sshAdd: aSlide [
	<gtSlide>
	<text:
'# Informing GT of your git credentials

Before you can can use git within GT, you have to inform it of your git credentials.

On Unix platforms, like the Mac, you should run this command before starting GT.

(Or add it to your login script.)'>

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
