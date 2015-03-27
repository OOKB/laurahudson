React = require 'react'
{RouteHandler} = require 'react-router'
_ = require 'lodash'

Menu = require './menu'

module.exports = React.createClass

  render: ->
    {images} = @props

    ImageEl = (image, i) ->
      {cdn, filename, rev} = image
      <div className="item" key={rev} >
        <img src={cdn+'?size=l'} alt={filename} />
      </div>

    <ul className="image-grid">
      { _.map images, ImageEl }
    </ul>
