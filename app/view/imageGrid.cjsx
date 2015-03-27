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
  prev: ->
    return
  close: ->
    return
  next: ->
    return
  render: ->
    {id, filename} = @props
    imgUrl = "http://ezle.imgix.net/#{id}?w=1200"
    <div className="img-detail">
      <button className="left" onClick={@prev} role="button"> Previous </button>
      <a href="#" role="button" onClick={@close}>
        <img className="large" src={imgUrl} alt={filename} />
      </a>
      <button className="left" onClick={@next} role="button"> Previous </button>
    </div>

module.exports = React.createClass
  contextTypes: {
    router: React.PropTypes.func.isRequired
  }
  render: ->
    {images} = @props
    {i} = @context.router.getCurrentQuery()
    i = parseInt(i)

    ImageEl = (image, index) ->
      {id, filename, rev} = image
      if i is index
        Detail = <ImageDetail id={id} filename={filename} i={i} />
      <li className="image" key={rev} >
        <Image id={id} filename={filename} i={index} />
        {Detail}
      </li>

    <ul className="image-grid">
      { _.map images, ImageEl }
    </ul>
