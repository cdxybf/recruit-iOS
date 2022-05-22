## An iOS simple application implemented with Swift 5.0

1. The repo implements a sample list table view with 1000 transactions record from a remote json file and a details view
2. The repo includes unit tests.

## Time consumption

1. From 8:05am in the morning to 12:50pm, totally 4 hours and 45 minutes.
2. Spent 30 minutes at around 10am to warm milk for my baby, feed her and change nappy.

## Run the project

1. Simply clone or download this repository, open /ASBInterviewExercise.xcodeproj file with Xcode (better latest version).
2. Waiting for Xcode to index/process all files and dependencies (with SPM), this might take up to a few minutes.
3. Run it with iOS simulator

## Design highlights

1. Based on MVVM pattern
2. Inversion of control/Dependency injection 
3. Decorator pattern to avoid direct dependency on third-party libraries
4. RxSwift/RxCocoa to drive the app (this is not decorated due to its complexity)
5. Each view/viewModel/model/service is indepdendent and testable by injecting mock objects
6. Xcconfig to store virables relying on environment

## File organization

- Protocols -- Defines contracts for services
- Services -- Services abstracts out general business rules, it is like the entity layer of "clean architecture", services are compeletely independent and they can be injected and used by different viewModels.
- Model -- Defines data models
- ViewModels -- ViewModels that handle the UI flows and data presenting
- Views -- The UI layer including Storyboard, UIViewController, UIView, UIColor, Wrappers of third-party controls and Extensions of those.

## Third-party libraries

1. Alamofire - Rest apis consumption
2. HTTPStatusCodes - enumerate http status code with higher readability
3. RxSwift - Binding viewModel with view
4. Swinject - Ioc container
5. SwinjectStoryboard - Ioc container helper/tool
6. Cuckoo - Mocking objects for dependencies and unit test

## TBD
1. Considering rest api requests cancellation
2. UI tests, spent sometime to investigate EarlGrey previously but unable to integrate as the documentation is a bit out of date to support Swift
