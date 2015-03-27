_ = require 'lodash'

module.exports = (data) ->
  data.currentYear = new Date().getFullYear()
  {db} = data
  # Get an array of items that should go in the Work menu.
  unless db
    db = data.db = {}

  data.section = {}
  data.sections = []
  archiveYears = {}

  if db.work?.contents
    # Loop through everything in the work folder.
    _.each db.work.contents, (project) ->
      {title, filename, section, year} = project
      # If there is a section defined place it into the section menu.
      if section
        unless data.section[section]
          # Create section menu array.
          data.section[section] = []
          # Add section id to secions array.
          data.sections.push section
        # Add item to section menu.
        data.section[section].push {
          title: title
          section: section
          link: filename
        }
      # Build archive indexBy years.
      if year
        unless data.section['archive']
          data.section.archive = []
          data.sections.push 'archive'
        unless archiveYears[year]
          archiveYears[year] = true
          data.section['archive'].push {
            title: year
            section: 'archive'
            link: year
          }
    if data.section?.archive
      data.section.archive = _.sortBy data.section.archive, 'link'
  return data
