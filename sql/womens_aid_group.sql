--Marcella Green
--Project Part 4

--Create tables

CREATE TABLE Manager (
		ManagerID		INT				PRIMARY KEY NOT NULL,
		FirstName		VARCHAR2(50)	NOT NULL,
		LastName		VARCHAR2(50)	NOT NULL,
		AreaCode		CHAR(3)			NOT NULL,
		PhoneNumber		CHAR(8)			NOT NULL,
		EmailAddress	VARCHAR2(50)	NOT NULL
);

CREATE TABLE Region (
		RegionID		INT				PRIMARY KEY NOT NULL,
		Name			VARCHAR(75)		NOT NULL,
		ManagerID		INT,
		CONSTRAINT FK_Region_ManagerID FOREIGN KEY(ManagerID) REFERENCES Manager(ManagerID)
);

CREATE TABLE Client (
		ClientID		INT				PRIMARY KEY NOT NULL,
		FirstName		VARCHAR2(50)	NOT NULL,
		LastName		VARCHAR2(50)	NOT NULL,
		AreaCode		CHAR(3)			NOT NULL,
		PhoneNumber		CHAR(8)			NOT NULL,
		EmailAddress	VARCHAR2(50)	NOT NULL,
		RegionID		INT,
		CONSTRAINT FK_Client_RegionID FOREIGN KEY(RegionID) REFERENCES Region(RegionID)
);

CREATE TABLE ResourceType (
		ResourceTypeID	INT				PRIMARY KEY NOT NULL,
		Type			VARCHAR2(50)	NOT NULL
);

CREATE TABLE Partner (
		PartnerID		INT				PRIMARY KEY NOT NULL,
		Name			VARCHAR2(75)	NOT NULL,
		AreaCode		CHAR(3)			NOT NULL,
		PhoneNumber		CHAR(8)			NOT NULL,
		EmailAddress	VARCHAR2(50)	NOT NULL,
		ResourceTypeID	INT,
		CONSTRAINT FK_Resource_ResourceTypeID FOREIGN KEY(ResourceTypeID) REFERENCES ResourceType(ResourceTypeID)
);

CREATE TABLE ClientPartner (
		ClientID		INT,
		PartnerID		INT,
		Active			CHAR(1)			NOT NULL,
		StartDate		DATE			NOT NULL,
		EndDate			DATE,
		CONSTRAINT FK_Client_ClientID FOREIGN KEY(ClientID) REFERENCES Client(ClientID),
		CONSTRAINT FK_Partner_PartnerID FOREIGN KEY(PartnerID) REFERENCES Partner(PartnerID),
		CONSTRAINT PK_ClientID_PartnerID PRIMARY KEY(ClientID, PartnerID)
);

--Insert data

--Manager

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1001, 'Christin', 'Maddock', '514', '474-4498', 'cmaddock0@soup.io');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1002, 'Guendolen', 'Gier', '723', '979-9515', 'ggier1@comsenz.com');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1003, 'Northrup', 'Ertelt', '406', '291-3245', 'nertelt2@gnu.org');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1004, 'Jemmie', 'Piscotti', '841', '398-9727', 'jpiscotti3@blogger.com');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1005, 'Kristoforo', 'Chesterton', '188', '879-8363', 'kchesterton4@de.vu');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1006, 'Natka', 'Seals', '480', '886-3375', 'nseals5@example.com');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1007, 'Bria', 'Pelz', '310', '234-6844', 'bpelz6@domainmarket.com');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1008, 'Penni', 'Burwin', '589', '723-4673', 'pburwin7@sina.com.cn');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1009, 'Levey', 'Bilbey', '279', '230-5098', 'lbilbey8@sfgate.com');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1010, 'Roseline', 'Frichley', '826', '350-6753', 'rfrichley9@scribd.com');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1011, 'Tommy', 'De Caville', '732', '341-8726', 'tdecavillea@bbc.co.uk');

INSERT INTO Manager
	(ManagerID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress)
VALUES
	(1012, 'Rockey', 'Pringer', '948', '162-9928', 'rpringerb@google.fr');

--Region

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(101, 'Boston', 1001);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(102, 'New York', 1002);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(103, 'Philadelphia', 1003);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(104, 'Cleveland', 1004);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(105, 'Richmond', 1005);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(106, 'Atlanta', 1006);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(107, 'Chicago', 1007);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(108, 'St. Louis', 1008);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(109, 'Minneapolis', 1009);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(110, 'Kansas City', 1010);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(111, 'Dallas', 1011);

INSERT INTO Region
	(RegionID, Name, ManagerID)
VALUES
	(112, 'San Francisco', 1012);

--Client

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100001, 'Helen', 'Gleasane', '615', '493-5299', 'hgleasane0@phpbb.com', 101);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100002, 'Ethel', 'Minghetti', '926', '981-3150', 'eminghetti1@merriam-webster.com', 109);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100003, 'Karola', 'Attew', '245', '550-0870', 'kattew2@ca.gov', 101);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100004, 'Rachael', 'Moores', '907', '494-9877', 'rmoores3@harvard.edu', 106);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100005, 'Cristie', 'Hinckley', '709', '502-5980', 'chinckley4@gov.uk', 103);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100006, 'Odelia', 'MacNeil', '878', '530-6192', 'omacneil5@noaa.gov', 106);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100007, 'Amitie', 'Pinkstone', '446', '844-9530', 'apinkstone6@amazon.de', 105);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100008, 'Myra', 'Janouch', '945', '126-6780', 'mjanouch7@rediff.com', 103);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100009, 'Gill', 'Yarranton', '980', '460-8065', 'gyarranton8@shinystat.com', 107);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100010, 'Jed', 'Adrienne', '978', '849-7907', 'jadrienne9@usgs.gov', 101);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100011, 'Damiano', 'Klimashevich', '647', '736-7122', 'dklimashevicha@i2i.jp', 101);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100012, 'Keely', 'Byass', '936', '665-4018', 'kbyassb@amazon.com', 105);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100013, 'Romy', 'Brownhill', '964', '602-1007', 'rbrownhillc@issuu.com', 109);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100014, 'Winona', 'Rahlof', '914', '866-2246', 'wrahlofd@istockphoto.com', 111);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100015, 'Kristel', 'Grigaut', '470', '747-8691', 'kgrigaute@pagesperso-orange.fr' ,106);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100016, 'Theo', 'Burner', '677', '470-7230', 'tburnerf@addtoany.com', 108);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100017, 'Tobin', 'Shawcross', '206', '200-1418', 'tshawcrossg@army.mil', 101);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100018, 'Carolann', 'Sesser', '193', '640-0099', 'csesserh@epa.gov', 111);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100019, 'Mahmud', 'Benard', '477', '187-5514', 'mbenardi@cafepress.com', 107);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100020, 'Maribelle', 'Lamprey', '283', '298-8536', 'mlampreyj@histats.com', 104);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100021, 'Ermentrude', 'Daskiewicz', '841', '561-5272', 'edaskiewiczk@reference.com', 109);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100022, 'Mersey', 'Morden', '126', '802-8384', 'mmordenl@cisco.com', 106);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100023, 'Carolyn', 'Kippen', '238', '414-5269', 'ckippenm@sciencedirect.com', 110);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100024, 'Lemmy', 'Pietranek', '282', '423-3425', 'lpietranekn@dyndns.org', 112);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100025, 'Marylinda', 'Bachellier', '245', '619-8906', 'mbachelliero@sitemeter.com', 108);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100026, 'Neils', 'Gerrans', '287', '899-5277', 'ngerransp@sfgate.com', 101);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100027, 'Muire', 'Swaton', '778', '697-7460', 'mswatonq@salon.com', 110);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100028, 'Christie', 'Stuttard', '635', '926-4553', 'cstuttardr@mozilla.com', 109);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100029, 'Farrah', 'Scardifield', '180', '756-2448', 'fscardifields@homestead.com', 108);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100030, 'Tan', 'McLuckie', '947', '187-7296', 'tmcluckiet@hp.com', 111);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100031, 'Deerdre', 'Geffcock', '400', '295-3075', 'dgeffcocku@soundcloud.com', 104);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100032, 'Dusty', 'Peyro', '704', '377-4839', 'dpeyrov@csmonitor.com', 103);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100033, 'Modestia', 'Redpath', '829', '748-5705', 'mredpathw@hibu.com', 108);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100034, 'Harcourt', 'Crichmere', '187', '927-5927', 'hcrichmerex@booking.com', 105);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100035, 'Edlin', 'Vahey', '845', '121-1319', 'evaheyy@whitehouse.gov', 112);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100036, 'Johny', 'Lawrance', '381', '162-2805', 'jlawrancez@cmu.edu', 101);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100037, 'Cindra', 'Cometson', '969', '473-5326', 'ccometson10@icq.com', 103);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100038, 'Jsandye', 'Seeks', '366', '725-3289', 'jseeks11@eventbrite.com', 108);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100039, 'Teriann', 'Parell', '937', '829-2386', 'tparell12@hc360.com', 110);

INSERT INTO Client
	(ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
VALUES
	(100040, 'Gan', 'Peres', '924', '346-5740', 'gperes13@fotki.com', 108);

--ResourceType

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(10, 'Career');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(11, 'Childcare');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(12, 'Divorce');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(13, 'Financial');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(14, 'Housing');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(15, 'Legal');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(16, 'Medical');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(17, 'Mental Health');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(18, 'Women''s Health');

INSERT INTO ResourceType
	(ResourceTypeID, Type)
VALUES
	(19, 'Sobriety');

--Partner

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10001, 'Padberg-Price', '705', '819-1686', 'hashbey0@ca.gov', 10);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10002, 'Kessler, Pfeffer and Lebsack', '369', '811-9732', 'efetherston1@squidoo.com', 13);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10003, 'Shanahan LLC', '143', '599-3623', 'cbrewin2@blogspot.com', 19);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10004, 'Swaniawski, Tromp and Marquardt', '475', '552-4513', 'tedgeley3@blogspot.com', 17);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10005, 'Adams Inc', '942', '834-1373', 'bduiged4@senate.gov', 18);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10006, 'Sauer LLC', '795', '875-2699', 'jpuncher5@hc360.com', 15);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10007, 'Blanda, Armstrong and Stoltenberg', '714', '509-8860', 'mainger6@paypal.com', 14);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10008, 'Lind Group', '681', '897-5439', 'bshiel7@domainmarket.com', 16);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10009, 'Swift Group', '529', '352-6753', 'rgalbreth8@sogou.com', 15);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10010, 'Jakubowski-Beatty', '920', '126-6905', 'sdureden9@hostgator.com', 14);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10011, 'Corwin, Hansen and Carter', '633', '704-6262', 'agrigoliisa@ning.com', 18);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10012, 'Schmitt, Klein and VonRueden', '383', '237-6751', 'tpiggenb@acquirethisname.com', 16);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10013, 'Cummings Group', '504', '231-8991', 'eruprichc@soundcloud.com', 10);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10014, 'Olson, Krajcik and Schuster', '975', '129-2762', 'fcrossmand@canalblog.com', 18);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10015, 'Stracke Inc', '408', '174-4937', 'bdenforde@bing.com', 12);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10016, 'Hintz-Breitenberg', '186', '666-9505', 'trustf@google.co.uk', 14);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10017, 'Konopelski-Swift', '637', '448-7661', 'rsollarsg@cargocollective.com', 11);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10018, 'Bogan, Lehner and Bogisich', '226', '142-9320', 'chalfordh@npr.org', 16);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10019, 'Brekke, Kessler and Rempel', '819', '373-1556', 'bborleyi@marketwatch.com', 17);

INSERT INTO Partner
	(PartnerID, Name, AreaCode, PhoneNumber, EmailAddress, ResourceTypeID)
VALUES
	(10020, 'Carroll, Koelpin and Rath', '763', '597-4479', 'aguillotj@netlog.com', 11);

--ClientPartner

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100023, 10016, 't', '19-Sep-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100016, 10004, 't', '14-Apr-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100022, 10005, 't', '07-Feb-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100037, 10019, 't', '14-Mar-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100028, 10005, 't', '03-Feb-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100020, 10015, 't', '22-Feb-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100028, 10004, 't', '18-Dec-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100011, 10003, 't', '19-Jan-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100030, 10002, 't', '27-Jul-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100031, 10015, 't', '24-Jul-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100039, 10015, 'f', '19-Mar-2021', '12-Sep-2022');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100040, 10002, 't', '19-Feb-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100015, 10002, 't', '11-Feb-2023', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100015, 10015, 't', '04-Nov-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100008, 10018, 't', '23-Dec-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100032, 10006, 't', '23-Jan-2023', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100014, 10019, 'f', '29-May-2020', '04-Jun-2022');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100018, 10006, 't', '17-Apr-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100005, 10004, 't', '22-Jan-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100033, 10008, 't', '02-Sep-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100034, 10011, 't', '17-Jan-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100018, 10001, 't', '27-May-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100029, 10007, 't', '12-Jul-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100017, 10003, 't', '12-Mar-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100038, 10005, 't', '28-May-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100024, 10004, 't', '26-Feb-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100018, 10014, 't', '16-Apr-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100025, 10011, 'f', '23-Nov-2021', '20-Aug-2022');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100024, 10016, 't', '09-Nov-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100013, 10004, 't', '17-Jan-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100035, 10015, 't', '26-Sep-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100031, 10016, 't', '31-Oct-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100026, 10001, 'f', '18-Oct-2022', '06-Feb-2023');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100010, 10006, 't', '20-Feb-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100031, 10012, 't', '03-Apr-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100028, 10007, 'f', '30-Apr-2020', '18-Jan-2023');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100040, 10009, 't', '01-Nov-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100020, 10007, 't', '03-Aug-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100016, 10012, 't', '25-Apr-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100001, 10003, 't', '02-May-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100006, 10013, 't', '15-Jul-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100009, 10011, 't', '18-May-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100002, 10002, 'f', '09-May-2020', '26-Jul-2022');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100016, 10014, 't', '16-Jul-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100020, 10011, 't', '20-Oct-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100007, 10002, 'f', '29-Jan-2022', '19-Mar-2022');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100036, 10020, 't', '18-Dec-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100019, 10011, 'f', '05-Sep-2020', '30-Jul-2022');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100009, 10008, 't', '13-Apr-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100027, 10008, 't', '28-Dec-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100030, 10015, 't', '12-Jun-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100003, 10014, 't', '06-Apr-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100021, 10006, 't', '22-Sep-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100004, 10005, 't', '02-Sep-2020', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100001, 10005, 't', '20-Jul-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100011, 10009, 't', '02-Aug-2022', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100038, 10012, 'f', '08-Mar-2020', '17-Oct-2022');

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100012, 10010, 't', '22-Feb-2023', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100010, 10007, 't', '01-Aug-2021', null);

INSERT INTO ClientPartner
	(ClientID, PartnerID, Active, StartDate, EndDate)
VALUES
	(100001, 10012, 't', '30-May-2022', null);

--Commit tables
COMMIT;

--Create stored procedures

--All Contact Info

CREATE OR REPLACE PROCEDURE AllContactInfo_sp

AS ACI SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        April 9, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Uses a union to return phone number and email address of all
                clients and all managers by last name.

    Example: EXEC AllContactInfo_sp

CHANGE HISTORY
Date            Modified By     Notes
4/09/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN ACI FOR

	SELECT      C.LastName,
	            C.FirstName,
	            CONCAT(C.AREACODE, CONCAT( '-', C.PHONENUMBER)) AS PhoneNumber,
	            C.EmailAddress
	FROM        Client C

	UNION

	SELECT      M.LastName,
	            M.FirstName,
	            CONCAT(M.AREACODE, CONCAT( '-', M.PHONENUMBER)) AS PhoneNumber,
	            M.EmailAddress
	FROM        Manager M;

DBMS_SQL.RETURN_RESULT(ACI);

END;

/

--Active Clients

CREATE OR REPLACE PROCEDURE ActiveClients_sp

AS AC SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        April 9, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Uses a sub query to list currently active clients, their contact
                information, their region, the region's manager and manager's
                contact info.

    Example: EXEC ActiveClients_sp

CHANGE HISTORY
Date            Modified By     Notes
04/09/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN AC FOR

    SELECT      CONCAT(C.FirstName, CONCAT(' ', C.LastName)) AS Client,
                CONCAT(C.AREACODE, CONCAT( '-', C.PHONENUMBER)) AS ClientPhone,
                C.EmailAddress AS ClientEmail,
                R.Name AS Region,
                CONCAT(M.FirstName, CONCAT(' ', M.LastName)) AS Manager,
                CONCAT(M.AREACODE, CONCAT( '-', M.PHONENUMBER)) AS ManagerPhone,
                M.EmailAddress AS ManagerEmail
    FROM        (SELECT CP.ClientID
                FROM ClientPartner CP
                WHERE Active = 't') AC
    INNER JOIN  Client C
    ON          AC.ClientID = C.ClientID
    INNER JOIN  Region R
    ON          C.RegionID = R.RegionID
    INNER JOIN  Manager M
    ON          R.ManagerID = M.ManagerID
    ORDER BY    R.Name;


DBMS_SQL.RETURN_RESULT(AC);

END;

/

--Number of clients per region

CREATE OR REPLACE PROCEDURE CountClientRegions_sp

AS CCR SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        April 9, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Returns number of clients in each region in decending order.

    Example: EXEC CountClientRegions_sp

CHANGE HISTORY
Date            Modified By     Notes
04/09/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN CCR FOR

    SELECT      COUNT(C.ClientID) AS NumberOfClients, R.Name AS Region
    FROM        Client C
    INNER JOIN  Region R
    ON          C.RegionID = R.RegionID
    GROUP BY    R.Name
    ORDER BY    COUNT(C.ClientID) DESC;

DBMS_SQL.RETURN_RESULT(CCR);

END;

/

--Number of clients per partner

CREATE OR REPLACE PROCEDURE CountClientPartner_sp

AS CCP SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        April 9, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Returns number of clients for each partner including partners
                with no clients.

    Example: EXEC CountClientPartner_sp

CHANGE HISTORY
Date            Modified By     Notes
04/09/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN CCP FOR

    SELECT              Count(C.PartnerID) AS NumberOfClients, P.Name AS Partner
    FROM                ClientPartner C
    RIGHT OUTER JOIN    Partner P
    ON                  C.PartnerID = P.PartnerID
    GROUP BY            P.Name
    ORDER BY            Count(C.PartnerID) DESC;

DBMS_SQL.RETURN_RESULT(CCP);

END;

/

--Number of clients per resource type

CREATE OR REPLACE PROCEDURE CountClientTypes_sp

AS CCT SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        April 9, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Returns number of clients utilizing each resource type in descending order.

    Example: EXEC CountClientTypes_sp

CHANGE HISTORY
Date            Modified By     Notes
04/09/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/


BEGIN

OPEN CCT FOR

    SELECT      COUNT(CP.ClientID) AS NumberOfClients, RT.Type
    FROM        ClientPartner CP
    INNER JOIN  Partner P
    ON          CP.PartnerID = P.PartnerID
    INNER JOIN  ResourceType RT
    ON          P.ResourceTypeID = RT.ResourceTypeID
    GROUP BY    P.ResourceTypeID, RT.Type
    ORDER BY    COUNT(CP.ClientID) DESC;

DBMS_SQL.RETURN_RESULT(CCT);

END;

/

--Client History

CREATE OR REPLACE PROCEDURE ClientHistory_sp
(
	pClientID	IN NUMBER
)
AS CH SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        April 9, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Uses a parameter to view the history for specific client  when
                passed a client ID ordered by date started.

    Example:	DECLARE
    				pClientID NUMBER(38);
    			BEGIN
    				ClientHistory_sp(100001);
    			END;

CHANGE HISTORY
Date            Modified By     Notes
04/09/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN CH FOR

	SELECT      CONCAT(C.FirstName, CONCAT(' ', C.LastName)) AS Client,
	            P.Name AS Partner,
	            CONCAT(P.AREACODE, CONCAT( '-', P.PHONENUMBER)) As PartnerPhone,
	            P.EmailAddress as PartnerEmail,
	            RT.Type As ResourceType,
	            R.Name AS Region,
	            CP.StartDate AS StartDate,
	            CP.EndDate AS EndDate,
	            CP.Active AS Active
	FROM        Client C
	INNER JOIN  ClientPartner CP
	ON          C.ClientID = CP.ClientID
	INNER JOIN  Partner P
	ON          CP.PartnerID = P.PartnerID
	INNER JOIN  ResourceType RT
	ON          P.ResourceTypeID = RT.ResourceTypeID
	INNER JOIN  Region R
	ON          C.RegionID = R.RegionID
	WHERE       C.ClientID = pClientID
	ORDER BY    CP.StartDate;

DBMS_SQL.RETURN_RESULT(CH);

END;

/

--Insert Client

CREATE OR REPLACE PROCEDURE InsertClient_sp
(
    pClientID       IN NUMBER,
    pFirstName      IN VARCHAR2,
    pLastName       IN VARCHAR2,
    pAreaCode       IN CHAR,
    pPhoneNumber    IN CHAR,
    pEmailAddress   IN VARCHAR2,
    pRegionID       IN NUMBER
)
AS IC SYS_REFCURSOR;


/*-------------------------------------------------------------------------------------------------
CREATED:        April 9, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Transactional query to insert a new client into the client table.

    Example:	Perform insert:

                DECLARE
                    pClientID       NUMBER(38);
                    pFirstName      VARCHAR2(50);
                    pLastName       VARCHAR2(50);
                    pAreaCode       CHAR(3);
                    pPhoneNumber    CHAR(8);
                    pEmailAddress   VARCHAR2(50);
                    pRegionID       NUMBER(38);
    			BEGIN
    				InsertClient_sp(100041, 'Mary', 'Watson', '342', '526-2905', 'mwatson@email.com', 112);
    			END;

                Check insert:

                SELECT  *
                FROM    Client
                WHERE   ClientID = 100041;

CHANGE HISTORY
Date            Modified By     Notes
04/09/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

    INSERT INTO Client
        (ClientID, FirstName, LastName, AreaCode, PhoneNumber, EmailAddress, RegionID)
    VALUES
        (pClientID, pFirstName, pLastName, pAreaCode, pPhoneNumber, pEmailAddress, pRegionID);

END;

/

--Client Tenure

CREATE OR REPLACE PROCEDURE ClientTenure_sp

AS CT SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        May 7, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Uses an aggregate and having to show clients with tenure over 2 years

    Example: EXEC ClientTenure_sp

CHANGE HISTORY
Date            Modified By     Notes
05/07/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN CT FOR

    SELECT      DISTINCT CP.ClientID, C.FirstName, C.LastName, ROUND(MAX(NVL(CP.EndDate,CURRENT_DATE)) - MIN(CP.StartDate),0) AS TenureInDays
    FROM        ClientPartner CP
    INNER JOIN  Client C
    ON          CP.ClientID = C.ClientID
    GROUP BY    CP.ClientID, C.FirstName, C.LastName
    HAVING      ROUND(MAX(NVL(CP.EndDate,CURRENT_DATE)) - MIN(CP.StartDate),0) > 730
    ORDER BY    TenureInDays DESC;

DBMS_SQL.RETURN_RESULT(CT);

END;

/

--Client Partner Status

CREATE OR REPLACE PROCEDURE ClientPartnerStatus_sp

AS CPS SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------
CREATED:        May 7, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Uses a case statement to show the status of each client partner relationship

    Example: EXEC ClientPartnerStatus_sp

CHANGE HISTORY
Date            Modified By     Notes
05/07/2023      MGreen          Creating procedure
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN CPS FOR

    SELECT      CONCAT(C.FirstName, CONCAT(' ', C.LastName)) AS Client,
                P.Name As Partner, 
                CASE WHEN CP.EndDate IS NULL
                THEN 'Active'
                ELSE 'Inactive'
                END AS Status
    FROM        ClientPartner CP
    INNER JOIN  Client C
    ON          CP.ClientID = C.ClientID
    INNER JOIN  Partner P
    ON          CP.PartnerID = P.PartnerID
    ORDER BY    P.PartnerID;
    

DBMS_SQL.RETURN_RESULT(CPS);

END;

/

--Commit procedures
COMMIT;

--Create views

--ClientReport

CREATE OR REPLACE VIEW ClientReport_vw

AS

/*-------------------------------------------------------------------------------------------------
CREATED:        May 7, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Used to look up client data

    Example:	SELECT	ClientName, ClientPhone, Region, ManagerName, ManagerPhone, ManagerEmail
    			FROM	ClientReport_vw;

CHANGE HISTORY
Date            Modified By     Notes
05/07/2023      MGreen          Creating view
----------------------------------------------------------------------------------------------------*/

    SELECT      CONCAT(C.FirstName, CONCAT(' ', C.LastName)) AS ClientName,
                CONCAT(C.AREACODE, CONCAT( '-', C.PHONENUMBER)) AS ClientPhone,
                C.EmailAddress AS ClientEmail,
                R.Name AS Region,
                CONCAT(M.FirstName, CONCAT(' ', M.LastName)) AS ManagerName,
                CONCAT(M.AREACODE, CONCAT( '-', M.PHONENUMBER)) AS ManagerPhone,
                M.EmailAddress AS ManagerEmail,
                COUNT(CP.ClientID) AS Engagement
    FROM        Client C
    INNER JOIN  Region R
    ON          C.RegionID = R.RegionID
    INNER JOIN  Manager M
    ON          R.ManagerID = M.ManagerID
    INNER JOIN  ClientPartner CP
    ON          C.ClientID = CP.ClientID
    GROUP BY    CONCAT(C.FirstName, CONCAT(' ', C.LastName)), CONCAT(C.AREACODE, CONCAT( '-', C.PHONENUMBER)), C.EmailAddress, R.Name, CONCAT(M.FirstName, CONCAT(' ', M.LastName)), CONCAT(M.AREACODE, CONCAT( '-', M.PHONENUMBER)), M.EmailAddress
    ORDER BY    ClientName;

/

--PartnerReport

CREATE OR REPLACE VIEW PartnerReport_vw

AS

/*-------------------------------------------------------------------------------------------------
CREATED:        May 7, 2023
AUTHOR:         Marcella Green
DESCRIPTION:    Used to look up partner data

    Example:	SELECT	PartnerName, PartnerPhone, PartnerEmail, ResourceType
    			FROM	PartnerReport_vw;

CHANGE HISTORY
Date            Modified By     Notes
05/07/2023      MGreen          Creating view
----------------------------------------------------------------------------------------------------*/

SELECT      P.Name As PartnerName,
            CONCAT(P.AREACODE, CONCAT( '-', P.PHONENUMBER)) AS PartnerPhone,
            P.EmailAddress AS PartnerEmail,
            RT.Type AS ResourceType
FROM        Partner P
INNER JOIN  ResourceType RT
ON          P.ResourceTypeID = RT.ResourceTypeID;

/

--Commit views
COMMIT;

/*
--Drop views, procedures, and tables
DROP VIEW ClientReport_vw;
DROP VIEW PartnerReport_vw;
DROP PROCEDURE AllContactInfo_sp;
DROP PROCEDURE ActiveClients_sp;
DROP PROCEDURE CountClientRegions_sp;
DROP PROCEDURE CountClientPartner_sp;
DROP PROCEDURE CountClientTypes_sp;
DROP PROCEDURE ClientHistory_sp;
DROP PROCEDURE InsertClient_sp;
DROP PROCEDURE ClientTenure_sp;
DROP PROCEDURE ClientPartnerStatus_sp;
DROP TABLE ClientPartner;
DROP TABLE Partner;
DROP TABLE ResourceType;
DROP TABLE Client;
DROP TABLE Region;
DROP TABLE Manager;
*/

