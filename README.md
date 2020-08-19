# NoPopToRootForWatchOS

This sample project shows two bugs.

Bug #1: 
Using NavigationLink inside a NavigationView doesn't show the back button. When not using NavigationView, the back button does display.


Bug #2 (FB8452933): 
When more than 2 screens deep into a navigation stack, there is no way to programmatically pop to the root view. Even passing a binding of the root view's NavigationLink doesn't work, as toggling it only appears to pop back by one screen.

1. Run the sample project
2. tap the "Push Me" button (land on a second screen titled "Detail")
3. tap the "Push to 3rd Screen" (land on a third screen without a title)
4. tap the "Try Pop to Root" button

Observe how it only takes us back to the second screen titled "Detail".
