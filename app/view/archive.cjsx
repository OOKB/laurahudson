React = require 'react'

module.exports = React.createClass
  render: ->
    {content, images, title} = @props
    <div className="work">
      <h1>{title}</h1>
      <div className="content" dangerouslySetInnerHTML={ __html: content }/>
    </div>
