React = require 'react'
{Link} = require 'react-router'
_ = require 'lodash'

MenuItem = React.createClass
  render: ->
    {link, title} = @props
    if link and link.slice(0, 4) is 'http'
      # Make normal link
      linkEl = <a href={link}>{title}</a>
    else
      # Make router link.
      linkEl = <Link to="page" params={pageId: link}>{title}</Link>

    <li>
      {linkEl}
    </li>

module.exports = React.createClass
  render: ->
    {menu, className} = @props

    MenuItemEl = (item, i) ->
      <MenuItem key={i} link={item.link} title={item.title} />

    <ul className={className or "menu"}>
      { _.map menu, MenuItemEl }
    </ul>
