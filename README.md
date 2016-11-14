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

## Common tasks

`gulp` the default task runs `gulp watch`
`gulp watch` builds the js and css, starts browerSync and watches for file changes
`gulp build` builds the js and css
`gulp lint` runs eslint

All the tasks' configuration should be done in `gulp/config.js`.

For details on all the tasks please see files under `gulp/tasks`.

## Description of [Gulp](https://github.com/gulpjs/gulp) Plugins

### [browserify](https://github.com/substack/node-browserify)

Browsers do not allow us to use the require method from Node.js.
With browserify, we can implement dependency management on the browser.
It also will bundle the code into one file in an efficient way to not repeat dependencies that are used more than once.

### [browserSync](http://www.browsersync.io/)

When developing and testing the website, browserSync is a powerful tool that will rebuild and refresh the webpage so 
you can see the changes you make as you are working.

### gulp-sass

Sass is a css preprocessor. gulp-sass is a gulp wrapper for the node library of sass. 
Styling should ideally all be done in jsx, but if you need to add **scaffolding** styles please do so under the 
`src/scss` folder.

### [gulp_starter](https://github.com/greypants/gulp-starter)

A useful repository that explains how many of gulp's features work and contains an example project to get familiar with 
it. We use this example to construct our own project.

## Adding ss-material-ui to an existing theme as a new pagetype

Clone this repo as a sub-directory under your existing theme 
(e.g. `/themes/your-theme/ss-material-ui`).

Create a new pagetype under `mysite`, e.g. `MaterialUIPage`, you may want to clear all css and js 
requirements with `Requirements::clear()` if you're extending `Page`.

Rename the root and Layout `Page.ss` template files to match your new pagetype 
(e.g. `MaterialUIPage.ss`) and copy into the respective location.

Update the css and js links in the `Head.ss` and `Tail.ss` partials to include the subdirectory
(e.g. `<script src="{$ThemeDir}/ss-material-ui/dist/App.js"></script>`)

You may want to make further tweaks to `MaterialUIPage.ss` to match your existing theme. 
For example, you may want to omit the `Head.ss` and `Tail.ss` partials and use `Requirements`. 
As long as the app's scripts are loaded in the `Tail.ss` partial the app should run.
