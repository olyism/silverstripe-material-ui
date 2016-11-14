SilverStripe + Material UI
==========================

This is a boilerplate [SilverStripe](http://www.silverstripe.org) theme for projects using [Material-UI](http://callemall.github.io/material-ui/).

## Requirements

1. SilverStripe installed and set up on your local environment
2. [Node](https://nodejs.org)
3. [NPM](https://www.npmjs.com)

## Installation

Clone this repo into your themes folder.

Traverse into your theme folder and install dependencies with `npm install`
(or [`yarn install`](https://yarnpkg.com/) for ultra fast install)

Then, enter your local server domain name in your [browserSync](http://www.browsersync.io/) config,
which is in the `gulp/config.js` file, `browserSync.proxy` (change `project.vagrant`).

Now you can run your local server:
```sh
npm start
```

## Description of [Gulp](https://github.com/gulpjs/gulp) Plugins

### [browserify](https://github.com/substack/node-browserify)

Browsers do not allow us to use the require method from Node.js.
With browserify, we can implement dependency management on the browser.
It also will bundle the code into one file in an efficient way to not repeat dependencies that are used more than once.

### [browserSync](http://www.browsersync.io/)

When developing and testing the website, browserSync is a powerful tool that will rebuild and refresh the webpage so you can see the changes you make as you are working.

### [gulp_starter](https://github.com/greypants/gulp-starter)

A useful repository that explains how many of gulp's features work and contains an example project to get familiar with it. We use this example to construct our own project.
