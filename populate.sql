INSERT INTO GeneralType (TYPE_ID, TYPE_NAME) VALUES 
	('UA', 'Assassination'),
	('AA', 'Bombing/Explosion'),
	('US', 'Assassination'),
	('F9', 'Armed Assault'),
	('B6', 'Armed Assault'),
	('OO', 'Bombing/Explosion'),
	('AS', 'Facility/Infrastructure Attack'),
	('NK', 'Hostage Taking (Kidnapping)');
	
	
INSERT INTO Country (COUNTRY_ID, COUNTRY_NAME) VALUES 
	('ABE', 'Afghanistan'),
	('ABI', 'Iraq'), 
	('ABQ', 'Russia'), 
	('ACK', 'United Kindom'),
	('ACT', 'Egypt'),
	('ACV', 'El Salvador'),
	('ACY', 'Greece'),
	('ADK', 'Iraq');
	
INSERT INTO Place (PLACE_ID, PLACE_NAME, COUNTRY_ID) VALUES 
	('FH345', 'Farah', 'ABE'),
	('MS63', 'Mosul', 'ABI'),
	('OR88', 'Ordzhonikidzevskaya', 'ABQ'),
	('BF637', 'Belfast', 'ACK'),
	('N97789', 'Nakhl', 'ACT'),
	('SM769', 'Santiago de Maria', 'ACV'),
	('A333', 'Athens', 'ACY'),
	('MS26', 'Mosul', 'ADK');
	
INSERT INTO AttackPlace (ATTACK_ID, PLACE_NAME) VALUES 
	('AS98', 'FH345'),
	('AA2336', 'MS63'),
	('US840', 'OR88'),
	('AA258', 'BF637'),
	('AS135', 'N97789'),
	('DL806', 'SM769'),
	('NK612', 'A333'),
	('DL1173', 'MS26');
	
INSERT INTO AttackDate (ATTACK_ID, ATTACK_DATE) VALUES 
	('AS98', '2017-11-24'),
	('AA2336', '2014-05-26'),
	('US840', '2008-05-21'),
	('AA258', '2002-06-02'),
	('AS135', '2017-11-09'),
	('DL806', '1986-01-22'),
	('NK612', '2017-11-03'),
	('DL1173', '2014-09-08');

INSERT INTO AttackType (ATTACK_ID, TYPE_NAME) VALUES 
	('AS98', 'UA'),
	('AA2336', 'AA'),
	('US840', 'US'),
	('AA258', 'F9'),
	('AS135', 'B6'),
	('DL806', 'OO'),
	('NK612', 'AS'),
	('DL1173', 'NK');