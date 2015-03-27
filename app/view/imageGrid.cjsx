React = require 'react'
{RouteHandler} = require 'react-router'
_ = require 'lodash'

Menu = require './menu'

module.exports = React.createClass

  render: ->
    {images} = @props

    ImageEl = (image, i) ->
      {id, filename, rev} = image
      imgUrl = "http://ezle.imgix.net/#{id}?w=300&h=300&fit=crop"
      <li className="item" key={rev} >
        <img src={imgUrl} alt={filename} />
      </li>

    <ul className="image-grid">
      { _.map images, ImageEl }
    </ul>
