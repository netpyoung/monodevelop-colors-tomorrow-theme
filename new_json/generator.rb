require 'mustache'

# require.
# gem install mustache

# ref.
# https://github.com/chriskempson/tomorrow-theme
# https://github.com/mono/monodevelop/blob/master/main/src/core/Mono.Texteditor/Mono.TextEditor.Highlighting/ColorScheme.cs



TEMPLATE_FNAME = 'template.mustache'

base = {
  :version => '1.0.0',
  :description => 'https://github.com/chriskempson/tomorrow-theme',
  :originator => 'netpyoung',

  :color_searchresult => "#4A440C",
  :color_searchresult_main => "#9A440C"
}

tomorrow_night = {
  :name         => 'TomorrowNight',
  :color_background   => '#1d1f21',
  :color_current_line => '#282a2e',
  :color_selection    => '#373b41',
  :color_foreground   => '#c5c8c6',
  :color_comment      => '#969896',
  :color_red          => '#cc6666',
  :color_orange       => '#de935f',
  :color_yellow       => '#f0c674',
  :color_green        => '#b5bd68',
  :color_aqua         => '#8abeb7',
  :color_blue         => '#81a2be',
  :color_purple       => '#b294bb'
}

tomorrow_night_bright = {
  :name         => 'TomorrowNightBright',
  :color_background   => '#000000',
  :color_current_line => '#2a2a2a',
  :color_selection    => '#424242',
  :color_foreground   => '#eaeaea',
  :color_comment      => '#969896',
  :color_red          => '#d54e53',
  :color_orange       => '#e78c45',
  :color_yellow       => '#e7c547',
  :color_green        => '#b9ca4a',
  :color_aqua         => '#70c0b1',
  :color_blue         => '#7aa6da',
  :color_purple       => '#c397d8'
}


template = File.read(TEMPLATE_FNAME)
themes = [tomorrow_night, tomorrow_night_bright]

themes.each do |theme|
  fname = "#{theme[:name]}.json"
  File.write(fname, Mustache.render(template, base.merge(theme)))
end
puts 'DONE'
