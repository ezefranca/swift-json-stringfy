# swift-json-stringfy 
[![Swift Version][swift-image]][swift-url][![Swift Version][swift-image4]][swift-url]
> the simplest way to print a human readable json string in Swift

## Requirements

- Xcode 8.0+

## Installation

#### Manually
1. Download and drop [```JSONStringfy.swift```](https://github.com/ezefranca/swift-json-stringfy/blob/master/very-simple-json-stringfy/JsonStringFy/JsonStringfy.swift) in your project to your project / target.  
2. Congratulations!  

## Usage example

```swift
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let dict = JsonStringfy.loadJSONFile(fileName: "Example") else {
            return
        }
        JsonStringfy.prettyPrint(dict)
        textView.text = JsonStringfy.prettyString(dict)
    }
}

```

## Output

![](https://raw.githubusercontent.com/ezefranca/swift-json-stringfy/master/print.png?token=ADerUPI6YJ7EJCgW6k696YQXI1mSfNXqks5aOnaRwA%3D%3D)

## Contribute

We would love for you to contribute, check the ``LICENSE`` file for more info.

## Meta

Distributed under the MIT license. See ``LICENSE`` for more information.

[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-image4]:https://img.shields.io/badge/swift-4.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com

