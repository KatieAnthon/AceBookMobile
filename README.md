# SwiftUI Project

We created a new SwiftUI app that integrates with
[this Acebook backend](https://github.com/makersacademy/Mobile-Acebook-backend).


## Key Features 

- Developed multi-view SwiftUI applications.
- Integrated a SwiftUI app with an existing backend using RESTful APIs.
- Implemented advanced SwiftUI components like List views, sheets, Alerts and even
  custom `structs` to enhance the user interface.
- Managed complex states using SwiftUI annotations such as @State and @Binding
  (for data binding and state management).
- Write tests in Xcode that mock network calls to ensure robustness in the
  frontend / backend integration.

## Prerequisites to run the code:

These are the prerequisites you need to be aware of in order to work through
this module:

1. You must have Xcode installed on your machine.

## High-level architecture

**MVC without the C**: In this pattern, the Model and View are the primary
   actors. SwiftUI takes on the role of the Controller, managing state and
   handling user interactions.

And this one uses MVC without the C:

```mermaid
graph TD;
    A[View: SignUpView] -->|User Input| B[Model: User]
    A -->|State Management| C[SwiftUI]
    C -->|Update| A
```

### Figma mockups
![Screenshot 2024-04-01 at 18 38 12](https://github.com/KatieAnthon/AceBookMobile/assets/94082001/f7f52be2-58d3-4483-b9df-f392d60726de)


