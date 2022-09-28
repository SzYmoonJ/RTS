		#players
INSERT INTO players (nick, email, password) VALUES (Kflek, mail@gmail.com, hasło123)
INSERT INTO players (nick, email, password) VALUES (TCZ, Tcz@gmail.com, masło123)
INSERT INTO players (nick, email, password) VALUES (Reg, tre@gmail.com, hsl123)


		#villages
INSERT INTO villages (name, x, y, players_id) VALUES ("wiocha", 10, 20, 2)
INSERT INTO villages (name, x, y, players_id) VALUES ("wjocha", 11, 24, 1)
INSERT INTO villages (name, x, y, players_id) VALUES ("wjoha", 15, 30, 3)


		#troops
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES łucznik, no ma łuk, 0, 10, 4)
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES (miecznik, macha mieczem, 8, 0, 8)
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES (kusznik, taki trochę lepszy łucznik, 0, 15, 8)
INSERT INTO troops (name, description, damage, distance_damage, defense) VALUES (ryczerz, lepszego niż on nie znajdziesz, 20, 0, 12)


		#resources
INSERT INTO resources (name, descripion) VALUES (drewno, Podstawowy materiał budowlany)
INSERT INTO resources (name, descripion) VALUES (glina, Z tego lepisz garnki... ale nie w tej grze)
INSERT INTO resources (name, descripion) VALUES (żelazo, Do trenowania jednostek, złota nie masz to chociaż żelazo dostaną)


		#buildings
INSERT INTO buildings (name) VALUES (dół z gliną)
INSERT INTO buildings (name) VALUES (huta żelaza)
INSERT INTO buildings (name) VALUES (chata drwala)


		#login
FROM players SELECT id WHERE password LIKE "hasło123" AND email LIKE "mail@gmail.com"