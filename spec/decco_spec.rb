require 'spec_helper'

describe Decco do
  context 'decorating' do
    it 'should decorate a User instance' do
      expect(Decco.decorate(User.new)).to be_an_instance_of(UserDecorator)
    end
    
    it 'should raise a DecoratorNotFound exception' do
      expect {
        Decco.decorate('test')
      }.to raise_error(Decco::DecoratorNotFound)
    end
  end
end
