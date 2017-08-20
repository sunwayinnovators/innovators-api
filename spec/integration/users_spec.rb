require 'swagger_helper'

describe 'Users API' do
  
  # path '/users' do
    
  #   get 'Retrieves all users' do
  #     tags 'Users'
  #     produces 'application/json'
      
  #     response '200', 'user found' do
  #       run_test!
  #     end
      
  #   end
    
  # end

  # path '/users' do
    
  #   post 'Creates a event' do
  #     tags 'Events'
  #     consumes 'application/json'
  #     parameter name: :event, in: :body, schema: {
  #       type: :object,
  #       properties: {
  #         name: { type: :string },
  #         content: { type: :string }
  #       },
  #       required: [ 'name', 'content' ]
  #     }

  #     response '201', 'event created' do
  #       let(:event) { { name: 'foo', content: 'bar' } }
  #       run_test!
  #     end

  #     response '422', 'invalid request' do
  #       let(:event) { { name: 'foo' } }
  #       run_test!
  #     end
  #   end
  # end

  # path '/events/{id}' do

  #   get 'Retrieves a event' do
  #     tags 'Events'
  #     produces 'application/json'
  #     parameter name: :id, :in => :path, :type => :string

  #     response '200', 'event found' do
  #       schema type: :object,
  #         properties: {
  #           id: { type: :integer },
  #           name: { type: :string },
  #           content: { type: :string }
  #         },
  #         required: [ 'id', 'name', 'content' ]

  #       let(:id) { Event.create(name: 'foo', content: 'bar').id }
  #       run_test!
  #     end

  #     response '404', 'event not found' do
  #       let(:id) { 'invalid' }
  #       run_test!
  #     end

  #     response '406', 'unsupported accept header' do
  #       let(:'Accept') { 'application/foo' }
  #       run_test!
  #     end
  #   end
  # end
end