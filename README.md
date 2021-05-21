# FITNESS APP

## Table of Contents
1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)
5. [Build Pregress Gif's](#Progress)

## Overview
### Description
This is a fitness App that user can use to track their workouts and progress in the gym. The app would also give user multiple workouts to try out based on their BMI.

### App Evaluation
[Evaluation of your app across the following attributes]
- Category: Health & Fitness
-Mobile: Primarily a mobile app iPhone users
-Story: Helps users with workouts and fitness
-Market: Anyone can choose to use the app and would find it helpful
-Habit:The app could be used daily or depending on users fitness level
-Scope: First we would help user with basic fitness needs. Later, we can add finding training partners, groups, and food tracking. 

## Product Spec

### 1. User Stories (Required and Optional)

#### Required Must-have Stories**

- [X] User can login to see their progress and also Logout
- [X] tab Bar for different screens
- [X] Add motivational quote
- [X] motivational Images
- [X] shows Date and Time
- [X] Workouts Screen
- [] User chooses the type of workouts
- [ ] Profile screen setup

#### Optional Nice-to-have Stories**

- [ ] Meal prep ideas
- [ ] Random workout selection
- [ ] Connecting to other users

### 2. Screen Archetypes

#### Login Screen
- [X] user signs up
- [X] user login & signin
#### Home
- [X] motivational quotes 
- [X] motivational images
- [X] Date and Time
#### Profile
- [ ] Daily workout calories 
- [ ] Muscle worked out
#### Workout
- [ ] Types of workouts: Weight Training or High Intensity Workouts
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home
* Workouts
* Profile

**Flow Navigation** (Screen to Screen)

* Forced Log-in 
    *  Account creation if no log in is available
* Workout Selection 
   * choose the type of workouts
* Profile 
   * change settings
   * calculate BMI


## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="wireframe.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
## Models

### Post 
|   Property       | Type           |   Description        |
| -----------------|----------------|----------------------| 
|ObjectID          |String          |Unique id for each user post |
|Author 	|pointer to the user |	Users information |
|Image	|File	|Profile picture 
|Progression	|Number 	|Number of workouts done in a week |
|TimeSpend 	|DateTime	|Amount of time spend on a workout|
|Selection	|Array 	|Which workout was done throughout the week| 


### Networking
List of network requests by screen

* SignIn/SignUp
  * (Create/POST) Create a new user account.
    ```Swift
    let query = PFQuery(className:"Post")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Read/GET) Query the user information.
    ```Swift
    let query = PFQuery(className:"Get")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```

* Home Screen
  * (Create/POST) Create a new like on the quote.
    ```Swift
    let query = PFQuery(className:"Post")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Delete/DELETE) Delete an existing like.
    ```Swift
    let query = PFQuery(className:"Delete")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Read/GET) Read a users last workout date.
    ```Swift
    let query = PFQuery(className:"Get")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```

* Workout
  * (Create/POST) Make a new workout selection.
    ```Swift
    let query = PFQuery(className:"Post")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Delete/DELETE) Unselect a workout choice.
    ```Swift
    let query = PFQuery(className:"Delete")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Update/PUT) Time spent for a workout.
    ```Swift
    let query = PFQuery(className:"Put")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Update/PUT) Muscles workout out.
    ```Swift
    let query = PFQuery(className:"Put")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```

* Profile
  * (Read/Get) Query logged in user object.
    ```Swift
    let query = PFQuery(className:"Get")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Update/PUT) Update user profile image.
    ```Swift
    let query = PFQuery(className:"Put")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Update/PUT) Get current day workout progress.
    ```Swift
    let query = PFQuery(className:"Put")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
  * (Read/GET) Get last workout details.
    ```Swift
    let query = PFQuery(className:"Get")
    query.whereKey("author", equalTo: currentUser)
    query.order(byDescending: "createdAt")
    query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
       if let error = error {
          print(error.localizedDescription)
       } else if let posts = posts {
          print("Successfully retrieved \(posts.count) posts.")
          // TODO: Do something with posts...
       }
    }
    ```
    # Progress
    ### Home Screen, Workout:
    ![](unit12.gif)
    ### Final App
    ![](final.gif)
    
    
    
    
    
