React = require 'react'
{RouteHandler} = require 'react-router'
_ = require 'lodash'

Menu = require './menu'

module.exports = React.createClass

  render: ->
    {pageData, sections, sectionsData} = @props

    SectionMenuEl = (sectionId, i) ->
      <div className="block" key={i} >
        <h2>{_.capitalize(sectionId)}</h2>
        <Menu menu={sectionsData[sectionId]} className={sectionId} />
      </div>

    <main>
      <aside>
        <nav>
          { _.map sections, SectionMenuEl }
        </nav>
      </aside>
      <section>
        { React.createElement(RouteHandler, pageData) }
      </section>
    </main>
