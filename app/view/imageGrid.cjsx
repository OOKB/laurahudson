React = require 'react'
{Link} = require 'react-router'
_ = require 'lodash'

Menu = require './menu'

Image = React.createClass
  contextTypes: {
    router: React.PropTypes.func.isRequired
  }
  render: ->
    {id, filename, i} = @props
    imgUrl = "http://ezle.imgix.net/#{id}?w=300&h=300&fit=crop"
    path = @context.router.getCurrentPathname()
    <Link to={path} query={i:i} role="button">
      <img className="small" src={imgUrl} alt={filename} />
    </Link>

ImageDetail = React.createClass
  contextTypes: {
    router: React.PropTypes.func.isRequired
  }
  render: ->
    {id, filename, maxIndex, i} = @props
    imgUrl = "http://ezle.imgix.net/#{id}?w=1200"
    nextIndex = if i is maxIndex then 0 else i+1
    prevIndex = if i is 0 then maxIndex else i-1
    path = @context.router.getCurrentPathname()

    <div className="img-detail">
      <Link className="left" to={path} query={i:prevIndex} role="button"> Previous </Link>
      <a href="#" role="button" onClick={@close}>
        <img className="large" src={imgUrl} alt={filename} />
      </a>
      <Link className="right" to={path} query={i:nextIndex} role="button"> Next </Link>
    </div>

module.exports = React.createClass
  contextTypes: {
    router: React.PropTypes.func.isRequired
  }
  render: ->
    {images} = @props
    {i} = @context.router.getCurrentQuery()
    i = parseInt(i)
    maxIndex = images.length - 1
    ImageEl = (image, index) ->
      {id, filename, rev} = image
      if i is index
        Detail = <ImageDetail id={id} filename={filename} i={i} maxIndex={maxIndex} />
      <li className="image" key={rev} >
        <Image id={id} filename={filename} i={index} />
        {Detail}
      </li>

    <ul className="image-grid">
      { _.map images, ImageEl }
    </ul>
