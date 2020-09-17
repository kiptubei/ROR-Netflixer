# ROR-Netflixer

This project is a twitter like social media site that allows fans of the movie streaming site 'Netflix', to meet and leave their opinions on various shows airing on the platform

# Project Specification

1. The user logs in to the app, only by typing the username (a proper authenticated login is **not** a requirement).
2. The user is presented with the homepage (see the _Homepage_ screenshot above) that includes:
   1. Left-side menu (includes only links to pages that are implemented).
   2. _Reviews_ tab in the centre (skip _Photos_ and _Videos_ for this MVP).
   3. Right-side section with *Who to follow (*skip _Trending for_ this MVP).
3. The _Tweets_ section includes:
   1. Simple form for creating a tweet.
   2. List of all tweets (sorted by most recent) that display tweet text and author details.
4. The _Who to follow_ section includes:
   1. List of profiles that are not followed by the logged-in user (ordered by most recently added).
5. When the user opens the profile page (see the _Userpage_ screenshot above), they can see:
   1. Left-side menu (includes only links to pages that are implemented).
   2. Cover picture and _Tweets_ tab in the centre (skip other tabs and _Tweet to user_ form).
   3. Right-side section with _Profile detailed info._
6. The _Profile detailed info_ section includes:
   1. User photo.
   2. Button to follow a user.
   3. Stats: total number of tweets, number of followers and number of following users.
   4. List of people who follow this user.
7. At the end extend your MVP app with one simple feature of your choice.

## Future features

1. Add upvote cunctionality for reviews
2. Restrict users reviews such each review must containa an @ tag to indicate a movie
3. List trending movies based on the @ tag and upvotes in side bar

## Built With

- Ruby v2.7.1
- Ruby on Rails v5.2.4
- Gems used for testing: Capybara, Rspec-Rails, Shoulda-matchers and FactoryBot

## video

(https://www.loom.com/share/d492e192f11545d5b8d2061de9834554)

## Live Demo

[Heroku App Link](https://shrouded-river-43787.herokuapp.com/)

## screenshots

### Login

![screenshot](images/netflixer_login.PNG)

### Sign UP

![screenshot](images/netflixer_signup.PNG)

### Userpage

![screenshot](images/netflixer_homepage.PNG)

## Getting Started

To get a local copy up and running follow these steps:

### Prerequisites

- Ruby: 2.6.5
- Rails: 5.2.4
- Postgres: >=9.5
- Git

### Usage

- Fork/Clone this project to your local machine
- Open folder in your local enviroment and run these lines of code to get started:

Install gems with:

```Ruby
    bundle install
```

Setup database with:

```Ruby
   rails db:create
   rails db:migrate
```

Setup cloudinary:

- Goto `cloudinary.com` setup your account and get your cloudinary credentials.
- Add the credentials to the `config/cloudinary.yml` like this :

```
CLOUDINARY_NAME: "YOUR_CLOUDINARY_NAME"
CLOUDINARY_API_KEY: "YOUR_CLOUDINARY_API_KEY"
CLOUDINARY_API_SECRET: "YOUR_CLOUDINARY_API_SECRET"
```

- Do the same for `initializers/cloudinary.rb`
- Don't forget to add that file to your `config/cloudinary.yml` .gitignore file.
  Start server with:

```Ruby
    rails server
```

Then open a web page and go to [port 3000 on your local machine.](http://localhost:3000)

### Running tests

```Ruby
    rspec
```

### Deployment

The application was deployed on heroku.
To deploy your own copy, you can follow the following [steps:](https://devcenter.heroku.com/articles/git)

## Authors

👤 **Mark James Kiptubei**

- Github: [@kiptubei](https://github.com/kiptubei)
- Twitter: [@mjabei](https://twitter.com/mjabei)
- Linkedin: [Mark James Kiptubei](https://www.linkedin.com/in/mark-james-k-aa875829/)

## 🤝 Contributing

Contributions and feature requests are welcome!

Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development(or master if not available) branch of the original project for a review

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Design idea by Inspired By [Gregoire Vella](https://www.behance.net/gregoirevella).
