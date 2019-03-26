# Swift ABI Compatibility Matrix

link
[Xcode old version download](https://developer.apple.com/download/more/#)

# matrix

Row is xcode(swift) version for application build.
Column is swift version for framework build. 


|  Xcode     | swift version | 3.1 | 4.0 | 4.0.2 | 4.0.3 | 4.1 | 4.1.2 | 4.2 | 4.2.1 | 5.0 |
|------------|---------------|-----|-----|-------|-------|-----|-------|-----|-------|-----|
| Xcode8.3.3 | 3.1           | OK  | NG  |  NG   |  NG   | NG  |  NG   | NG  |  NG   | NG  |
| Xcode9.0   | 4.0           | NG  | OK  |  NG   |  NG   | NG  |  NG   | NG  |  NG   | NG  |
| Xcode9.0.1 | 4.0           | NG  | OK  |  NG   |  NG   | NG  |  NG   | NG  |  NG   | NG  |
| Xcode9.1   | 4.0.2         | NG  | NG  |  OK   |  OK   | NG  |  NG   | NG  |  NG   | NG  |
| Xcode9.2   | 4.0.3         | NG  | NG  |  OK   |  OK   | NG  |  NG   | NG  |  NG   | NG  |
| Xcode9.3   | 4.1           | NG  | NG  |  NG   |  NG   | OK  |  OK   | NG  |  NG   | NG  |
| Xcode9.3.1 | 4.1           | NG  | NG  |  NG   |  NG   | OK  |  OK   | NG  |  NG   | NG  |
| Xcode9.4   | 4.1.2         | NG  | NG  |  NG   |  NG   | OK  |  OK   | NG  |  NG   | NG  |
| Xcode9.4.1 | 4.1.2         | NG  | NG  |  NG   |  NG   | OK  |  OK   | NG  |  NG   | NG  |
| Xcode10.0  | 4.2           | NG  | NG  |  NG   |  NG   | NG  |  NG   | OK  |  OK   | NG  |
| Xcode10.1  | 4.2.1         | NG  | NG  |  NG   |  NG   | NG  |  NG   | OK  |  OK   | NG  |
| Xcode10.2  | 5.0           | NG  | NG  |  NG   |  NG   | NG  |  NG   | NG  |  NG   | OK  |


# Swift versions in Xcode bundle

```
~/Applications/Xcode_8.3.3.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 3.1 (swiftlang-802.0.53 clang-802.0.42)
Target: x86_64-apple-macosx10.9
```

```
> ~/Applications/Xcode_9.0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.0 (swiftlang-900.0.65 clang-900.0.37)
Target: x86_64-apple-macosx10.9
```

```
> ~/Applications/Xcode.9.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.0 (swiftlang-900.0.65.2 clang-900.0.37)
Target: x86_64-apple-macosx10.9
```

```
> ~/Applications/Xcode.9.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.0.2 (swiftlang-900.0.69.2 clang-900.0.38)
Target: x86_64-apple-macosx10.9
```

```
> ~/Applications/Xcode.9.2.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.0.3 (swiftlang-900.0.74.1 clang-900.0.39.2)
Target: x86_64-apple-macosx10.9
```

```
> ~/Applications/Xcode.9.3.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.1 (swiftlang-902.0.48 clang-902.0.37.1)
Target: x86_64-apple-darwin17.7.0
```

```
> ~/Applications/Xcode.9.3.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.1 (swiftlang-902.0.48 clang-902.0.37.1)
Target: x86_64-apple-darwin17.7.0
```

```
> ~/Applications/Xcode.9.4.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.1.2 (swiftlang-902.0.54 clang-902.0.39.2)
Target: x86_64-apple-darwin17.7.0
```

```
> ~/Applications/Xcode.9.4.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.1.2 (swiftlang-902.0.54 clang-902.0.39.2)
Target: x86_64-apple-darwin17.7.0
```

```
> ~/Applications/Xcode.10.0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.2 (swiftlang-1000.11.37.1 clang-1000.11.45.1)
Target: x86_64-apple-darwin17.7.0
```

```
> ~/Applications/Xcode.10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 4.2.1 (swiftlang-1000.11.42 clang-1000.11.45.1)
Target: x86_64-apple-darwin18.0.0
```

```
> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc --version
Apple Swift version 5.0 (swiftlang-1001.0.69.5 clang-1001.0.46.3)
Target: x86_64-apple-darwin18.2.0
```
