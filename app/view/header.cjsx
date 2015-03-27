React = require 'react'
Menu = require './menu'

module.exports = React.createClass
  render: ->
    {primaryMenu} = @props

    <header>
      <h1>Laura Hudson</h1>
      <nav>
        <Menu menu={primaryMenu} />
      </nav>
    </header>
