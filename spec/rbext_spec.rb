require_relative 'spec_helper'

class RbextSpec < Minitest::Test
  
  describe Rbext do
    
    describe '::VERSION' do
      
      it 'should have a version number' do
        ::Rbext::VERSION.wont_be_nil
      end
      
    end
    
    describe '.version' do
      
      it 'should return the version number' do
        ::Rbext.version.wont_be_nil
        ::Rbext.version.must_match /\d\.\d\.\d/
      end
      
    end
    
  end
  
  
end
