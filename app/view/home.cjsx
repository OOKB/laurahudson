React = require 'react'
Header = require './header'
Main = require './main'
Footer = require './footer'

module.exports = React.createClass
  render: ->
    {data, query} = @props

    <div className="container">
      <Header />
      <Main />
      <Footer />
    </div>
