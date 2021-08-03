require 'rails_helper'

RSpec.describe WordsController, type: :controller do
    describe 'GET index' do

       it 'assigns @words' do
            word = Word.create 
            get :index 
            expect(assigns(:words)).to eq ([word])
       end

       it 'renders the index template' do
            get :index
            expect(response).to render_template(:index)
       end


    end
end