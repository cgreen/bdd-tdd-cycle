require 'spec_helper'


describe MoviesController do
  describe 'find movies with the same director' do
    it 'should call the model method that finds movies with the same director' do
      movie = Movie.create({title: 'Bad Movie', rating: 'PG-13', release_date: DateTime.now, director: 'Michael Bay'})
      Movie.should_receive(:same_director).with(movie.id)
      get :same_director, id: movie.id
    end
  end
end
