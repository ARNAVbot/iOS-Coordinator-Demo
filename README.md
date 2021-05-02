# iOS-Coordinator-Demo

This project basically tells how and why to use the coordinator pattern in iOS. 


For reference , go to this video -> https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps
Even after doing this , things might not work. The navigation controller might not be still added. For that, we need to delete "Application Scene Manifest" property needs to be deleted from Info.plist file too. 


For that refer to this -> https://stackoverflow.com/questions/58084127/ios-13-swift-set-application-root-view-controller-programmatically-does-not. 

It will start working post that.


To understand how child coordinator works, go to branch child_coordinator.
Here, we have added child coordinator (BuyCoordinator) to our parent coordinator (MainCoordinator). MainCoordinator adds child coordinator when buySubscription method is called in it. It is imp to note that when back is pressed, it is the responsibility of child coordinator to remove itself from the parent and this is done in the method childDidFinish in MainCoordintor -> which is called by child when removing self.

