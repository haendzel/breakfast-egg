# breakfast-egg

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
