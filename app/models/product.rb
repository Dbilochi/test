class Product < ApplicationRecord
  require 'roo'
  validates(
      :name,
      presence: true
    )

    validates(
    :price,
    presence: true
  )

  def self.import(file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      product = Product.new
      product.name                = row["Name"] || ""
      product.price               = row["Price"] || ""
      product.description         = row["Description"] || ""
      product.save
    end
  end
end
