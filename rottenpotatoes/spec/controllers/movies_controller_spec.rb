require 'movies_controller'
require 'spec_helper'


describe MoviesController do
  describe 'finding movies with the same director' do
    it 'should call the model method that finds movies by director' do
      Movie.should_receive(:find_by_director).with('Joe Director')
      post :same_director, { director: 'Joe Director' }
    end
    it 'should display the results'
  end
end
