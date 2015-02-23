# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Erzeugen eines Admin-Nutzers
pass = 12345678
admin = User.create(email: 'admin@example.com', password: pass, password_confirmation: pass)
admin.add_role :admin
puts "Admin password is #{pass}"

# Tags für Topics
Tag.create name: ''
Tag.create name: 'Wichtig'
Tag.create name: 'Umfrage'
Tag.create name: 'Frage'

#Testbenutzer
usermail = "test@test.de"
userpass = "12345678"
username = "Testbenutzer"
User.create(username: username, email: usermail, password: userpass,password_confirmation: userpass)
puts "-------------------------------"
puts "Testbenutzer erstellt"
puts "Benutzer = " + usermail
puts "Passwort = " + userpass
puts "-------------------------------"

#Testtopic 1
topic_user_id = 1
topic_title = "Dies ist ein Testtopic"
topic_tag_id = 2
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)

#Testtopic 2
topic_user_id = 1
topic_title = "Wie gefällt euch unser Forum bisher?"
topic_tag_id = 4
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)
puts "Testtopics erstellt"
puts "-------------------------------"

#Testtopic 3
topic_user_id = 1
topic_title = "Dies ist ein Umfragetopic"
topic_tag_id = 3
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)


#Testcomment 1
comment_topic_id = 2
comment_user_id = 1
comment_body = "Also mit gefällt es super!"
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

#Testcomment 2
comment_topic_id = 2
comment_user_id = 1
comment_body = "Ja, echt nen super Ding!"
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)
puts "Testcomments erstellt"
puts "-------------------------------"