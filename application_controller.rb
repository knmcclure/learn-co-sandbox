require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    @greeting = "Waz Up!"
    erb :'index.html'
  end

end