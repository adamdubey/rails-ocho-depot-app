# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.delete_all
product = Product.create(title: 'Ruby on Rails 8',
  description:
    %(<p>
      <em>The Pragmatic Programmers' Guide</em><br />
      Dive into the cutting-edge features and enhancements of Ruby on Rails 8 with this comprehensive guide.
      Ideal for both seasoned Rails developers and newcomers to web development, this book covers the latest updates, performance optimizations, and streamlined processes that make Rails 8 the most powerful version yet.
    </p>),
  price: 29.95)

product.image.attach(io: File.open(
  Rails.root.join('db', 'images', 'ror8-book.jpg')),
    filename: 'ror8-book.jpg')

product.save!
# . . .
