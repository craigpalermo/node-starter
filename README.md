NodeJS Starter
========
This project uses NodeJS, ExpressJS, and Jade for easy templating to quickly create static sites.

## Tech Used
I don't like HTML, CSS, or JavaScript, so I don't use them. I encourage you
to do the same.

This project is already set up to serve Jade, Stylus, and CoffeeScript, so
as you make changes to those files, they'll automatically be reflected as
soon as you refresh the page.

## Getting Set Up
Run these commands to get things set up:

```
> sudo apt-get install nodejs npm
> sudo ln -s /usr/bin/nodejs /usr/bin/node
> sudo npm install
> sudo npm install -g grunt-cli coffee-script bower bower-installer
> sudo grunt build
> bower install && bower-installer
```

## Start Your Server
At this point, you should be able to run

```
> coffee server.coffee
```

If you don't see any output in the terminal, that means the server is probably
running. Point a web browser to http://localhost:3000 and you should see words.
