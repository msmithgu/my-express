app = require('../src/app')
port = 3003
base_url = 'http://localhost:'+port+'/'
app.listen port

Browser = require('zombie')
should = require('should')

describe 'zomboid server', () ->
  it '"/hi" should respond with "hi"', (done)->
    browser = new Browser()
    browser.visit base_url + 'hi', ()->
      browser.success.should.be.ok
      browser.body.innerHTML.should.equal "hi"
      done()
  it '"/stylesheets/style.css" should serve', (done)->
    browser = new Browser()
    browser.visit base_url + 'stylesheets/style.css', ()->
      browser.success.should.be.ok
      done()
