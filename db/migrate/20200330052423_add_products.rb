class AddProducts < ActiveRecord::Migration[6.0]
  def change
  	Product.create ({:title => 'Hawaiian' ,:description => 'This is Hawaiian pizza' , :price => 350 ,:size=>30,:is_spicy=>false,:is_veg=>false,:is_best_offer=>false,:path_to_image=>'/images/pizza.jpg'})
  	Product.create ({:title => 'Italian' ,:description => 'This is Italian pizza' , :price => 400 ,:size=>40,:is_spicy=>false,:is_veg=>false,:is_best_offer=>false,:path_to_image=>'/images/pizza1.jpg'})
  	Product.create ({:title => 'Russian' ,:description => 'This is Russian pizza' , :price => 450 ,:size=>50,:is_spicy=>false,:is_veg=>false,:is_best_offer=>true,:path_to_image=>'/images/pizza2.jpg'})
  end
end
