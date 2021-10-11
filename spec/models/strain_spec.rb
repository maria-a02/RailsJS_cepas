require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'should not have same name' do
    @strain_one = Strain.create(name: 'Mari')
    @strain_two = Strain.create(name: 'Mari')
    expect(@strain_two).to_not be_valid
  end
  it 'should not have empty name' do
    @strain = Strain.create(name: nil)
    @strain_two = Strain.create(name: ' ')
    @strain_three = Strain.create(name: "Carmenere")
    expect(Strain.create).to_not be_valid
    expect(@strain).to_not be_valid
    expect(@strain_two).to_not be_valid
    expect(@strain_three).to be_valid
  end
end
