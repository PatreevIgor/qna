require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
	describe 'GET #index' do
		let(:questions) {create_list(:question, 2)}

		before { get :index }

		it 'populates an array of all questions' do
			expect(assigns(:questions)).to match_array(questions) # assigns(:question) return value @questions to index action QuestionController
		end

		it 'renders index view' do
			expect(response).to render_template :index
		end
	end

	describe 'GET #show' do
		let(:question) { create(:question) }

		before { get :show, id: question }

		it 'assigns the requested questions to @question' do
			expect(assigns(:question)).to eq question
		end

		it 'render show view' do
			expect(response).to render_template :show
		end
	end

	describe 'GET #new' do
		before { get :new }

		it 'assigns a new Question to @question' do
			expect(assigns(:question)).to be_a_new(Question)
		end

		it 'render new view'
			expect(response).to render_template :new
		end
	end
end
