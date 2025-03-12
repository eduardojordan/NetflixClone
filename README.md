#📺 NetflixClone

NetflixClone is an iOS application developed in Swift 5 that allows users to explore popular movies and TV shows, perform searches, and download content for offline viewing. It uses the TheMovieDB and YouTube APIs to fetch data and play trailers.

##📸 Screenshots

<p align="center">
  <img src="https://github.com/eduardojordan/NetflixClone/blob/master/1.png?raw=true" width="200" hspace="10"/>
  <img src="https://github.com/eduardojordan/NetflixClone/blob/master/2.png?raw=true" width="200" hspace="10"/>
  <img src="https://github.com/eduardojordan/NetflixClone/blob/master/3.png?raw=true" width="200" hspace="10"/>
  <img src="https://github.com/eduardojordan/NetflixClone/blob/master/4.png?raw=true" width="200" hspace="10"/>
  <img src="https://github.com/eduardojordan/NetflixClone/blob/master/5.png?raw=true" width="200" hspace="10"/>
  <img src="https://github.com/eduardojordan/NetflixClone/blob/master/6.png?raw=true" width="200" hspace="10"/>
</p>


A placeholder image is included below:

🚀 Features

📌 Browse trending movies and TV shows

🔍 Advanced search to quickly find content

📥 Download content and store it locally using Core Data

🎥 Play trailers using the YouTube API

🌟 Modern and smooth UI, without Storyboards or XIBs

⚡ Optimized image loading with SDWebImage

##🏗 Architecture

The project follows the MVC (Model-View-Controller) pattern for better separation of concerns and scalability. Extensions are used to improve code modularity, and no Storyboard or XIBs were used, ensuring a fully code-driven approach to the user interface. Only the UIKit framework was utilized for the development of the user interface, and CoreData is used to handle data persistence

##🔧 Technologies & Tools

Swift 5

Xcode 16

iOS 18

Swift Package Manager (SPM) → SDWebImage for efficient image loading

TheMovieDB API → Movie and TV show data

YouTube API → Trailer playback

Core Data → Persistence management for downloads

##📋 Requirements

iOS 18 or later

Xcode 16

TheMovieDB API Key

YouTube API Key

##📦 Installation

Clone this repository:

git clone https://github.com/your-username/NetflixClone.git

Open the project in Xcode 16


Replace API_KEY in the appropriate files with your TheMovieDB and YouTube API keys

Run the app on a simulator or real device

##🔑 API Configuration

To use this project, you need API keys:

TheMovieDB API: Get your key here

YouTube API: Get your key here

Add these keys to the appropriate configuration files.

##📜 Usage

Open the app and explore trending movies and TV shows

Use the search bar to find your favorite content

Download content for offline viewing

Watch trailers directly within the app

🔮 Future Enhancements

✅ Add user authentication

✅ Implement watchlist feature

✅ Improve UI animations

✅ Support for multiple languages

✅ Implement MVVM architecture for better scalability

✅ Add unit testing to improve code reliability

✅ Transition UI to SwiftUI for a modern interface

##🤝 Contribution

If you’d like to contribute, feel free to fork the project and submit a pull request with your improvements. All contributions are welcome!

##🙌 Acknowledgments

TheMovieDB for providing movie and TV show data.

YouTube API for enabling trailer playback.

SDWebImage for efficient image caching.

##📄 License

This project is licensed under the MIT License. See the LICENSE file for more details.

💡 If you like this project, give it a ⭐ on GitHub!
