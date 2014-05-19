# Slides extension for Refinery CMS.

Yes, sliders are evil. However, they remain quite common, and this
is a simple RefineryCMS extension to add user-friendly slider management.

## Installation

    # Gemfile:
    gem 'refinerycms-slides', :github => 'tortus/refinerycms-slides', :branch => '2-0-stable'

    $ bundle install
    $ rails generate refinery:slides
    $ rake db:migrate
    $ rake db:seed

## Usage

There aren't any partials or helpers to learn, since every slider is different.
Typically you will want to do something like this on the template with the slider:

```ruby
::Refinery::Slides::Slide.active.by_position.each do |slide|
  # Generate html for each slide.
end
```

Slides have the following columns, for use in whatever way seems best:

* title (string)
* link (string)
* image (refinery image)
* content (text)
* hidden (boolean)

## Nivo Slider

Assets for the popular Nivo Slider are included. To use:

    application.js:
    //= require jquery.nivo.slider

    application.css:
    *= require nivo-slider.css
