React = require 'react'
ImageGrid = require './ImageGrid'

module.exports = React.createClass
  render: ->
    {images, title} = @props
    <div className="archive">
      <h1>{title}</h1>
      {Images}
    </div>
