require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
   
   def setup
       @chef = Chef.create(chefname: "bob" , email: "email@example.com")
       @recipe = @chef.recipes.build(name: "chicken parm", summary: "this is the best chicken parm recipe ever", description: "Heat oil, add onion, add tomato sauce
       add chicken, cook for 20 minutes")
   end
   
   test "Recipe should be valid" do
       assert @recipe.valid?
   end
   
   test "chef_id should be present" do 
      @recipe.chef_id=nil
      assert_not @recipe.valid?
   end
   
   test "name should be present" do
        @recipe.name = " "
        assert_not @recipe.valid?
   end
   
   test "name length should not be too long" do
      
   end
   
       
       
end