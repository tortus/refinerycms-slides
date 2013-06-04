# Slides extension for Refinery CMS.

Yes, sliders are evil. However, they remain quite common, and this
is a simple RefineryCMS extension to add user-friendly slider management.

## Installation

    # Gemfile:
    gem 'refinerycms-slides', :github => 'tortus/refinerycms-slides'

    $ bundle install
    $ rake db:migrate
    $ rake db:seed

## Usage

Includes Nivo Slider, but can be used with most slider scripts. Typically you will
want to do something like this on the template with the slider:

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
