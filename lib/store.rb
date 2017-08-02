class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, :minimum => 3
  validates_numericality_of :annual_revenue, :greater_than_or_equal_to => 0
  validate :carry_apparel

  private
  def carry_apparel
      puts 'Does not sell anything'
      if !mens_apparel && !womens_apparel
          errors.add :apparel, 'Go away, they dun sell nufing'
      end
    end

end

#  create_table :stores do |t|
#     t.column :name, :string
#     t.column :annual_revenue, :integer
#     t.column :mens_apparel, :boolean
#     t.column :womens_apparel, :boolean
#     t.timestamps null: false
#   end

#   * Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that must be 0 or more 