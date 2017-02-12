require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
	describe 'GET #index' do
		before do
			@questions = create_list(:question, 2)
			get :index
		end
		it 'populates an array of all questions' do
			expect(assigns(:questions)).to match_array(@questions) # assigns(:question) return value @questions to index action QuestionController
		end

		it 'renders index view' do
			expect(response).to render_template :index
		end
	end
end
