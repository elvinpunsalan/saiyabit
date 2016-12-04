# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Contact.delete_all
Contact.create!(name: 'Example Name', email: 'contact@example.com', phone: '(555)555-5555', notes: 'Enter some notes here.')

About.delete_all
About.create!(content: 'Some example about content')

Province.delete_all
Province.create!(id: 1, name: 'Manitoba', gst_rate: 0.05, pst_rate: 0.08)
Province.create!(id: 2, name: 'Alberta', gst_rate: 0.05)
Province.create!(id: 3, name: 'British Columbia', gst_rate: 0.05, pst_rate: 0.07)
Province.create!(id: 4, name: 'New-Brunswick', hst_rate: 0.15)
Province.create!(id: 5, name: 'Newfoundland and Labrador', hst_rate: 0.15)
Province.create!(id: 6, name: 'Northwest Territories', gst_rate: 0.05)
Province.create!(id: 7, name: 'Nova Scotia', hst_rate: 0.15)
Province.create!(id: 8, name: 'Nunavut', gst_rate: 0.05)
Province.create!(id: 9, name: 'Ontario', hst_rate: 0.13)
Province.create!(id: 10, name: 'Prince Edward Island', hst_rate: 0.15)
Province.create!(id: 11, name: 'Quebec', gst_rate: 0.05, pst_rate: 0.09975)
Province.create!(id: 12, name: 'Saskatchewan', gst_rate: 0.05, pst_rate: 0.05)
Province.create!(id: 13, name: 'Yukon', gst_rate: 0.05)