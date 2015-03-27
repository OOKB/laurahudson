React = require 'react'
{RouteHandler} = require 'react-router'

module.exports = React.createClass
  render: ->
    {pageData} = @props

    <main>
      <aside>
        <nav>
          <ul>
            <h2>Work</h2>
            <li><a href="#">TK</a></li>
            <li><a href="#">TK</a></li>
            <li><a href="#">TK</a></li>
          </ul>
          <ul>
            <h2>Archive</h2>
            <li><a href="#">2015</a></li>
            <li><a href="#">2014</a></li>
            <li><a href="#">2013</a></li>
            <li><a href="#">2012</a></li>
            <li><a href="#">2011</a></li>
            <li><a href="#">2010</a></li>
          </ul>
        </nav>
      </aside>
      <section>
        { React.createElement(RouteHandler, pageData) }
      </section>
    </main>
