require File.join(File.dirname(__FILE__),'..','app.rb')
require 'rack/test'
require 'rspec'

describe "Application" do
	include Rack::Test::Methods
	def app
		@app ||= Sinatra::Application
	end

	describe "/ to access" do
		before { get '/' }

		it "nomal response" do
			expect(last_response).to be_ok
		end

		it "output Hello" do
			expect(last_response.body).to eq('Hello Press')
		end
	end
end