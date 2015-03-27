React = require 'react'

module.exports = React.createClass
  render: ->
    {data, query} = @props

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
        WHERE THE WORKS AND PAGE CONTENTS, ETC GO!
      </section>
    </main>
