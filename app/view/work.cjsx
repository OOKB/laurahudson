React = require 'react'

module.exports = React.createClass
  render: ->
    {content, images, title} = @props
    if content
      ContentEl = <div className="content" dangerouslySetInnerHTML={ __html: content }/>
    <div className="work">
      <h1>{title}</h1>
      {ContentEl}
    </div>
