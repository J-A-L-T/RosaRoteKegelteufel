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
#Testtopics
topic_user_id = 1
topic_title = "Unsere Kegelregeln"
topic_tag_id = 2
topic_content =
"Bei den meisten Kegelklubs oderKegelvereinen ist es aber so:
Beim Freizeitkegeln stehen nicht wie beim Sportkegeln die sportliche Betätigung und der Wettkampf im Mittelpunkt, sondern vor allem die Geselligkeit und der Spaßfaktor.
Pudel (auch Pumpen Ratten Nullwürfe) Wenn der Kegler am vollen Bild, also wenn alle 9 kegel noch stehen vorbei wirft. Meistens geht dabei die Kugel in die Rinne. Die Pudel werden gezählt und der Kegler mit den meisten Pudeln am Abend ist der Pudelkönig. Der Pudelkönig bekommt natürlich auch für sein Unvermögen eine Strafe (Geld, Runde).
Wenn die Kugel zu langsam rollt und von einem Mitspieler eingeholt wird bekommt derjenige dessen Kugel gefangen worden ist eine Strafe (Geld, Runde).
Wenn ein Mitspieler versucht eine Kugel zu schnappen es aber nicht schafft bekommt dieser eine Strafe (Geld, Runde).
Zumeist wird an einem Abend eine Vielzahl von Kegelspielen gespielt.
Klingel: Über die Kegelbahn ist eine Schnur gespannt. Vor diese Schnur muss die Kugel gespielt werden. Wird die Schnur berührt, klingelt die an der Schnur befestigte Klingel. Dies Kostet eine Strafe.
Kracht: Wen mit einem Wurf alle Kegel außer dem in der Mitte stehenden Kegel abgeräumt werden. Dies Zählt 12 Punkte und ist ein seltener und guter Wurf, kostet aber auch eine Runde.
Neunerwurf (alle Neune): Wenn mit einem Wurf alle neun Kegel abgeräumt werden. Dies ist ein seltener und guter Wurf, kostet aber auch eine Runde.
Verpasster Einsatz: Ist ein Kegler an der Reihe und verpasst er seinen Einsatz, wird dies mit einer finanziellen Strafe belegt. Der Einsatz gilt dann als verpasst, wenn ein anderer Kegler dem Kegler der an der Reihe ist eine Kugel auf dem Tisch legt.
Alle Geldstrafen werden vom Kassenwart verwaltet und werden meistens für mehrtägigen Ausflüge (Kegelausflug, Kegeltour) verwendet. Der Kassenwart hält alle Ergebnisse, Strafen und Finanzen in einem Kegelbuch fest.."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)

topic_user_id = 4
topic_title = "Wie gefällt euch unser Forum bisher?"
topic_tag_id = 4
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)

topic_user_id = 3
topic_title = "Wer kommt alles mit nach Malle?"
topic_tag_id = 3
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)

topic_user_id = 1
topic_title = "Wann müssen wir am Flughafen sein für den Ausflug?"
topic_tag_id = 4
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)

topic_user_id = 4
topic_title = "Der Strafenkatalog für Januar"
topic_tag_id = 1
topic_content = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
Topic.create(user_id: topic_user_id, title: topic_title, tag_id: topic_tag_id, content: topic_content)
puts "Topics erstellt"
puts "------------------------------------------"

#Testcomment
comment_topic_id = 2
comment_user_id = 2
comment_body = "Also mit gefällt es super!"
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 2
comment_user_id = 1
comment_body = "Ja, echt nen super Ding!"
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 4
comment_user_id = 3
comment_body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec."
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 4
comment_user_id = 4
comment_body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec."
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 3
comment_user_id = 4
comment_body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec."
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 3
comment_user_id = 4
comment_body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec."
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 3
comment_user_id = 1
comment_body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec."
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 3
comment_user_id = 2
comment_body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec."
Comment.create(user_id: comment_user_id, topic_id: comment_topic_id, body: comment_body)

comment_topic_id = 5
comment_user_id = 2
comment_body = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec."
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

Image.create(title: "Schiggy", album_id: "3", file_file_name: "Schiggy.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Schillok", album_id: "3", file_file_name: "Schillok.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Turtok", album_id: "3", file_file_name: "Turtok.png", file_content_type: "image/png", file_file_size: "216351")

Image.create(title: "Bisasam", album_id: "2", file_file_name: "Bisasam.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Bisaknosp", album_id: "2", file_file_name: "Bisaknosp.png", file_content_type: "image/png", file_file_size: "216351")
Image.create(title: "Bisaflor", album_id: "2", file_file_name: "Bisaflor.png", file_content_type: "image/png", file_file_size: "216351")
puts "Bilder erstellt"
puts "------------------------------------------"

Event.create(title: "Kegeln in der Dorfschmiede", description: "Wie jede Woche treffen wir uns zum Kegeln in der Dorfschmiede", start_time: "2015-02-06 20:00:00.000000", end_time: "2015-02-06 24:00:00.000000")
Event.create(title: "Kegeln in der Dorfschmiede", description: "Wie jede Woche treffen wir uns zum Kegeln in der Dorfschmiede", start_time: "2015-02-13 20:00:00.000000", end_time: "2015-02-13 24:00:00.000000")
Event.create(title: "Kegeln in der Dorfschmiede", description: "Wie jede Woche treffen wir uns zum Kegeln in der Dorfschmiede", start_time: "2015-02-20 20:00:00.000000", end_time: "2015-02-20 24:00:00.000000")
Event.create(title: "Kegeln in der Dorfschmiede", description: "Wie jede Woche treffen wir uns zum Kegeln in der Dorfschmiede", start_time: "2015-02-27 20:00:00.000000", end_time: "2015-02-27 24:00:00.000000")
Event.create(title: "Kegeln in der Dorfschmiede", description: "Wie jede Woche treffen wir uns zum Kegeln in der Dorfschmiede", start_time: "2015-03-13 20:00:00.000000", end_time: "2015-03-13 24:00:00.000000")
Event.create(title: "Kegelausflug nach Malle", description: "Endlich geht es wieder nach Malle!!!!", start_time: "2015-03-1 6:00:00.000000", end_time: "2015-03-7 20:00:00.000000")
Event.create(title: "Geburtstag: Tobi", description: "Tobi hat Geburtstag. Das Kostet beim nächsten mal ne Runde.", start_time: "2015-02-02 06:00:00.000000", end_time: "2015-02-02 24:00:00.000000")
Event.create(title: "Geburtstag Jan", description: "Jan hat Geburtstag. Das Kostet beim nächsten mal ne Runde", start_time: "2015-02-09 06:00:00.000000", end_time: "2015-02-09 24:00:00.000000")
Event.create(title: "Geburtstag Lukas", description: "Lukas  hat Geburtstag. Das Kostet beim nächsten mal ne Runde", start_time: "2015-02-18 06:00:00.000000", end_time: "2015-02-18 24:00:00.000000")
Event.create(title: "Geburtstag Andi", description: "Andi hat Geburtstag. Das Kostet beim nächsten mal ne Runde. Also ab in den Bierkönig!", start_time: "2015-03-01 06:00:00.000000", end_time: "2015-03-01 24:00:00.000000")
Event.create(title: "Abgabetermin für unser RoR-Projekt", description: "Hoffentlich haben wir bis dahin alles fertig", start_time: "2015-02-27 23:00:00.000000", end_time: "2015-02-27 24:00:00.000000")
Event.create(title: "Strafen sind fällig", description: "Es ist Monatsende, die Strafen sind fällig", start_time: "2015-02-28 23:00:00.000000", end_time: "2015-02-28 24:00:00.000000")
Event.create(title: "Tobi beim Umzughelfen", description: "Tobi zieht endlich nach Münster. Anpacken ist angesagt", start_time: "2015-02-22 06:00:00.000000", end_time: "2015-02-23 18:00:00.000000")
Event.create(title: "Feierabendbier", description: "Nach getaner Arbeit", start_time: "2015-02-22 18:00:00.000000", end_time: "2015-02-22 19:00:00.000000")
Event.create(title: "Feierabendbier", description: "Nach getaner Arbeit", start_time: "2015-02-23 18:00:00.000000", end_time: "2015-02-23 19:00:00.000000")
puts "Events erstellt"
puts "------------------------------------------"

puts "Einbinden der Beispieldaten abgeschlossen"
puts "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
puts ""
