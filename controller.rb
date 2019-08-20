require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

require_relative './models/film'

get '/' do
  return "use /films to see whats on"
end

get '/films' do
  @films = Film.all
  erb(:'films/films')
end

get '/films/:id' do
  @films = Film.all
  @film_id = params[:id].to_i
  # for film in @films
  #   if film.id == @film_id
  #     @film = film
  #   end
  # end
  erb(:'films/film_info')
end
