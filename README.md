<h1>
    <img src="https://raw.githubusercontent.com/aplr/Mime/main/Logo.png" height="23" />
    Mime
</h1>

![Build](https://github.com/aplr/Mime/workflows/Build/badge.svg?branch=main)
![Documentation](https://github.com/aplr/Mime/workflows/Documentation/badge.svg)

The Mime package provides you with a simple interface for parsing urls and file extensions to their appropriate mime types.

## Installation

Mime is available via the [Swift Package Manager](https://swift.org/package-manager/) which is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system and automates the process of downloading, compiling, and linking dependencies.

Once you have your Swift package set up, adding Mime as a dependency is as easy as adding it to the dependencies value of your Package.swift.

```swift
dependencies: [
    .package(
        url: "https://github.com/aplr/Mime.git",
        .upToNextMajor(from: "1.0.0")
    )
]
```

## Usage

```swift
import Mime

let url = URL(string: "file:///tmp/vienna.png")!

guard let mime = Mime(url: url) else { return }

print(mime.mime) // image/png
print(mime.ext)  // png
```

## Documentation

Documentation is available [here](https://mime.aplr.io) and provides a comprehensive documentation of the library's public interface.

## License
Mime is licensed under the [MIT License](https://github.com/aplr/Mime/blob/main/LICENSE).
