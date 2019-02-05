class ChangePostNotNull < ActiveRecord::Migration[5.2]
  #nameカラムにNULLを入れない。
  def change
    change_column_null :post, :name, false
  end
end
