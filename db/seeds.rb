# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([{fname: 'Admin', lname: 'Admin', email: 'admin@ats.com', password: 'password', password_confirmation: 'password',
             is_applicant: TRUE, is_recruiter: TRUE, is_admin: TRUE, phone_no: '0000000000'}])
# ActiveRecord::Base.connection.execute "insert into users (fname, lname, email, password, is_applicant, is_recruiter, is_admin, phone_no) values ('Admin', 'Admin', 'admin@ats.com', 'password', TRUE, TRUE, TRUE, '0000')"