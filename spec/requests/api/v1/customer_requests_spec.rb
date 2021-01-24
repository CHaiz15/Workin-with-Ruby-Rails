require 'rails_helper'

describe 'Customer' do
  it 'Sends back a list of all customers' do 
    create_list(:customer, 10)
    get '/api/v1/customers'
    expect(response).to be_successful
    customers = JSON.parse(response.body)["data"]
    expect(customers.count).to eq(10)
  end
end