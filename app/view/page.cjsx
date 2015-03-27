React = require 'react'

module.exports = React.createClass
  render: ->
    {content} = @props

    <div className="content" dangerouslySetInnerHTML={ __html: content }/>
