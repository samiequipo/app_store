require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup 
    @category = categories(:one)    
  end
  
  test 'name should be exist' do
    assert @category.valid?
  end

  test 'should not save category without name' do
    category = Category.new
    assert_not category.valid?
  end

  test 'should not be valid category with the same name' do
    category = Category.new(name: @category.name)
    assert_not category.valid?
  end
  
  test 'description should be has more than 10 character' do
    category = Category.new(name: 'Carlos', description: "a"*10)
    assert_not category.valid?
  end

  test 'description should be has less than 256 character' do
    category = Category.new(name: 'Carlos', description: "a"*256)
    assert_not category.valid?
  end
end