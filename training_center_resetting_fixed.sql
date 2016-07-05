CREATE DEFINER=`root`@`localhost` PROCEDURE `training_center_resetting`()
BEGIN
	-- Empty tables and reset auto_increments
	SET FOREIGN_KEY_CHECKS=0;
	TRUNCATE TABLE class;
	TRUNCATE TABLE class_member;
	TRUNCATE TABLE document;
	TRUNCATE TABLE person;
	TRUNCATE TABLE project;
	TRUNCATE TABLE team;
	TRUNCATE TABLE team_member;
	SET FOREIGN_KEY_CHECKS=1;

	-- Insert data

	INSERT INTO person (person_id, first_name, last_name, address, zip_code, town, email, mobile_phone, phone, is_trainer, is_admin, password, picture_location, created_at, confirmed_at, confirmation_token, renew_password_token) VALUES
	(1, 'Michelle', 'Spencer', '62 Ludington Crossing', '14842', 'São Miguel do Guamá', 'mspencer0@amazon.com', '765 231 2374', '802 649 2764', '1', '0', 'uA6FEXnF1', 'http://dummyimage.com/188x193.jpg/dddddd/000000', '2015-09-26 14:04:01', '2015-10-23 09:54:55', '1Km8axbvnoJDmxNUdKEHXcbEHoqxfzn6iC', '1GA47jLMe9pyB9j6kXxvVtS1cc6gAwrMKz'),
	(2, 'Rose', 'Gardner', '88 Birchwood Trail', '74283', 'Sandur', 'rgardner1@princeton.edu', '903 464 6887', '163 471 5975', '0', '0', 'p9Cihz7l', 'http://dummyimage.com/129x209.jpg/ff4444/ffffff', '2015-09-25 13:46:09', '2015-10-27 02:39:30', '1Crai9FjXHBkjzvm5ggP7GednfQij4rgQf', '17SJeEJkSG2tELTasdpAEYQk2Fwvrz1Cor'),
	(3, 'Eric', 'Gilbert', '08813 Dryden Circle', '61217', 'El Potrero', 'egilbert2@cnn.com', '390 910 0789', '309 430 0481', '1', '0', '1NSsvYnCju', 'http://dummyimage.com/213x208.png/5fa2dd/ffffff', '2015-09-16 17:12:30', '2015-10-21 11:04:40', '1Ggt2MDwcDT1eK4zZe2dd7DpMN3XXtX97L', '1HyEkBVvwgBKpLqRzsdv7Z9R5irkqCukTu'),
	(4, 'Carolyn', 'Thompson', '7055 Dovetail Way', '92883', 'Dushan', 'cthompson3@nsw.gov.au', '862 780 5405', '176 578 2637', '0', '0', 'aeWUkWPLbE', 'http://dummyimage.com/163x183.jpg/cc0000/ffffff', '2015-09-15 22:02:09', '2015-10-25 03:25:19', '12JVjmNoEHnZhVac4LQFMCvjQxYYZYTnbm', '19EC7N8CTiWT4tKuXZ3wGuq7SRZ61dbFB3'),
	(5, 'Nicole', 'Owens', '371 Eagan Drive', '98676', 'Vërtop', 'nowens4@liveinternet.ru', '089 139 3714', '811 979 8108', '0', '0', '9cl3bi', 'http://dummyimage.com/164x198.bmp/ff4444/ffffff', '2015-09-22 04:53:15', '2015-10-15 09:00:42', '1LDCMka2etppzsWYLBArjee74cfdBprQwx', '1DTPcPFE2FZgFdrCg5ZtFJMFcsK3RxqQLv'),
	(6, 'Jimmy', 'Romero', '0 Browning Alley', '53126', 'Sulechów', 'jromero5@nyu.edu', '721 818 2595', '534 195 5861', '0', '0', 'L6LVfU', 'http://dummyimage.com/189x154.jpg/ff4444/ffffff', '2015-09-19 11:16:28', '2015-10-22 12:34:24', '1JaMw7xJ5tY57TDHpAApZjkUnkBMmEwjEx', '17ujRqwghq1B9fFd9XhHs7ndhRafbbDnB3'),
	(7, 'Antonio', 'Banks', '2 Mcbride Lane', '84169', 'Ngondokandawu', 'abanks6@mit.edu', '420 549 6410', '967 474 3120', '0', '0', 'NVlNkqXwX2', 'http://dummyimage.com/154x220.bmp/dddddd/000000', '2015-09-04 15:01:47', '2015-10-12 09:36:13', '1LMWXo81MKH4rbkkq874oa4fXrtQXQFws2', '1Et7DjzuA4uEtwauDfVv9udU8T63ZCoaYV'),
	(8, 'Sandra', 'Greene', '2 Twin Pines Crossing', '66620', 'Ulaan-Ereg', 'sgreene7@canalblog.com', '712 378 4255', '794 995 5993', '0', '0', 'T5TV7u', 'http://dummyimage.com/169x207.jpg/dddddd/000000', '2015-09-02 14:20:54', '2015-10-22 04:50:20', '1PAsf4rHjNdp3GuuHrsZF7NhjWoYk59TAM', '1LtP8qMxkHWrpHDbCC2cegtbRRHDJ531Wt');
    
    INSERT INTO class (class_id, name) VALUES
	(1, 'Software Engineering'),
	(2, 'Information Systems Management');

	INSERT INTO class_member (person_id, class_id) VALUES
	(2, 1),
	(4, 2),
	(5, 1),
	(6, 2),
	(7, 1),
	(8, 2);
    
	INSERT INTO project (project_id, owner_id, class_id, title, created_at, deadline, subject) VALUES
	(1, '1', '1', 'Zathin', '2015-09-21 09:24:08', '2015-11-12 04:42:51', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
	(2, '3', '2', 'Alphazap', '2015-08-19 09:23:33', '2016-02-24 02:21:03', 'Proin interdum mauris non ligula pellentesque ultrices.'),
	(3, '1', '2', 'Home Ing', '2015-12-05 04:48:25', '2016-01-01 03:46:56', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
 
	INSERT INTO team (team_id, project_id, owner_id, created_at, summary) VALUES
	(1, 1, 2, '2015-11-12 04:42:51', 'Crazy Project'),
    (2, 2, 4, '2015-11-12 04:42:51', 'Fun Project'),
    (3, 3, 5, '2015-11-12 04:42:51', 'Amusing Project'),
    (4, 2, 6, '2015-11-12 04:42:51', 'Hilarious Project');

	INSERT INTO team_member (team_id, student_id) VALUES
	(1, 2),
    (2, 4),
    (3, 5),
    (4, 6),
    (1, 7),
    (2, 8),
    (3, 2),
    (4, 4);	

END