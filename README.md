
Group Project - README Template
===

# compass

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
[Description of your app]

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:**
- **Mobile:**
- **Story:**
- **Market:**
- **Habit:**
- **Scope:**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* User can register a new account
* User can login 
* User can see order history
* User can search for a type of food 
* User can order food 
* User can see lists of fast food
* [fill in your required user stories here]
* ...

**Optional Nice-to-have Stories**

* [fill in your required user stories here]
* ...

### 2. Screen Archetypes
* Login
    * User can login 
* Register - Uaer sing up or logs into their account 
  * User can register a new account
* Stream - User can scroll through important resources in a list
    * User can see lists of fast food
* Detil
    *  User can search for a type of food
    *  User can see order history
* Profil
* [list first screen here]
   * [list associated required story here]
   * ...
* [list second screen here]
   * [list associated required story here]
   * ...

### 3. Navigation
**Tab Navigation** (Tab to Screen)

* Stream
* profile

**Flow Navigation** (Screen to Screen)
* Login
    * Stream
* Register - Uaer sing up or logs into their account 
    * Stream 
* Stream - User can scroll through important resources in a list
    * Detil 
* Detil
    * Stram 
* Profil
    * Detil 
* [list first screen here]
   * [list screen navigation here]
   * ...
* [list second screen here]
   * [list screen navigation here]
   * ...

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups
<img src="https://media.giphy.com/media/Kc2kJAUbxLtKK2Skrj/giphy.gif" width=600>
### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
post
| Property      | Type          | Description  |
| ------------- |:-------------:| -----:|
| object        | String        | uniqued user_id for the post |
| author        | User          |   Image of user (author)     |
| review        | number        |    number of review          |
| orders        | number        |    number of orders          |
....
[Add table of models]
### Networking
List of network requests by screen
* Home Feed screen
    * (Read/Get) Query all posts where user is author 
    
    user.signUpInBackgroundWithBlock {
        (succeeded: Bool, error: NSError?) -> Void in
        if error == nil {
        // Hooray! Let them use the app now.
            } else {
        }
    }
    * (creat/ Post) creat a new review on a post 
    * (Delet) review 
    * (Delet) Cancle order 
* Create Post Screen 
    * (Creat / Post ) Create a new post object 
* Profile Screen 
    * (Read/Get) Query logged in user object
    * (Updata/ POST) Updata user profile image 
