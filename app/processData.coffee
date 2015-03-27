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
    data.workIndex = {}
    # Loop through everything in the work folder.
    _.each db.work.contents, (project, i) ->
      {title, filename, section, year, images} = project
      data.workIndex[filename] = i
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
          archiveYears[year] = []
          data.section['archive'].push {
            title: year
            section: 'archive'
            link: year
          }
        if images
          _.each images, (img) ->
            archiveYears[year].push _.pick(img, ['cdn', 'filename', 'rev'])

    if data.section?.archive
      data.section.archive = _.sortBy data.section.archive, 'link'
    data.archiveYears = archiveYears

  return data
