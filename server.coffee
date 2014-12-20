# module dependencies
express = require('express')
jade = require('jade')
stylus = require('stylus')
nib = require('nib')
coffee = require('express-coffee')

# function to compile stylus
compile = (str, path) ->
  return stylus(str).set('filename', path).use(nib())

# set up express app
app = module.exports = express()

# set up directory paths
app.set('views', __dirname + '/views')
app.set('view engine', 'jade')

# stylus middleware
app.use(stylus.middleware(
  src: __dirname + '/public'
  compile: compile
))

# coffeescript middleware
app.use(coffee(
  path: __dirname + '/public'
  uglify: false
))

app.use(express.static(__dirname + '/public'))

# Begin routes -------------------------------------

# landing page
landing = (req, res) ->
  res.render('landing', {title: "Home"})

# Routes
app.get('/', landing)

# End routes -------------------------------------

# listen server on port 3000
app.listen(process.env.PORT || 3000)
