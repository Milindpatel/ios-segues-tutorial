# iOS segues tutorial (SwappingScreen)

A three-screen UIKit app that shows how to move between view controllers with storyboard segues and pass data along the way.

1. **LoginVC**: a button triggers a storyboard segue to the music list.
2. **MusicListVC**: calls `performSegue(withIdentifier: "SongVC", sender: "Jai Ho")` and hands the song title to the next screen in `prepare(for:sender:)`. Its back button dismisses the screen.
3. **PlaySongVC**: shows the song it was given in `selectedSong`.

## Running

Open `SwappingScreen/SwappingScreen.xcodeproj` in Xcode and run it on an iOS 15+ simulator or device. The project uses Swift 5.

CI builds the app for the iOS Simulator on every push.
