# swift-boilerplate

## Motivation
 
Setup base project for ios(swift) development by following best practices. Aim to reuse in various projects. The purpose using the boilerplate is to avoid redundant effort setup project from scratch. This configuration is still in progress.

## What's included

- [x] Auto-correct code format using SwiftLint
- [x] Resource management using R.swift
- [x] Dev/Staging/Production configurations
- [x] File structure with MVC pattern
- [x] Condigure FontAwesome
- [ ] distribute app by Fastlane

## How to use

1. Click "Use this template" or download the repo
1. Open the project with editor like VSCode or Sublime text. Replace keyword "SwiftBoilterplate" with your project name
1. Rename folder/file name (*1)
1. Go to root directory. Install package by the command `pod install`
1. Open `{YOUR-PROJECT-NAME}.xcworkspace`. Then build project (command + b). It will generate R.swift resorse file.
1. Run project (command + r)

(*1)

```
/SwiftBoilterplate -> /{YOUR-PROJECT-NAME}
/SwiftBoilterplateTests/SwiftBoilterplateTests.swift -> /{YOUR-PROJECT-NAME}Tests/{YOUR-PROJECT-NAME}Tests.swift
/SwiftBoilterplateUITests/SwiftBoilterplateUITests.swift -> /{YOUR-PROJECT-NAME}UITests/{YOUR-PROJECT-NAME}UITests.swift
```

