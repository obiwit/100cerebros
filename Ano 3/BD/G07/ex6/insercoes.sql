INSERT INTO BRANCH_BUILDING (city, country, num_offices, [address])
VALUES
('Aveiro', 'Portugal', 3, 'Avenida Lourenço Peixinho, Nº3B'), 
('Porto', 'Portugal', 10, 'Rua Santo António, Nº12'), 
('Lisboa', 'Portugal', 20, 'Parque das Nações, Nº20'), 
('Boston', 'USA', 10, '2600 Lincoln Street, number 23'), 
('Washington DC', 'USA', 100, '1600 Pennsylvania Ave NWDC 20500')

INSERT INTO EMPLOYEE(cc_id,email,[name],salary,date_of_birth,health_care,office,supervisor,branch_id)
VALUES
-- CEO
(784232624,'ana@gmail.com','Ana Rita Bettencourt',$1500000.0,CONVERT(varchar,'12/23/1971', 3),'SAMS QUADROS',1,NULL,5),
-- Branch Administrators
(624423624,'tomas@hotmail.com','Tomás Jorge Costa',$35000.0,CONVERT(varchar,'10/14/1971', 3),'SAMS QUADROS',2,1,1), -- Aveiro
(624323624,'freitas@gmail.com','Gil Freitas',$35000.0,CONVERT(varchar,'09/05/1970',3),'SAMS QUADROS',2,1,2), -- Porto
(924623624,'nuno@hotmail.com','Nuno Manuel da Silva',$35000.0,CONVERT(varchar,'05/09/1970',3),'SAMS QUADROS',2,1,3), -- Lisboa
(624723624,'quim@hotmail.com','Joaquim da Silva',$35000.0,CONVERT(varchar,'12/07/1948',3),'SAMS QUADROS',2,1,4), -- Boston
(924823624,'tiago@gmail.com','Tiago Oliveira',$35000.0,CONVERT(varchar,'09/12/1950',3),'SAMS QUADROS',2,1,5), -- Washington DC
-- Workers
-- Aveiro
(621256624,'ines@gmail.com','Inês Freitas',$2500.0,CONVERT(varchar,'10/18/1950',3),'SAMS',3,2,1),
(626663624,'joana@hotmail.com','Joana Silva',$2500.0,CONVERT(varchar,'10/16/1990',3),'ALLIANZ',4,2,1),
(690423624,'esteves@hotmail.com','Assunção Esteves',$5000.0,CONVERT(varchar,'10/30/1990',3),'SAMS',5,2,1),
(622123624,'coelho@hotmail.com','Passos Coelho',$5000.0,CONVERT(varchar,'11/18/1980',3),'SAMS',6,2,1),
(321223687,'maria@gmail.com','Maria Silva',$5000.0,CONVERT(varchar,'10/12/1979',3),'ALLIANZ',7,2,1),
-- Porto
(623356624,'inesc@gmail.com','Inês Costa',$2500.0,CONVERT(varchar,'11/19/1967',3),'SAMS',3,3,2),
(786663624,'joanapereira@gmail.com','Joana Pereira',$2500.0,CONVERT(varchar,'10/21/1945',3),'SAMS',4,3,2),
(667423624,'beatriz.oliveira@gmail.com','Beatriz Oliveira',$5000.0,CONVERT(varchar,'03/01/1996',3),'SAMS',5,3,2),
(622193824,'tatianacoelho@gmail.com','Tatiana Coelho',$5000.0,CONVERT(varchar,'08/03/1985',3),'SAMS',6,3,2),
(321823687,'maria.sousa@hotmail.com','Maria Sousa',$5000.0,CONVERT(varchar,'09/23/1999',3),'SAMS',7,3,2),
-- Lisboa
(623789624,'abreu.luciana@gmail.com','Luciana Abreu',$2200.0,CONVERT(varchar,'08/11/1945',3),'ALLIANZ',3,4,3),
(734663624,'yannick.djaló@hotmail.com','Yannick Djaló',$3400.0,CONVERT(varchar,'04/06/1945',3),'ALLIANZ',4,4,3),
(587423624,'ronaldo@hotmail.com','Cristiano Ronaldo',$3210.0,CONVERT(varchar,'10/17/1956',3),'ALLIANZ',5,4,3),
(123193824,'mourinho@gmail.com','José Mourinho',$1200.0,CONVERT(varchar,'02/13/1978',3),'ALLIANZ',6,4,3),
(329990687,'farias.edson.br@hotmail.com','Edson Farias',$6000.0,CONVERT(varchar,'06/05/1996',3),'ALLIANZ',7,4,3),
-- Boston (USA)
(134911454,'steven@hotmail.com','Steven V. Ponder',$2513.6,CONVERT(varchar,'08/11/1945',3),'SAMS',3,5,4),
(134916454,'charlie@gmail.com','Charlie I. Vanfleet',$2500.3,CONVERT(varchar,'01/03/1988',3),'SAMS',4,5,4),
(501163152,'trantham@hotmail.com','Mike V. Trantham',$2510.1,CONVERT(varchar,'07/17/1970',3),'SAMS',5,5,4),
(237714765,'shaw.larry@gmail.com','Larry L. Shaw',$2500.2,CONVERT(varchar,'07/13/1958',3),'SAMS',6,5,4),
(376516810,'jbrito@gmail.com','Jay L. Brito',$6020.8,CONVERT(varchar,'09/07/1953',3),'SAMS',7,5,4),
-- Washington DC (USA)
(924451185,'gowan@gmail.com','Raymond J. Gowan',$2913.6,CONVERT(varchar,'03/09/1967',3),'SAMS',3,6,5),
(851291130,'butler.troy@gmail.com','Troy J. Butler',$1000.3,CONVERT(varchar,'01/31/1978',3),'SAMS',4,6,5),
(326083496,'hodge@gmail.com','Bryant S. Hodge',$3010.1,CONVERT(varchar,'07/21/1967',3),'SAMS',5,6,5),
(527551120,'shepard.george.74@gmail.com','George L. Shepard',$4500.2,CONVERT(varchar,'07/19/1974',3),'SAMS',6,6,5),
(751416917,'douglas.pittman78@gmail.com','Douglas T. Pittman',$5620.8,CONVERT(varchar,'07/13/1978',3),'SAMS',7,6,5)


INSERT INTO CLIENT (cc_id,NIF,email,nationality,[address],[name],date_of_birth,manager_id)
VALUES
(288978276, 328430094, 'tyounie0@etsy.com', 'United States', '09949 Dovetail Lane', 'Thea Younie', CONVERT(varchar, '01/25/1988', 3), 18),
(969776115, 776725103, 'mkeedy1@cmu.edu', 'United States', '668 Dapin Center', 'Melva Keedy', CONVERT(varchar, '09/14/1985', 3), 28),
(818744860, 735422728, 'dhadgkiss2@auda.org.au', 'Portugal', '7 Sheridan Lane', 'Dot Hadgkiss', CONVERT(varchar, '07/24/1984', 3), 24),
(896873209, 884810407, 'epaprotny3@hud.gov', 'United States', '7833 Declaration Place', 'Editha Paprotny', CONVERT(varchar, '01/28/1977', 3), 24),
(367610601, 623116684, 'mleedes4@hibu.com', 'United States', '33008 Emmet Plaza', 'Maighdiln Leedes', CONVERT(varchar, '03/20/1960', 3), 13),
(192749177, 150511826, 'slarwood5@studiopress.com', 'Portugal', '533 Spenser Parkway', 'Sherill Larwood', CONVERT(varchar, '04/04/1962', 3), 7),
(882308275, 761329310, 'spetrov6@bbb.org', 'Portugal', '808 Ramsey Way', 'Sheffield Petrov', CONVERT(varchar, '02/27/1986', 3), 19),
(920912208, 763603062, 'ccassels7@etsy.com', 'Portugal', '08218 Ilene Lane', 'Cross Cassels', CONVERT(varchar, '12/13/1963', 3), 13),
(246117171, 155551772, 'rbarnardo8@google.nl', 'Portugal', '8 John Wall Circle', 'Raffarty Barnardo', CONVERT(varchar, '12/07/1952', 3), 25),
(501922387, 369832777, 'mbadby9@biblegateway.com', 'Portugal', '42 Crescent Oaks Junction', 'Minnnie Badby', CONVERT(varchar, '12/06/1950', 3), 28),
(299606995, 453002504, 'bchatersa@mit.edu', 'Portugal', '863 Ruskin Lane', 'Bev Chaters', CONVERT(varchar, '09/10/1988', 3), 15),
(861997510, 555785104, 'jbleibaumb@ucsd.edu', 'Portugal', '8 Golf View Plaza', 'Johnathon Bleibaum', CONVERT(varchar, '04/12/1950', 3), 11),
(524360442, 399095792, 'bdillowayc@biglobe.ne.jp', 'Portugal', '7342 Petterle Pass', 'Brianne Dilloway', CONVERT(varchar, '08/23/1959', 3), 10),
(729185653, 380952380, 'swinklessd@iveinternet.us', 'United States', '7981 Old Gate Terrace', 'Sylvia Winkless', CONVERT(varchar, '03/23/1983', 3), 10),
(984116394, 647348099, 'clomonde@ion.nep', 'United States', '86 Tennyson Junction', 'Claudetta Lomond', CONVERT(varchar, '06/02/1994', 3), 10),
(535128434, 900370458, 'whargeyf@stumbleupon.com', 'Portugal', '647 Prentice Park', 'Wilbur Hargey', CONVERT(varchar, '05/20/1969', 3), 29),
(505865137, 624809879, 'iroseng@slashdot.org', 'Portugal', '878 Tomscot Circle', 'Ingrid Rosen', CONVERT(varchar, '02/13/1988', 3), 13),
(541360518, 741691214, 'qstollsteimerh@gov.uk', 'Portugal', '2951 Hanson Point', 'Quintilla Stollsteimer', CONVERT(varchar, '09/20/1976', 3), 19),
(952040249, 530087450, 'cmeiklei@foxnews.com', 'Portugal', '79 Clemons Point', 'Conant Meikle', CONVERT(varchar, '03/20/1977', 3), 7),
(678201871, 666867329, 'elukinsj@symantec.com', 'United States', '567 West Place', 'Elicia Lukins', CONVERT(varchar, '12/11/1978', 3), 12),
(950732655, 540678778, 'wcogdellk@vistaprint.com', 'Portugal', '4 Bayside Park', 'Welch Cogdell', CONVERT(varchar, '10/31/1951', 3), 25),
(900626074, 834440217, 'lbrickl@github.com', 'Portugal', '2390 Bowman Parkway', 'Lorilee Brick', CONVERT(varchar, '07/24/1959', 3), 7),
(743803665, 181566474, 'sgillespiem@oracle.com', 'Portugal', '97927 Kings Center', 'Shelly Gillespie', CONVERT(varchar, '06/03/1990', 3), 14),
(158643664, 906353689, 'sdixn@opensource.org', 'Portugal', '24 Red Cloud Parkway', 'Simonette Dix', CONVERT(varchar, '06/19/1775', 3), 20),
(926002807, 485517585, 'mlethburyo@hp.com', 'United States', '9674 Lawn Road', 'Mile Lethbury', CONVERT(varchar, '08/28/1970', 3), 9),
(373935393, 256724277, 'cdraysonp@apple.com', 'Portugal', '928 Ramsey Crossing', 'Chrisse Drayson', CONVERT(varchar, '02/16/1959', 3), 28),
(407566396, 300242894, 'imordonq@hhs.gov', 'Portugal', '1 Hazelcrest Way', 'Indira Mordon', CONVERT(varchar, '01/20/1978', 3), 16),
(798859288, 559878780, 'nconnerr@marriott.com', 'Portugal', '21400 Luster Pass', 'Nomi Conner', CONVERT(varchar, '04/05/1958', 3), 18),
(846156606, 587513357, 'vmifflins@redcross.org', 'Portugal', '1 Ilene Pass', 'Valene Mifflin', CONVERT(varchar, '05/22/1991', 3), 23),
(358074601, 375417430, 'bburwint@agespersorang.er', 'United States', '10 Fuller Park', 'Brigida Burwin', CONVERT(varchar, '02/28/1975', 3), 16),
(398520752, 916492724, 'hrisbieu@salon.com', 'Portugal', '084 Roxbury Court', 'Herc Risbie', CONVERT(varchar, '06/08/1986', 3), 26),
(557060544, 514118584, 'hkornv@photobucket.com', 'Portugal', '9108 Rockefeller Place', 'Hagan Korn', CONVERT(varchar, '09/18/1956', 3), 8),
(987087572, 808852218, 'ktrobridgew@amazon.de', 'Portugal', '0161 Anhalt Center', 'Krysta Trobridge', CONVERT(varchar, '04/20/1963', 3), 25),
(517869171, 528586669, 'tstofferx@ycombinator.com', 'Portugal', '4792 Clarendon Crossing', 'Trina Stoffer', CONVERT(varchar, '12/23/1952', 3), 9),
(172290052, 316069630, 'kdunsirey@archive.org', 'United States', '36 Redwing Drive', 'Kile Dunsire', CONVERT(varchar, '06/30/1963', 3), 15),
(787296142, 941041405, 'jstrettlez@cbslocal.com', 'United States', '971 Summerview Pass', 'Julee Strettle', CONVERT(varchar, '11/23/1981', 3), 25),
(810206886, 241684882, 'udinjes10@auda.org', 'Portugal', '618 Gina Drive', 'Ulises Dinjes', CONVERT(varchar, '08/15/1991', 3), 23),
(386276483, 697980704, 'fsenner11@jimdo.com', 'United States', '1164 Kings Lane', 'Ferdy Senner', CONVERT(varchar, '09/26/1968', 3), 13),
(120047134, 744449467, 'mnorcock12@irginia.nep', 'United States', '3719 Meadow Ridge Place', 'Meade Norcock', CONVERT(varchar, '12/18/1982', 3), 31),
(966667480, 492269619, 'tdeboo13@phpbb.com', 'Portugal', '51244 Farwell Terrace', 'Tommy Deboo', CONVERT(varchar, '01/12/1978', 3), 19),
(580807696, 765928114, 'cskeermor14@goo.gl', 'Portugal', '393 Stone Corner Plaza', 'Curtice Skeermor', CONVERT(varchar, '06/03/1957', 3), 24),
(572078444, 609965221, 'jskechley15@bloomberg.com', 'Portugal', '16925 Manufacturers Pass', 'Juli Skechley', CONVERT(varchar, '05/10/1956', 3), 23),
(774683084, 725107495, 'llougheed16@wix.com', 'United States', '60489 Muir Pass', 'Linette Lougheed', CONVERT(varchar, '07/31/1962', 3), 9),
(509212402, 758486520, 'cgullis17@blogspot.com', 'United States', '519 Superior Street', 'Craggy Gullis', CONVERT(varchar, '02/21/1961', 3), 17),
(448982122, 940978511, 'lackerman18@ashington.ed', 'United States', '2340 Glacier Hill Junction', 'Lelia Ackerman', CONVERT(varchar, '12/20/1986', 3), 24),
(382917290, 474907915, 'mhadingham19@foxnews.com', 'United States', '014 Straubel Court', 'Margarette Hadingham', CONVERT(varchar, '04/05/1973', 3), 9),
(881981267, 308154642, 'cburke1a@example.com', 'United States', '3 Hermina Way', 'Cindie Burke', CONVERT(varchar, '04/30/1952', 3), 18),
(582749792, 508398645, 'imalim1b@ocn. ne.jp', 'United States', '74 Golden Leaf Junction', 'Imogene Malim', CONVERT(varchar, '01/26/1975', 3), 26),
(400918282, 687041668, 'ncruikshank1c@free.fr', 'Portugal', '797 Homewood Circle', 'Ninette Cruikshank', CONVERT(varchar, '07/19/1972', 3), 31),
(126242396, 542016833, 'gsloan1d@si.edu', 'United States', '2721 Stang Street', 'Gerard Sloan', CONVERT(varchar, '11/15/1986', 3), 7),
(380372903, 595032083, 'acrowden1e@cargocollective.com', 'United States', '35 Mitchell Place', 'Annecorinne Crowden', CONVERT(varchar, '02/05/1979', 3), 11),
(182160601, 996014076, 'pgosart1f@digg.com', 'United States', '273 David Park', 'Paloma Gosart', CONVERT(varchar, '02/02/1984', 3), 7),
(966397898, 659633184, 'ogander1g@altervista.org', 'Portugal', '4795 Morning Road', 'Orson Gander', CONVERT(varchar, '11/28/1950', 3), 29),
(465185447, 892213077, 'tstains1h@tuttocitta.it', 'United States', '6889 Dakota Trail', 'Toinette Stains', CONVERT(varchar, '05/29/1979', 3), 30),
(710727033, 193290803, 'mgeratt1i@macromedia.com', 'Portugal', '6 East Crossing', 'Mikol Geratt', CONVERT(varchar, '12/18/1992', 3), 29),
(682549303, 423893078, 'ofuncheon1j@bbb.org', 'Portugal', '55209 Surrey Park', 'Oralee Funcheon', CONVERT(varchar, '08/27/1972', 3), 8),
(647485381, 319767688, 'ahillborne1k@unc.edu', 'United States', '2444 Warner Court', 'Alberik Hillborne', CONVERT(varchar, '12/07/1959', 3), 28),
(259034715, 646303690, 'asumers1l@furl.net', 'Portugal', '749 Montana Avenue', 'Anthe Sumers', CONVERT(varchar, '09/03/1991', 3), 13),
(203792838, 613193472, 'sbartalin1m@miitbeian.gov.cn', 'Portugal', '44361 Schurz Alley', 'Scotty Bartalin', CONVERT(varchar, '10/20/1988', 3), 11),
(350772013, 891015686, 'kchapiro1n@prlog.org', 'United States', '37 Burrows Lane', 'Ken Chapiro', CONVERT(varchar, '05/17/1983', 3), 9),
(447079727, 333808666, 'cgirsch1o@google.cn', 'United States', '144 Westridge Avenue', 'Celine Girsch', CONVERT(varchar, '04/09/1953', 3), 20),
(970805078, 278957003, 'llaverenz1p@ifeng.com', 'United States', '5334 Waywood Court', 'Liza Laverenz', CONVERT(varchar, '09/08/1980', 3), 9),
(319890401, 802963231, 'mberthelet1q@bizjournals.com', 'Portugal', '2990 Gina Road', 'Merrill Berthelet', CONVERT(varchar, '12/31/1990', 3), 20),
(667803865, 628731022, 'stanner1r@statcounter.com', 'Portugal', '07 Eggendart Circle', 'Sidonnie Tanner', CONVERT(varchar, '12/26/1988', 3), 30),
(583598600, 422485348, 'emckeady1s@51.la', 'Portugal', '6426 Scott Lane', 'Estele McKeady', CONVERT(varchar, '10/07/1980', 3), 26),
(140171089, 826198975, 'coutlaw1t@nymag.com', 'Portugal', '25 Dawn Hill', 'Che Outlaw', CONVERT(varchar, '04/01/1952', 3), 25),
(620929850, 719898442, 'jmoyne1u@dot.gov', 'United States', '678 Manufacturers Circle', 'Joice Moyne', CONVERT(varchar, '07/09/1992', 3), 29),
(345183082, 971674656, 'aidle1v@com.com', 'Portugal', '9462 Bunker Hill Court', 'Ali Idle', CONVERT(varchar, '01/20/1980', 3), 22),
(102582588, 494402043, 'dpirri1w@surveymonkey.com', 'Portugal', '36454 Fuller Terrace', 'Dru Pirri', CONVERT(varchar, '09/01/1996', 3), 16),
(607605985, 117745420, 'mconey1x@vk.com', 'United States', '52188 Hovde Circle', 'Melisandra Coney', CONVERT(varchar, '06/07/1984', 3), 13),
(236079519, 907623720, 'akeslake1y@psu.edu', 'Portugal', '0 Superior Street', 'Alvira Keslake', CONVERT(varchar, '11/10/1972', 3), 20),
(979173858, 510855602, 'psharram1z@360.cn', 'Portugal', '71 Tony Road', 'Pia Sharram', CONVERT(varchar, '09/23/1968', 3), 24),
(596431027, 306241363, 'chandke20@businesswire.com', 'United States', '0 Lakeland Road', 'Chancey Handke', CONVERT(varchar, '08/06/1972', 3), 8),
(794576171, 621324196, 'tloddy21@va.gov', 'Portugal', '3175 Evergreen Alley', 'Tatiana Loddy', CONVERT(varchar, '07/02/1956', 3), 15),
(242076715, 653995173, 'snewstead22@bc.co', 'UkiUnited States', '0543 Mayer Point', 'Silva Newstead', CONVERT(varchar, '01/24/1950', 3), 27),
(714706632, 752972364, 'lorhtmann23@list-manage.com', 'Portugal', '20 Mcbride Alley', 'Livvy Orhtmann', CONVERT(varchar, '06/24/1967', 3), 11),
(826152773, 334398835, 'fwindows24@trellian.com', 'Portugal', '8127 Moland Court', 'Flory Windows', CONVERT(varchar, '10/14/1995', 3), 29),
(616810639, 820262663, 'rcharity25@cam.ac.uk', 'Portugal', '9717 Birchwood Way', 'Reagan Charity', CONVERT(varchar, '02/19/1953', 3), 11),
(320180202, 912616154, 'iokynsillaghe26@c2.co', 'United States', '2 Mosinee Circle', 'Idell O Kynsillaghe', CONVERT(varchar, '07/08/1980', 3), 26),
(884970046, 171598681, 'igoneau27@java.com', 'Portugal', '1487 Dennis Road', 'Inga Goneau', CONVERT(varchar, '02/28/1991', 3), 22),
(681119997, 878952195, 'mpeake28@mazon.co', 'UpiUnited States', '412 Eggendart Crossing', 'Mortimer Peake', CONVERT(varchar, '12/14/1972', 3), 31),
(679737030, 406842964, 'mbeak29@ndependent.co', 'UkiUnited States', '94 Waywood Parkway', 'Marta Beak', CONVERT(varchar, '10/03/1986', 3), 14),
(250561411, 777934201, 'claurant2a@constantcontact.com', 'United States', '5 Cherokee Alley', 'Caprice Laurant', CONVERT(varchar, '03/01/1965', 3), 16),
(655762748, 287622002, 'msissens2b@purevolume.com', 'Portugal', '23 Mallory Terrace', 'Marlene Sissens', CONVERT(varchar, '08/18/1979', 3), 27),
(856993835, 272745950, 'pfillimore2c@youtu.be', 'Portugal', '7120 Esker Drive', 'Purcell Fillimore', CONVERT(varchar, '01/31/1950', 3), 15),
(357268460, 783832629, 'dguare2d@go.com', 'Portugal', '72328 Farragut Terrace', 'Danica Guare', CONVERT(varchar, '08/22/1951', 3), 9),
(528984892, 721793901, 'adumingo2e@github.com', 'Portugal', '73 Farmco Trail', 'Aldus Dumingo', CONVERT(varchar, '02/06/1961', 3), 16),
(669341314, 179546683, 'ayorston2f@examiner.com', 'United States', '78625 Northridge Street', 'Agneta Yorston', CONVERT(varchar, '05/18/1959', 3), 11),
(387559612, 413401066, 'ebruyett2g@ow.ly', 'Portugal', '97515 Bellgrove Trail', 'Edie Bruyett', CONVERT(varchar, '06/26/1986', 3), 9),
(763376727, 567647472, 'lmarkl2h@thetimes.co.uk', 'Portugal', '6682 Lukken Crossing', 'Lucky Markl', CONVERT(varchar, '04/03/1988', 3), 26),
(970992346, 891023120, 'dbeining2i@hibu.com', 'United States', '6 Main Parkway', 'Dylan Beining', CONVERT(varchar, '05/13/1990', 3), 30),
(643133064, 482353886, 'farro2j@qq.com', 'United States', '365 Division Junction', 'Felipe Arro', CONVERT(varchar, '09/11/1981', 3), 10),
(938581576, 602426043, 'rlangthorne2k@omniture.com', 'Portugal', '08578 Farragut Plaza', 'Raina Langthorne', CONVERT(varchar, '02/15/1988', 3), 12),
(502411946, 823905956, 'ohighway2l@flickr.com', 'Portugal', '4545 Twin Pines Court', 'Odell Highway', CONVERT(varchar, '05/20/1979', 3), 27),
(558224891, 807222783, 'msemkins2m@youtube.com', 'Portugal', '76 Mcbride Junction', 'Michelina Semkins', CONVERT(varchar, '07/09/1954', 3), 14),
(740033149, 773980469, 'dsothern2n@goo.gl', 'Portugal', '1612 Sauthoff Hill', 'Donn Sothern', CONVERT(varchar, '08/14/1995', 3), 28),
(407851262, 716281734, 'lgaitskill2o@wired.com', 'United States', '9669 Sloan Point', 'Lydie Gaitskill', CONVERT(varchar, '01/01/1961', 3), 10),
(474169357, 111655028, 'jcastleman2p@reuters.com', 'Portugal', '38 Arapahoe Pass', 'Jasun Castleman', CONVERT(varchar, '10/10/1988', 3), 20),
(257381749, 579431508, 'lquemby2q@wordpress.org', 'Portugal', '72989 Tennessee Parkway', 'Layne Quemby', CONVERT(varchar, '08/09/1985', 3), 11),
(776916797, 620430504, 'oyegorov2r@amazon.com', 'Portugal', '5816 Moose Hill', 'Onfre Yegorov', CONVERT(varchar, '04/23/1980', 3), 23),
(351618677, 611894755, 'gberzon2s@deviantart.com', 'Portugal', '9 Schiller Drive', 'Grantley Berzon', CONVERT(varchar, '06/25/1973', 3), 22),
(528453128, 640001685, 'mabramof2t@theglobeandmail.com', 'United States', '3754 Oriole Street', 'Marcelle Abramof', CONVERT(varchar, '07/07/1968', 3), 21),
(663732466, 520652083, 'twaulker2u@ozilla.or', 'Portugal', '3 Blue Bill Park Hill', 'Tobiah Waulker', CONVERT(varchar, '09/03/1987', 3), 16),
(980662430, 618049610, 'plorand2v@ehow.com', 'United States', '1450 Tony Road', 'Portia Lorand', CONVERT(varchar, '08/15/1972', 3), 21),
(713455592, 716556669, 'lpeizer2w@weibo.com', 'Portugal', '3 Commercial Trail', 'Laurice Peizer', CONVERT(varchar, '08/14/1970', 3), 8),
(161197331, 342850771, 'gmcmechan2x@ebay.com', 'Portugal', '866 Knutson Court', 'Garfield McMechan', CONVERT(varchar, '05/20/1987', 3), 23),
(770752001, 645630152, 'ecockill2y@foxnews.com', 'United States', '3 Sauthoff Plaza', 'Eyde Cockill', CONVERT(varchar, '12/03/1979', 3), 30),
(100893001, 824196680, 'fwilloughway2z@wired.com', 'Portugal', '5 Cardinal Avenue', 'Ferrell Willoughway', CONVERT(varchar, '04/02/1961', 3), 29),
(644777023, 353464492, 'sscourfield30@stanford.edu', 'United States', '697 Nevada Crossing', 'Sybille Scourfield', CONVERT(varchar, '06/05/1982', 3), 20),
(446608182, 685245851, 'nainger31@51.la', 'Portugal', '525 Lien Plaza', 'Nadya Ainger', CONVERT(varchar, '08/19/1983', 3), 31),
(690638899, 330867667, 'stimeby32@acquirethisname.com', 'United States', '99305 Continental Lane', 'Stacee Timeby', CONVERT(varchar, '11/03/1995', 3), 18),
(214306912, 732619452, 'edarbyshire33@oracle.com', 'United States', '95 Manufacturers Court', 'Erv Darbyshire', CONVERT(varchar, '07/10/1972', 3), 18),
(644290942, 702430381, 'lcancutt34@chron.com', 'Portugal', '08442 Spenser Drive', 'Linnell Cancutt', CONVERT(varchar, '01/26/1963', 3), 26),
(778987151, 270326428, 'fsevior35@bloglines.com', 'Portugal', '4200 Kennedy Way', 'Floris Sevior', CONVERT(varchar, '01/20/1995', 3), 14),
(724310191, 408753679, 'awimpenny36@csmonitor.com', 'Portugal', '911 Arapahoe Terrace', 'Adlai Wimpenny', CONVERT(varchar, '01/18/1955', 3), 18),
(406337057, 980528342, 'bexcell37@examiner.com', 'United States', '60 Clemons Center', 'Blayne Excell', CONVERT(varchar, '04/11/1975', 3), 14),
(894158241, 998479811, 'balvares38@craigslist.org', 'Portugal', '00458 Fremont Parkway', 'Biddy Alvares', CONVERT(varchar, '06/28/1983', 3), 17),
(343670162, 703252555, 'eovitts39@ithub.io', 'United States', '7967 Clyde Gallagher Point', 'Erina Ovitts', CONVERT(varchar, '07/03/1957', 3), 7),
(333486357, 664622293, 'tcowin3a@etsy.com', 'United States', '586 Pond Court', 'Tiffie Cowin', CONVERT(varchar, '08/03/1990', 3), 18),
(811867323, 711399056, 'rpriddie3b@vkontakte.ru', 'Portugal', '01099 Harbort Road', 'Ryann Priddie', CONVERT(varchar, '10/19/1988', 3), 22),
(442553051, 380417948, 'csibbald3c@mayoclinic.com', 'Portugal', '977 Blackbird Avenue', 'Constantine Sibbald', CONVERT(varchar, '05/23/1992', 3), 11),
(529827049, 190491247, 'aperrottet3d@instagram.com', 'Portugal', '6 Artisan Trail', 'Aridatha Perrottet', CONVERT(varchar, '02/11/1981', 3), 12),
(353916740, 113734157, 'wrivalland3e@yandex.ru', 'United States', '303 Anzinger Place', 'Wesley Rivalland', CONVERT(varchar, '10/23/1953', 3), 15),
(953054693, 136195399, 'bthorn3f@fema.gov', 'Portugal', '0406 New Castle Junction', 'Breena Thorn', CONVERT(varchar, '10/16/1990', 3), 31),
(132307947, 370185954, 'dscarasbrick3g@g.co', 'Portugal', '730 Eagan Parkway', 'Dinah Scarasbrick', CONVERT(varchar, '09/29/1965', 3), 30),
(166790697, 744202628, 'dmeyrick3h@ustream.tv', 'Portugal', '00342 La Follette Circle', 'Donnell Meyrick', CONVERT(varchar, '10/02/1996', 3), 29),
(899421136,559578121, 'swhitebread3i@slate.com', 'United States', '7652 Fulton Hill', 'Susie Whitebread', CONVERT(varchar, '07/20/1955', 3), 26),
(930536449,504056948, 'kjacobowicz3j@squarespace.com', 'United States', '450 American Street', 'Kirsten Jacobowicz', CONVERT(varchar, '07/27/1984', 3), 9),
(166603737,468504795, 'hbalf3k@histats.com', 'United States', '1491 Leroy Avenue', 'Halli Balf', CONVERT(varchar, '06/01/1967', 3), 11),
(149824324,378918982, 'bbrownsell3l@bluehost.com', 'United States', '364 Westend Plaza', 'Bibbye Brownsell', CONVERT(varchar, '04/29/1959', 3), 23),
(296446205,168963013, 'kgreenhalf3m@cnbc.com', 'United States', '98279 Duke Hill', 'Kristoffer Greenhalf', CONVERT(varchar, '07/03/1955', 3), 18),
(781652362, 660227611, 'mrisborough3n@amazon.de', 'Portugal', '0726 Gale Crossing', 'Maryjo Risborough', CONVERT(varchar, '11/16/1958', 3), 19),
(577507844,441161219, 'sfissenden3o@weather.com', 'United States', '3 Derek Terrace', 'Sergent Fissenden', CONVERT(varchar, '08/03/1992', 3), 29),
(917504404,760942443, 'gshapcote3p@dion.ne.jp', 'Portugal', '2122 Bunting Way', 'Garv Shapcote', CONVERT(varchar, '11/24/1974', 3), 12),
(112430472,306704928, 'rshovel3q@blogspot.com', 'United States', '70779 Commercial Junction', 'Randene Shovel', CONVERT(varchar, '02/18/1959', 3), 24),
(394919387, 801153834, 'dsearson3r@parallels.com', 'Portugal', '277 Sullivan Terrace', 'Dimitri Searson', CONVERT(varchar, '03/13/1981', 3), 20),
(395844855, 898009918, 'czamorano3s@surveymonkey.com', 'Portugal', '9 Delladonna Center', 'Cosette Zamorano', CONVERT(varchar, '05/29/1979', 3), 14),
(387448605,912192030, 'alittlejohns3t@tumblr.com', 'United States', '0888 Pearson Place', 'Annice Littlejohns', CONVERT(varchar, '05/02/1963', 3), 22),
(281843461,922246492, 'dclaasen3u@wikia.com', 'United States', '48 Monument Plaza', 'Dana Claasen', CONVERT(varchar, '06/19/1969', 3), 19),
(847282388, 208963458, 'rchennells3v@domainmarket.com', 'Portugal', '54443 Dennis Court', 'Reggis Chennells', CONVERT(varchar, '06/08/1996', 3), 25),
(185008856, 704179923, 'scadwell3w@cargocollective.com', 'Portugal', '734 Oneill Avenue', 'Stafani Cadwell', CONVERT(varchar, '10/31/1957', 3), 23),
(701506657, 450007766, 'cbettam3x@telegraph.co.uk', 'Portugal', '86 Mcguire Way', 'Christiana Bettam', CONVERT(varchar, '08/06/1992', 3), 21),
(362279864, 923904824, 'jmorando3y@ion.nep', 'United States', '94 Caliangt Terrace', 'Jeanelle Morando', CONVERT(varchar, '02/21/1953', 3), 23),
(135638979, 494064039, 'ccrux3z@howstuffworks.com', 'Portugal', '14860 Kipling Street', 'Clim Crux', CONVERT(varchar, '04/27/1972', 3), 27),
(554624964, 513883350, 'pcurrin40@howstuffworks.com', 'Portugal', '7 Iowa Pass', 'Pearl Currin', CONVERT(varchar, '12/09/1975', 3), 18),
(568651409, 591329034, 'gacott41@yelp.com', 'Portugal', '80583 Northport Court', 'Gaston Acott', CONVERT(varchar, '03/05/1963', 3), 7),
(892721698, 564900850, 'mrushbury42@google.fr', 'Portugal', '072 Pennsylvania Hill', 'Mickie Rushbury', CONVERT(varchar, '11/20/1976', 3), 15),
(877126972, 942837978, 'mlau43@ow.ly', 'Portugal', '3 Coleman Court', 'Margaret Lau', CONVERT(varchar, '02/10/1964', 3), 12),
(206931546, 163925152, 'kbuttery44@netlog.com', 'Portugal', '44 Hansons Center', 'Karlens Buttery', CONVERT(varchar, '10/03/1961', 3), 9),
(679572076, 484018399, 'oeickhoff45@baidu.com', 'Portugal', '0 Southridge Center', 'Obadiah Eickhoff', CONVERT(varchar, '03/17/1975', 3), 10),
(986313577,634815249, 'wyakovitch46@is.gd', 'United States', '3607 Bellgrove Drive', 'Waring Yakovitch', CONVERT(varchar, '03/12/1990', 3), 11),
(687643417, 643126856, 'spatley47@ask.com', 'Portugal', '7017 Corscot Drive', 'Spense Patley', CONVERT(varchar, '06/19/1950', 3), 11),
(160979339,354518335, 'jdunsire48@sakura.ne.jp', 'Portugal', '0845 Chive Plaza', 'Jesse Dunsire', CONVERT(varchar, '05/26/1954', 3), 21),
(353890447,428373374,'pcleghorn49@telegraph.co.uk', 'United States', '1 Green Ridge Drive', 'Pierre Cleghorn', CONVERT(varchar, '12/05/1971', 3), 9),
(468866841, 722345121, 'nkewley4a@livejournal.com', 'Portugal', '89320 Bay Road', 'Noella Kewley', CONVERT(varchar, '12/04/1965', 3), 10),
(349805385,383335075, 'jbestwick4b@natgeo.com', 'United States', '0812 Sugar Plaza', 'Jeanna Bestwick', CONVERT(varchar, '11/06/1974', 3), 22)


INSERT INTO ACCOUNT_PLAN([name],benefits_description)
VALUES
('NOR','Normal package. Montly commission.'),
('STU','Student package. No commissions.'),
('SIL','Package for Silver-level clients. Lower commissions.'),
('GOL','Package for Gold-level clients. Yearly commission only.'),
('PLT','Package for Platinum-level clients. No commissions.')

INSERT INTO ACCOUNT(IBAN,avail_balance,BIC_SWIFT,account_plan)
VALUES
('PT70003506837967677449883',$10000.0,'BKCOBRSP001','NOR'),
('PT36003506837961176739512',$5640.0,'BKCOBRSP002','NOR'),
('PT94003506834452345985228',$3600.0,'BKCOBRSP003','STU'),
('PT78003506836234299177621',$20000.5,'BKCOBRSP004','GOL'),
('PT09003506836261256855487',$17000.4,'BKCOBRSP111','NOR')


INSERT INTO ACCOUNT_HOLDER(client_id,account_id)
VALUES
-- Conta partilhada
(288978276,1),
(969776115,1),
(969776115,2),
(172290052,2),
(896873209,2),
-- Contas individuais
(729185653,3),
(900626074,4),
(299606995,5)


INSERT INTO "CARD"(card_number,name_on_card,cvv,validity,account_id)
VALUES
(3126475635241623,'Thea Younie',145,CONVERT(varchar, '01/12/2022', 3),1),
(3731273128738127,'Melva Keedy',546,CONVERT(varchar, '01/05/2022', 3),2),
(3213213214124235,'Dot Hadgkiss',675,CONVERT(varchar, '01/03/2023', 3),3),
(7345345345435252,'Editha Paprotny',564,CONVERT(varchar, '01/03/2023', 3),4),
(6547437546436365,'Maighdiln Leedes',345,CONVERT(varchar, '01/03/2023', 3),5)


INSERT INTO CREDIT(account_id,commission,plafond)
VALUES
(2,1,$2000.0),
(4,6,$7500.0)

INSERT INTO DEBIT(account_id,unavail_balance)
VALUES
(1,$11064.37),
(3,$3700.5),
(5,$17000.4)

INSERT INTO LOAN(paid_amount,total_amount,interest_rate,client_id)
VALUES
($4625.3,$10000.34,5.2,509212402),
($5642.0,$5000.0,10.0,580807696),
($2010.0,$1211.0,8.5,172290052)

INSERT INTO INVESTMENT(balance,profit_rate,client_id)
VALUES
($72.2,0.23,794576171),
($50181.2,7.0,242076715),
($10000.0,40.0,810206886),
($7281.2,70.23,572078444),
($4562.2,200.23,517869171)

INSERT INTO DEPOSIT(id,payout_frequency)
VALUES
(1,1),
(2,3),
(5,12)

INSERT INTO STOCK_PORTFOLIO(id,risk)
VALUES
(3, 2.03),
(4, 24.72)