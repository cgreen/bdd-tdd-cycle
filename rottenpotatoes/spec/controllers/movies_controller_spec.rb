require 'movies_controller'
require 'spec_helper'


describe MoviesController do
  describe 'find movies with same director' do
    it 'should call the model method that finds movies by director' do
      Movie.should_receive(:find_by_director).with('Joe Director')
      post :search_director, { search_terms: 'Joe Director' }
    end
  end
end
