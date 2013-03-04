# Compass Configuration

# require 'modular-scale'
# add_import_path '../stylesheets'
require 'sassy-math'

# HTTP paths
http_path             = '/'
http_stylesheets_path = '/stylesheets'
http_images_path      = '/images'
http_javascripts_path = '/javascripts'

# File system locations
sass_dir              = 'sass'
css_dir               = 'public/stylesheets'
images_dir            = 'public/images'
javascripts_dir       = 'public/javascripts'

# Set to true for easier debugging
line_comments         = false
preferred_syntax      = :sass

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = :expanded

# Determine whether Compass asset helper functions generate relative
# or absolute paths
relative_assets       = true



# Modular Scale Sass Script
module Sass::Script::Functions
  # Modular Scale
  def double_octave
    value = 4 / 1.0
    Sass::Script::Number.new(value)
  end
  def major_twelfth
    value = 3 / 1.0
    Sass::Script::Number.new(value)
  end
  def major_eleventh
    value = 8 / 3.0
    Sass::Script::Number.new(value)
  end
  def major_tenth
    value = 5 / 2.0
    Sass::Script::Number.new(value)
  end
  def octave
    value = 2 / 1.0
    Sass::Script::Number.new(value)
  end
  def major_seventh
    value = 15 / 8.0
    Sass::Script::Number.new(value)
  end
  def minor_seventh
    value = 16 /9.0
    Sass::Script::Number.new(value)
  end
  def major_sixth
    value = 5 / 3.0
    Sass::Script::Number.new(value)
  end
  def minor_sixth
    value = 8 / 5.0
    Sass::Script::Number.new(value)
  end
  def fifth
    value = 3 / 2.0
    Sass::Script::Number.new(value)
  end
  def augmented_fourth
    value = Math.sqrt(2) / 1.0
    Sass::Script::Number.new(value)
  end
  def fourth
    value = 4 / 3.0
    Sass::Script::Number.new(value)
  end
  def major_third
    value = 5 / 4.0
    Sass::Script::Number.new(value)
  end
  def minor_third
    value = 6 / 5.0
    Sass::Script::Number.new(value)
  end
  def major_second
    value = 9 / 8.0
    Sass::Script::Number.new(value)
  end
  def minor_second
    value = 16 / 15.0
    Sass::Script::Number.new(value)
  end

  # Modular Scale
  def ms_calc(number, ratio, base)
    number = number.value.to_f
    ratio = ratio.value.to_f
    base = base.value.to_f
    result = (ratio ** number) * base
    Sass::Script::Number.new(result)
  end

  # puts [2, 4, 6]

  # power($ratio, $multiple) * $base-size
  # puts((2.5**4)*16)
  # puts((2.5**3)*16)
  # puts((2.5**2)*16)
  # puts((2.5**1)*16)
  # puts((2.5**0)*16)
  # puts((2.5**-1)*16)
  # puts((2.5**-2)*16)
  # puts((2.5**-3)*16)
end
