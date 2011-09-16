# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

administrator = User.create({:login => 'admin', :name => 'Administrador', :type_id => 0,
                             :email => 'pedro.henrique.108@gmail.com', :crypted_password => '',
                             :password_salt => ''})
