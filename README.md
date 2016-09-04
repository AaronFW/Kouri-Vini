# Kouri-Vini (built on Archagon's Tasty Imitation Keyboard)

I am currently developing a keyboard and hosting app for the Kouri-Vini Community (aka Louisianan Creole, ISO-639 lou). This keyboard is build upon Archagon's Tasty-imitation-keyboard and incorporates the improvements and modifcations made by PolishedCode.
The keyboard was created to allow Kouri-Vini speakers to have a language specific keyboard. In recent years, the Kouri-Vini community developed a new orthography that fit their language better. As a result, it has become important to have a keyboard and other means of using the orthography. The language uses a large number of accented characters and I feel that Apple's mechanism for typing accented characters is (1) counter-intuitive to typing, and (2) the 'long-press' action is distruptive to steady typing. As a result, the second page of characters has the accented vowels needed for Kouri-Vini.
I am posting it on Github for the hope that others might use this code to create keyboard support for other minority languages. If you wish to contact me or learn about the current state of the Kouri-Vini Keyboard Project, check out www.keyboardsupport.wordpress.com

<<<<<<< Updated upstream
At the current state, the keyboard works well on iPhones and for iPads, it is basically a giant iPhone keyboard. Perhaps as I learn I will be able to continue to conform it to be an iPad keyboard.
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> parent of 423a598... Update README.md
This keyboard is currently optimized for iPhone. iPad should work, but it'll look like a giant iPhone keyboard.
>>>>>>> Stashed changes

Additionally, if you want to contribute to this project, feel free to do so. I am only able to work on this project slowly in my spare time and would always appreciate improvements and suggestions from others.

## Note:
NOTE: If you want to see what the keyboard is capable of, check out the project version by PolishedCode https://github.com/polishedcode/tasty-imitation-keyboard or the original by Archagon https://github.com/archagon/tasty-imitation-keyboard . In those projects, the hosting-app is created for the purpose of allowing users to see the keyboard's capabilities.
The Kouri-Vini Hosting app has three main purposes (1) to instruct users on how to enable the keyboard (2) allow for access to a 'chatroom' like atmostphere (yet to be completed) and (3) access to Kouri-Vini language resources.
The 'chatroom' will likely rely on Firebase, but I have yet to create it.

<<<<<<< Updated upstream
I have removed some features from PolishedCode's project to fit my needs and the needs of my audience. I have not yet removed the undesired code, but it has been left non-functioning. I also hope to revise the names of some functions to be conformed to the current project.
=======
## Fantastic Features
<<<<<<< HEAD
=======
At the current state, the keyboard works well on iPhones. However, the landscape ipad orientation is not currently correct.
>>>>>>> parent of fe32844... Update README.md
=======
>>>>>>> parent of 423a598... Update README.md

* No bitmaps! Everything is rendered using CoreGraphics.
* Dynamic layouts! All the keys are laid out programmatically, meaning that the keyboard is much easier to extend and will automatically work on devices of all sizes.
* Auto-capitalization, period shortcut, keyboard clicks.
* An extensible settings screen.
* Dark mode and solid color mode.
* This keyboard is an iOS8 extension.

## Current State

We are in alpha! The basic features and appearance should all be there by now. I'll try to not commit broken builds anymore.

Good news! [I now have an app in the App Store that's built on top of this keyboard](http://translit-keyboard.archagon.net), so we know that it can pass the App Store review process.

Hold-to-select-alternate-characters will be implemented at a later time.

## Build Instructions

1. Edit Scheme for the Keyboard target and set the Executable to be HostingApp.app.
2. Run the Keyboard target.
3. Go to `Settings → General → Keyboard → Keyboards → Add New Keyboard` on your device and add the third-party keyboard.
4. Go back to the app. You should be able to select the keyboard via the globe icon.

## Learning Goals

* Swift
* 3rd party extensions
* 3rd party frameworks (for IB use)
* Autolayout
* CoreGraphics
* finally release an app on the App Store, darn it

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> parent of 423a598... Update README.md
## Other Stuff

Please consult [the project wiki](https://github.com/archagon/tasty-imitation-keyboard/wiki) for technical details. You may find it handy if you're implementing your own keyboard!

I made a 3rd party functionless keyboard with a similar layout but a much simpler program structure for debugging purposes. You can find it here: [faux-testing-keyboard](https://github.com/archagon/faux-testing-keyboard)

🙀 **Please forgive the *incredibly confusing* code in some of the classes. I started out trying to be all neat and perfect, but a self-imposed deadline for a personal project forced me to barge forward closer to release. And you know how that goes...** 🙀
<<<<<<< HEAD
=======
## Recent Screenshots and information regading the Hosting App
NOTE: If you want to see what the keyboard is capable of, check out the project version by PolishedCode https://github.com/polishedcode/tasty-imitation-keyboard or the original by Archagon https://github.com/archagon/tasty-imitation-keyboard


## Purpose
The keyboard was created basically to allow Kouri-Vini speakers have a language specific keyboard. I am posting it on Github for the hope that others might use this code to create keyboard support for other minority languages. If you wish to contact me or learn about the current state of the Kouri-Vini Keyboard Project, check out www.keyboardsupport.wordpress.com
>>>>>>> parent of fe32844... Update README.md
=======
>>>>>>> parent of 423a598... Update README.md

Finally, keep in mind that I am not a framework maintainer nor intend to become one. This release is public and open source because I have no reason to keep it private, not because I wish to improve it for years on end (though I still may). Expect work on this project to be sporadic at best. If you wish to use this in production, rather than waiting on me, I strongly encourage you to fork.
>>>>>>> Stashed changes

## License

This project is licensed by Archagon under the 3-clause ("New") BSD license. Credit also goes to PolishedCode and other Github members who have contributed. I also want to credit Apple for making a great keyboard to be reverse-engineered; so they too get a large bit of credit.
