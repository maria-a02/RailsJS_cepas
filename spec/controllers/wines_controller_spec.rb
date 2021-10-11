require 'rails_helper'

RSpec.describe WinesController, type: :controller do
  it 'index displays all wines' do
    wines = Wine.create(name: 'Don Gato')
    get :index
    expect(assigns(:wines)).to eq([wines])
    expect(get: '/wines').to route_to("wines#index")
  end
  
  it 'renders index correct template' do
    expect(get :index).to render_template("index")
  end
  
  it 'renders show correct template' do
    wines = Wine.create(name: 'Merlot')
    expect(get: '/wines/1').to render_template("show")
  end
end
