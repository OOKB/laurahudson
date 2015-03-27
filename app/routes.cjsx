React = require 'react'
{Route, DefaultRoute} = require 'react-router'

Index = require './view/index'
Page = require './view/page'

module.exports =

  <Route name="app" path="/" handler={Index}>
    <Route name="page" path=":pageId" handler={Page} />
  </Route>
