# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def random_text
  phrases = ['Hey mate', 'Sounds good', 'Have you seen the latest episode?', 'No thanks', 'Goodbye']
  phrases.sample
end

puts 'Deleting Users...'
Message.destroy_all
User.destroy_all

puts 'Creating Users.....'
User.create(username: "Bob", password: '1234qwertyuiop')
User.create(username: "Sherry", password: '1234qwertyuiop')
User.create(username: "Jack", password: '1234qwertyuiop')
User.create(username: "Tom", password: '1234qwertyuiop')
User.create(username: "Cat", password: '1234qwertyuiop')
puts 'Users created'

puts 'Creating messages'
users = User.all
users.each do |user|
  Message.create(body: random_text, user: user)
end
puts 'Messages created'

