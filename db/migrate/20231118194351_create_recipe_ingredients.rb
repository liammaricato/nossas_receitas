class CreateRecipeIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, index: true, null: false, foreign_key: true
      t.references :ingredient, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
