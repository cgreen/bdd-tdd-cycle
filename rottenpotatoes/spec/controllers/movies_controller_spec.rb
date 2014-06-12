require 'spec_helper'


describe MoviesController do
  describe 'find movies with the same director' do

    it 'should call the model method that finds movies with the same director' do
      movie = Movie.create({title: 'Super Bad Movie', rating: 'R', release_date: DateTime.now, director: 'Michael Bay'})
      Movie.should_receive(:same_director).with(movie.id)
      get :same_director, id: movie.id
    end

    it 'should not call the model method that finds movies with the same director when the movie has no director info' do
      movie = Movie.create({title: 'Ass Kicked', rating: 'PG-13', release_date: DateTime.now})
      expect(Movie).to_not receive(:same_director)
      get :same_director, id: movie.id
    end

    it 'should redirect to the home page when the movie has no director info' do
      movie = Movie.create({title: 'Ass Kicked 2', rating: 'PG-13', release_date: DateTime.now})
      get :same_director, id: movie.id
      response.should redirect_to movies_path
    end

  end
end
