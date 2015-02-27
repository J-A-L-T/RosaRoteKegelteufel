# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
puts "Einbinden der Beispieldaten beginnt"
puts "------------------------------------------"
# Tags für Topics
Tag.create name: ''
Tag.create name: 'Important'
Tag.create name: 'Poll'
Tag.create name: 'Question'
puts "Tags erstellt"
puts "------------------------------------------"
# Strafen
Penalty.create(name: '3 Getränke', :price => 0.5)
Penalty.create(name: 'Gosse geworfen', :price => 1)
Penalty.create(name: 'Nicht aufgeschrieben', :price => 1.5)
Penalty.create(name: 'Am Band geklingelt', :price => 2)
puts "Strafen erstellt"
puts "------------------------------------------"
#Testbenutzer
usermail = "Jan@test.de"
userpass = "12345678"
username = "Jan"
User.create(username: username, email: usermail, password: userpass, password_confirmation: userpass)
usermail = "Lukas@test.de"
userpass = "12345678"
username = "Lukas"
User.create(username: username, email: usermail, password: userpass, password_confirmation: userpass)
usermail = "Andi@test.de"
userpass = "12345678"
username = "Andi"
User.create(username: username, email: usermail, password: userpass, password_confirmation: userpass)
usermail = "Tobi@test.de"
userpass = "12345678"
username = "Tobi"
User.create(username: username, email: usermail, password: userpass, password_confirmation: userpass)
puts "Verschiedene Benutzer erstellt"
puts "Namen: Jan, Lukas, Tobi und Andi"
puts "Passwort bei allen 12345678"
puts "------------------------------------------"
#Erzeugen eines Admin-Nutzers
pass = 12345678
admin = User.create(username: "Admin", email: 'admin@example.com', password: pass, password_confirmation: pass)
admin.add_role :admin
puts "Adminbenutzer erstellt"
puts "Adminname: Admin"
puts "Admin Passwort: #{pass}"
puts "------------------------------------------"
#Strafeinträge
PenaltyEntry.create(user_id: 1, penalty_id: 3, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 4, penalty_id: 1, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 2, penalty_id: 1, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 2, penalty_id: 2, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 2, penalty_id: 3, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 2, penalty_id: 4, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 1, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 2, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 3, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 4, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 1, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 2, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 3, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
PenaltyEntry.create(user_id: 3, penalty_id: 4, :date => DateTime.strptime("23/02/2015", "%d/%m/%Y"))
puts "Strafeinträge erstellt"
puts "------------------------------------------"
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

#Testtopic 3
topic_user_id = 1
topic_title = "Dies ist ein Umfragetopic"
topic_tag_id = 3
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)
puts "Topics erstellt"
puts "------------------------------------------"

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
puts "Comments erstellt"
puts "------------------------------------------"

#Testalben
Album.create(title: "Glumanda / Glutexo / Glurak", description: "Dieses Pokémon bevorzugt heiße Lebensräume. Bei Regen dampft die Schwanzspitze von Glumanda.")
Album.create(title: "Bisasam / Bisaknosp / Bisaflor", description: "Dieses Pokémon kommt sehr lange ohne Nahrung aus. Die Knolle auf seinem Rücken speichert Solarenergie.")
Album.create(title: "Schiggy / Schillok / Turtok", description: "Dieses Pokémon jagt mit einem Wasserstrahl. Bei Gefahr zieht es sich in seinen Panzer zurück.")
puts "Alben erstellt"
puts "------------------------------------------"

Image.create(title: "Glumanda", album_id: "1", file_file_name: "Glumanda.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Glutexo", album_id: "1", file_file_name: "Glutexo.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Glurak", album_id: "1", file_file_name: "Glurak.png", file_content_type: "image/png", file_file_size: "216351")

Image.create(title: "Schiggy", album_id: "2", file_file_name: "Schiggy.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Schillock", album_id: "2", file_file_name: "Schillock.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Turtok", album_id: "2", file_file_name: "Turtok.png", file_content_type: "image/png", file_file_size: "216351")

Image.create(title: "Bisasam", album_id: "2", file_file_name: "Bisasam.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Bisaknosp", album_id: "2", file_file_name: "Bisaknosp.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Bisaflor", album_id: "2", file_file_name: "Bisaflor.png", file_content_type: "image/png", file_file_size: "216351")
puts "Bilder erstellt"
puts "------------------------------------------"
puts "Einbinden der Beispieldaten abgeschlossen"
puts "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
puts ""

