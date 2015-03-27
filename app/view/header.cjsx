React = require 'react'

module.exports = React.createClass
  render: ->
    {data, query} = @props

    <header>
      <h1>Laura Hudson</h1>
      <nav>
        <ul>
          <li><a href="#">Statement</a></li>
          <li><a href="#">Bio</a></li>
          <li><a href="#">Résumé</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </nav>
    </header>
