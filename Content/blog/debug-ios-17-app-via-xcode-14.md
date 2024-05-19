---
title: How to Compile and Debug iOS Apps with Different Xcode Versions
description: Learn how to compile and debug iOS apps using different Xcode versions. This guide helps you prepare an IPA file and install it on your device, even if your library doesn't support the latest Swift compiler.
tags: xcode, ios, programming
type: quickTip
date: 2023-04-29 00:00
---
## Introduction

Sometimes it is necessary to compile an app with a specific version of Xcode because a library might not support the latest Swift compiler from Xcode 15. Additionally, you may find that you don't have any iOS 16 devices, which are compatible with Xcode 14. So, what do you do?

## Solution 
The solution is not so great but it works. Below you will find the required process.

### iPA Preparation
- Navigate to the menu "Product/Archive" 
- Start the archive process
- On the presented Organizer window select "Distribute App"  
- Select method "Developer" 
- Export the archive into a folder of your choice

### Device Installation
- Open Xcode 15
- Connect your iOS 17 device
- Open "Window / Devices and Simulators" menu option
- Drag and drop the ipa into your device

### Debugging
Since we don't run the app directly through Xcode we would have to do the following to be able to debug:
- Start your app on the phone 
- Select on Xcode "Debug / Attach to Process" 

If everything goes well you will see that you can hit breakpoints and debug your app as normal.
