---
title: How to Connect Obsidian iOS with NAS
description: Learn how to add a new remote location to the Obsidian iOS app.
tags: obsidian, nas, ios
type: article
date: 2024-05-08 00:00
---

## Introduction
Obsidian is a powerful tool for organizing notes and supports the Zettelkasten method. By default, the iOS app supports iCloud sync functionality. But what if you want to sync your local vault with your [NAS](https://en.wikipedia.org/wiki/Network-attached_storage)? The Obsidian iOS app doesn't offer this option, but it's possible to set it up with a bit of effort.

## Requirements
You will need the following:

- Obsidian iOS App
- FileBrowser Pro App (paid). I will refer to it as FBP.

## Obsidian Setup
Start by creating a local vault in the Obsidian app on your iPhone. Ensure that "Store in iCloud" is deselected.

<img src="https://www.dropbox.com/scl/fi/i43snyun7zbt5b94arbac/obsidian-create-vault.jpeg?rlkey=1wmppw8tin482qw7nekrmh6mv&st=4jbj972f&raw=1" class="iphone-screenshot" />

## FileBrowser Pro Setup
Open the FBP app, tap on "Add Location" choose "App Folder" and select the local vault folder "NAS" from Obsidian's files directory.

<img src="https://www.dropbox.com/scl/fi/c1qqpep4helxkvub1osdf/fbp-map-obsidian-vault.jpeg?rlkey=cuda43vgi0wqlfoqjyik43dlg&st=awoad4se&raw=1" class="iphone-screenshot" />

Now that the Obsidian vault is mapped to the FBP app, any content added to the vault will sync with the directory in the FBP app.

Next, add a remote location in the FBP app. This can be any of the supported options (e.g. Backblaze, Google Drive, OneDrive). I chose "Network Drive".

<img src="https://www.dropbox.com/scl/fi/6buna0lbz5robabltbiw8/fbp-add-remote-location.jpeg?rlkey=aoq1nnlsspr3r0r0qnw9xacla&st=er0td0m0&raw=1" class="iphone-screenshot" />

## Sync Setup
To sync to and from a remote location, use FBP's custom tasks. Select "Sync Files" from the home screen, then from the bottom left "+" menu, select "Create Custom Task".

In the Custom Task, add the following steps:

- Tap "Use files from a preset folder..." and select the mapped Obsidian location ("Obsidian NAS" in my case)
- Tap on "Insert Step" to add another step
- Change "Including files/folder" to "Copy to" and select your remote location. (NAS in my case)
- Name the custom task "Sync to NAS"

Repeat the same steps, reversing the source and destination, and name it "Sync from NAS".

This setup allows you to:

- Sync the local Obsidian vault to your NAS
- Sync changes from your NAS to the local Obsidian vault

You can define the sync interval or trigger it manually. I use 1-hour interval to sync to the NAS.

## Bonus Tip
To ensure your local vault is always up to date, create an iOS shortcut that first syncs the vault from the NAS and then opens the Obsidian app.

<img src="https://www.dropbox.com/scl/fi/rcacy8tboup2a5b7q99ar/ios-shortcuts-obsidian-sync.jpeg?rlkey=4n1nctvtcok184z550ocd6r8n&st=npagsez5&raw=1" class="content-image" style="width: 60%;" />

This setup allows you to sync Obsidian on iOS with various remote locations supported by the FBP app. I hope this guide is helpful. See you in the next post! 
