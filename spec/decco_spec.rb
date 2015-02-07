require 'spec_helper'

describe Decco do
  context 'decorating' do
    it 'should infer a decorator from the object' do
      decorator = Decco.decorate(User.new)
      expect(decorator).to be_an_instance_of(UserDecorator)
    end
    
    it 'should load a custom decorator' do
      decorator = Decco.decorate(User.new, 'AltUserDecorator')
      expect(decorator).to be_an_instance_of(AltUserDecorator)
    end
    
    it 'should raise a DecoratorNotFound exception' do
      expect {
        Decco.decorate('test')
      }.to raise_error(Decco::DecoratorNotFound)
    end
  end
end
