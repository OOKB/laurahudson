React = require 'react'
_ = require 'lodash'

SlideShow = require './slideshow'

module.exports = React.createClass
  render: ->
    {content, title, images, imageSettings, dir} = @props
    if images
      if imageSettings
        {slideDuration, width, display} = imageSettings
      unless slideDuration
        slideDuration = 3500
      SlideShowEl =
        <SlideShow
          images={images}
          slideDuration={3500}
          baseDir={dir}
          width={width}
        />

    <div className="page">
      { if title then <h1>{title}</h1> }
      { SlideShowEl }
      { if content
          <div className="content" dangerouslySetInnerHTML={ __html: content }/>
      }
    </div>
