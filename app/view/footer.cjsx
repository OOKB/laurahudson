React = require 'react'

module.exports = React.createClass
  render: ->
    {startYear, currentYear, title, author} = @props
    if startYear
      startYear += '–'
    else
      startYear = ''
    txt = "All works © #{startYear}#{currentYear} #{author or title}"
    <footer>
      <p>{txt}</p>
    </footer>
