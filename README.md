# Original App Design Project - README Template
===

# FASHIONDR

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
A social media application that matches people with similar fashion tastes based on brand choices and allows them to interact

### App Evaluation

- **Category:** Photo and Video / Social
- **Mobile:** Uses camera, uses audio
- **Story:** Enables users share views on fashion items and discuss fashion tastes. Users may also share videos and images of latest fashion trends
- **Market:** People with interest in fashion and sharing their opinion would find this app helpful. Additionally, the grouping function of the app allows even casual fashion-lovers follow particular brands even though they aren't deeply invested in fashion.
- **Habit:** Multiple group chats and constant updates on newest fashion items available make the app easily habit-forming especially to the target market
- **Scope:** The basic version of the app is still a very pursuable idea for an application since having constant updates and discussions on the growing fashion world is a marketeable idea. In the long-run, as with other social media applications, it will evolve to encompass many more features.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create a new account
* [x] User can login
* User can choose brands they are interested in
* User can chat with followers and in associated fashion brand groups
* User can view chats and groups they are currently part of
* User can log out

**Optional Nice-to-have Stories**

* User can follow/unfollow another user
* User can post stories FashStories (Fashiondr's version of stories) for 24 hours
* User can like and interact with pictures sent in groups
* User can design fashion items in the app and share with their followers and groups
* User can search for trending fashion topics and items
* User can view other users' profiles

### 2. Screen Archetypes

* Login screen
   * User can log in
* Registration screen
   * User can create a new account
* Brand screen
   * User can choose brands they are interested in
* Home screen
   * User can view chats and groups they are currently part of
* Chat screen
   * User can chat with followers and in associated fashion brand groups

### 3. Navigation

**Tab Navigation** (Tab to Screen)



**Flow Navigation** (Screen to Screen)

* Login screen
   * Home screen
   * Registration screen
* Registration screen
   * Brand screen
* Brand screen
   * Home screen
* Home screen
   * Brand screen
   * Chat screen
* Chat screen
   * Home screen
 

## Wireframes


<img src="https://i.imgur.com/7FIpTZC.jpg" width=600>


### [BONUS] Digital Wireframes & Mockups

## Interactive Prototype
### Current Progress (Sprint 1)
<img src="https://i.imgur.com/W5RtOkB.gif" width=600>


### Current Progress (sprint 2)
<img src="https://i.imgur.com/45P9UEp.gif" width=600>

## Schema 
** Objects**
    *Users
    *Posts
    *Comments
    *Likes
    *Dislikes
    *Follows
    *Joins
### Models

|Property|Type   |Description
|--------|------|-----------|
|objectId|String|Unique id for the user post|
|author  |Pointer to User|Image author|
|image|File| Image that user posts|
|caption|String|Image caption by author|
|commentsCount|Number|Number of comments on an image|
|likesCount|Number|Number of likes for the post|
|DislikesCount|Number|Number of dislikes for the post|
|CreatedAt|DateTime|Date when the post is created|
|updatedAt|DateTime|Date when post is last updated|


### Networking
-Home Feed Screen
 i. (Read/GET)Query all posts where user is author
 ii. (Create/POST)Create a new like on a post
 iii. (Create/POST)Create a new comment on a post
 iv. (Delete)Delete existing comment
 v. (Delete)Delete existing like
-Create Post Screen
 i. (Create/POST)Create a new post object
-Profile Screen
 i. (Read/GET)Query logged in user object
 ii. (Update/PUT) user profile image
-Message Screen
 i. (Read/GET)Get other Users
 ii. (Create/POST)Send Message
 iii. (Create/POST)Join Group
- Create basic snippets for each Parse network request
Retrieving Objects
let query = PFQuery(className:"GameScore")
query.getObjectInBackground(withId: "xWMyZEGZ") { (gameScore, error) in
    if error == nil {
        // Success!
    } else {
        // Fail!
    }
}
Deleting Objects
PFObject.deleteAll(inBackground: objectArray) { (succeeded, error) in
    if (succeeded) {
        // The array of objects was successfully deleted.
    } else {
        // There was an error. Check the errors localizedDescription.
    }
}
Create Objects
let myPost = PFObject(className:"Post")
myPost["title"] = "I'm Hungry"
myPost["content"] = "Where should we go for lunch?"

// Create the comment
let myComment = PFObject(className:"Comment")
myComment["content"] = "Let's do Sushirrito."

// Add a relation between the Post and Comment
myComment["post"] = myPost

// This will save both myPost and myComment
myComment.saveInBackground()
- [OPTIONAL: List endpoints if using existing API such as Yelp]
