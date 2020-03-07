![platform](https://img.shields.io/badge/platform-iOS-green.svg)
![swift](https://img.shields.io/badge/swift-5.2-orange.svg)
![xcode](https://img.shields.io/badge/xcode-11.3.1-blue.svg)

# breakfast-egg

My first steps in iOS native development with Swift language. 
Simple app for cook eggs.

| Technology, language and frameworks |
|-------------------|
| Swift 5.2 |
| UIKit |
| Foundation |
| Xcode |


### Code example

```
@IBAction func eggButton(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        switch (hardness) {
          case "Soft":
            seconds = eggTimes["Soft"]
            break;
         case "Medium":
            seconds = eggTimes["Medium"]
            break;
        case "Hard":
            seconds = eggTimes["Hard"]
          default:
            print("Fatal Error")
            break;
        }
        runTimer()
    }
```
