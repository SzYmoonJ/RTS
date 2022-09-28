		#players
INSERT INTO players (nick, email, password) VALUES ("Kflek", "mail@gmail.com", "hasło123")
INSERT INTO players (nick, email, password) VALUES ("TCZ", "Tcz@gmail.com", "masło123")
INSERT INTO players (nick, email, password) VALUES ("Reg", "tre@gmail.com", "hsl123")


		#villages
INSERT INTO villages (name, x, y, players_id) VALUES ("wiocha", 10, 20, 2)
INSERT INTO villages (name, x, y, players_id) VALUES ("wjocha", 11, 24, 1)
INSERT INTO villages (name, x, y, players_id) VALUES ("wjoha", 15, 30, 3)
	
		#villages-resources
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (1, 1, 1000)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (1, 2, 1200)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (1, 3, 1500)

INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (2, 1, 1001)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (2, 2, 1201)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (2, 3, 1501)

INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (3, 1, 1002)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (3, 2, 1202)
INSERT INTO villages_has_resources (villages_id, resources_id, value) VALUES (3, 3, 1502)

		#troops
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES ("łucznik", "no ma łuk", 0, 10, 4)
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES ("miecznik", "macha mieczem", 8, 0, 8)
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES ("kusznik", "taki trochę lepszy łucznik", 0, 15, 8)
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES ("ryczerz", "lepszego niż on nie znajdziesz", 20, 0, 12)


		#resources
INSERT INTO resources (name, description) VALUES ("Drewno", "Podstawowy materiał budowlany")
INSERT INTO resources (name, description) VALUES ("Glina", "Z tego lepisz garnki... ale nie w tej grze")
INSERT INTO resources (name, description) VALUES ("Żelazo", "Do trenowania jednostek, złota nie masz to chociaż żelazo dostaną")


		#buildings
INSERT INTO buildings (name) VALUES ("Dół z gliną")
INSERT INTO buildings (name) VALUES ("Huta żelaza")
INSERT INTO buildings (name) VALUES ("Chata drwala")


		#login
FROM players SELECT id WHERE password LIKE "hasło123" AND email LIKE "mail@gmail.com" 


		#
SELECT * FROM players 
JOIN villages ON players.id=villages.players_id 
JOIN villages_has_resources ON villages.id=villages_has_resources.villages_id 
WHERE players.id=2 
