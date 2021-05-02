# iOS-Coordinator-Demo

For reference , go to this video -> https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps
Even after doing this , things might not work. The navigation controller might not be still added. For that, we need to delete "Application Scene Manifest" property needs to be deleted from Info.plist file too. 
For that refer to this -> https://stackoverflow.com/questions/58084127/ios-13-swift-set-application-root-view-controller-programmatically-does-not
It will start working post that.
