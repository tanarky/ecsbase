require 'sinatra'
require "sinatra/reloader"

module Template
    HTML =<<-EOS
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>Clock</title>
  <link href='https://fonts.googleapis.com/css?family=$font-family$' rel='stylesheet' type='text/css'>
</head>
<body>
  <div style="font-size:64px;font-family: '$font-family$', sans-serif;">$font-family$<br>
    $time$<br>
    env name: $env$<br>
  </div>
</body>
</html>
  EOS

    WEB_FONTS = %w(Roboto Lato Oswald Slabo Lora Montserrat Raleway Merriweather Arimo Bitter)
end

configure do
  set :env_name, 'root'
end

configure :production do
  set :env_name, 'production'
end

configure :development do
  register Sinatra::Reloader

  set :env_name, 'development'
end

get '/' do
  html = Template::HTML.gsub('$time$', Time.now.strftime("%Y/%m/%d %H:%M:%S"))
  html
    .gsub('$font-family$', Template::WEB_FONTS.sample)
    .gsub('$env$', settings.env_name)
end
