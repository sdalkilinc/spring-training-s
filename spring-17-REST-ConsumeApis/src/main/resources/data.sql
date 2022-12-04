INSERT INTO location (name, address, postal_code, country, state, city, is_deleted)
VALUES ('AMC Empire 25', '234 W 42nd St', '10036', 'United States', 'New York', 'New York', false),
       ('AMC 34th Street 14', '312 W 34th St', '10001', 'United States', 'New York', 'New York', false),
       ('AMC Lincoln Square 13', '1998 Broadway', '10023', 'United States', 'New York', 'New York', false),
       ('AMC Village 7', '66 3rd Ave', '10003', 'United States', 'New York', 'New York', false);

INSERT INTO cinema (name, sponsored_name, location_id, is_deleted)
VALUES ('Hall 1 - EMPIRE', 'McDonald', (SELECT l.id from location l WHERE l.name = 'AMC Empire 25'), false),
       ('Hall 2 - EMPIRE', 'Kodak', (SELECT l.id from location l WHERE l.name = 'AMC Empire 25'), false),
       ('Hall 3 - EMPIRE', 'Act Vision', (SELECT l.id from location l WHERE l.name = 'AMC Empire 25'), false),
       ('Hall 4 - EMPIRE', 'Quick Silver', (SELECT l.id from location l WHERE l.name = 'AMC Empire 25'), false),

       ('Hall 1 - STREET 14', 'Du Pont', (SELECT l.id from location l WHERE l.name = 'AMC 34th Street 14'), false),
       ('Hall 2 - STREET 14', 'HBO', (SELECT l.id from location l WHERE l.name = 'AMC 34th Street 14'), false),
       ('Hall 3 - STREET 14', 'MySpace', (SELECT l.id from location l WHERE l.name = 'AMC 34th Street 14'), false),
       ('Hall 4 - STREET 14', 'PlayStation', (SELECT l.id from location l WHERE l.name = 'AMC 34th Street 14'), false),

       ('Hall 1 - SQUARE 13', 'Walt Disney', (SELECT l.id from location l WHERE l.name = 'AMC Lincoln Square 13'), false),
       ('Hall 2 - SQUARE 13', 'Sony Corporation', (SELECT l.id from location l WHERE l.name = 'AMC Lincoln Square 13'), false),
       ('Hall 3 - SQUARE 13', 'Warner Bros', (SELECT l.id from location l WHERE l.name = 'AMC Lincoln Square 13'), false),
       ('Hall 4 - SQUARE 13', 'PlayStation', (SELECT l.id from location l WHERE l.name = 'AMC Lincoln Square 13'), false),

       ('Hall 1 - VILLAGE 7', 'Du Pont', (SELECT l.id from location l WHERE l.name = 'AMC Village 7'), false),
       ('Hall 2 - VILLAGE 7', 'Kodak', (SELECT l.id from location l WHERE l.name = 'AMC Village 7'), false),
       ('Hall 3 - VILLAGE 7', 'MySpace', (SELECT l.id from location l WHERE l.name = 'AMC Village 7'), false),
       ('Hall 4 - VILLAGE 7', 'Channel 4', (SELECT l.id from location l WHERE l.name = 'AMC Village 7'), false);

INSERT INTO genre (name, is_deleted)
VALUES ('Comedy', false),
       ('Sci-Fi', false),
       ('Horror', false),
       ('Action', false),
       ('Thriller', false),
       ('Drama', false),
       ('Mystery', false),
       ('Crime', false),
       ('Animation', false),
       ('Adventure', false),
       ('Fantasy', false),
       ('Biography', false),
       ('History', false);

INSERT INTO movie (duration, name, price, release_date, state, summary, type, is_deleted)
VALUES (113, 'The Gentleman', 20.0, '2020-01-24 00:00:01', 'ACTIVE',
        'An American expat tries to sell off his highly profitable marijuana empire in London, triggering plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.',
        'REGULAR', false),
       (135, 'A Beautiful Mind', 15.00, '2002-01-04 00:00:01', 'DRAFT',
        'After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.',
        'REGULAR', false),
       (142, 'The Shawshank Redemption', 35.00, '1994-10-14 00:00:01', 'DRAFT',
        'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency',
        'REGULAR', false),
       (175, 'The Godfather', 35.00, '1972-03-24 00:00:01', 'DRAFT',
        'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son',
        'REGULAR', false),
       (150, 'Tenet', 35.00, '2020-09-03 00:00:01', 'ACTIVE',
        'Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time',
        'PREMIER', false),
       (100, 'The Loss Adjuster', 35.00, '2020-12-01 00:00:01', 'DRAFT',
        'Hapless Insurance Loss Adjuster - Martin Dyer - feels his life is spiralling out of control but discovers that even when you reach rock bottom, that some clouds really do have a silver lining',
        'PREMIER', false),
       (100, 'The Nights Before Christmas', 28.00, '2020-11-19 00:00:01', 'ACTIVE',
        'A murderous Santa and Mrs Claus play a cat and mouse game with the FBI.', 'REGULAR', false),
       (130, 'Spider-Man: Miles Morales', 28.00, '2020-12-12 00:00:01', 'DRAFT',
        'In this sequel of Marvel''s Spider-Man (2018), you can play as Miles Morales as a new and different Spider-Man while he learns some stories about his will of fighting crime and serving justice by his mentor and former hero, Peter Parker.',
        'PREMIER', false),
       (181, 'Avengers: Endgame', 48.00, '2019-04-26 00:00:01', 'DRAFT',
        'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.',
        'REGULAR', false);

INSERT INTO movie_genre_rel (movie_id, genre_id)
VALUES ((SELECT m.id from movie m WHERE m.name = 'The Gentleman'), (SELECT g.id from genre g WHERE g.name = 'Action')),
       ((SELECT m.id from movie m WHERE m.name = 'The Gentleman'), (SELECT g.id from genre g WHERE g.name = 'Comedy')),
       ((SELECT m.id from movie m WHERE m.name = 'The Gentleman'), (SELECT g.id from genre g WHERE g.name = 'Crime')),
       ((SELECT m.id from movie m WHERE m.name = 'A Beautiful Mind'),
        (SELECT g.id from genre g WHERE g.name = 'Biography')),
       ((SELECT m.id from movie m WHERE m.name = 'A Beautiful Mind'),
        (SELECT g.id from genre g WHERE g.name = 'Drama')),
       ((SELECT m.id from movie m WHERE m.name = 'The Shawshank Redemption'),
        (SELECT g.id from genre g WHERE g.name = 'Drama')),
       ((SELECT m.id from movie m WHERE m.name = 'The Godfather'), (SELECT g.id from genre g WHERE g.name = 'Drama')),
       ((SELECT m.id from movie m WHERE m.name = 'The Godfather'), (SELECT g.id from genre g WHERE g.name = 'Crime')),
       ((SELECT m.id from movie m WHERE m.name = 'Tenet'), (SELECT g.id from genre g WHERE g.name = 'Sci-Fi')),
       ((SELECT m.id from movie m WHERE m.name = 'Tenet'), (SELECT g.id from genre g WHERE g.name = 'Action')),
       ((SELECT m.id from movie m WHERE m.name = 'The Loss Adjuster'),
        (SELECT g.id from genre g WHERE g.name = 'Comedy')),
       ((SELECT m.id from movie m WHERE m.name = 'The Nights Before Christmas'),
        (SELECT g.id from genre g WHERE g.name = 'Horror')),
       ((SELECT m.id from movie m WHERE m.name = 'Spider-Man: Miles Morales'),
        (SELECT g.id from genre g WHERE g.name = 'Action')),
       ((SELECT m.id from movie m WHERE m.name = 'Spider-Man: Miles Morales'),
        (SELECT g.id from genre g WHERE g.name = 'Adventure')),
       ((SELECT m.id from movie m WHERE m.name = 'Spider-Man: Miles Morales'),
        (SELECT g.id from genre g WHERE g.name = 'Crime')),
       ((SELECT m.id from movie m WHERE m.name = 'Avengers: Endgame'),
        (SELECT g.id from genre g WHERE g.name = 'Action')),
       ((SELECT m.id from movie m WHERE m.name = 'Avengers: Endgame'),
        (SELECT g.id from genre g WHERE g.name = 'Adventure')),
       ((SELECT m.id from movie m WHERE m.name = 'Avengers: Endgame'),
        (SELECT g.id from genre g WHERE g.name = 'Drama'));

INSERT INTO movie_cinema (date_time, cinema_id, movie_id, is_deleted)
VALUES ('2020-12-05 20:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman'), false),
       ('2020-12-05 19:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman'), false),
       ('2020-12-05 18:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman'), false),
       ('2020-12-05 18:45:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman'), false),
       ('2020-12-05 21:30:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman'), false),

       ('2020-12-06 20:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'Tenet'), false),
       ('2020-12-06 19:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14'),
        (SELECT m.id FROM movie m WHERE m.name = 'Tenet'), false),
       ('2020-12-06 18:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'Tenet'), false),
       ('2020-12-06 20:45:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'Tenet'), false),
       ('2020-12-06 21:30:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7'),
        (SELECT m.id FROM movie m WHERE m.name = 'Tenet'), false),

       ('2020-12-07 20:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas'), false),
       ('2020-12-07 19:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas'), false),
       ('2020-12-07 18:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas'), false),
       ('2020-12-07 20:45:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas'), false),
       ('2020-12-07 21:30:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas'), false),

       ('2020-12-08 20:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'A Beautiful Mind'), false),
       ('2020-12-08 19:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Shawshank Redemption'), false),
       ('2020-12-08 18:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Godfather'), false),
       ('2020-12-08 20:45:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13'),
        (SELECT m.id FROM movie m WHERE m.name = 'Spider-Man: Miles Morales'), false),
       ('2020-12-08 21:30:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7'),
        (SELECT m.id FROM movie m WHERE m.name = 'Avengers: Endgame'), false),

       ('2020-12-08 18:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false),
       ('2020-12-08 20:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false),
       ('2020-12-08 18:30:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false),
       ('2020-12-08 20:30:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false),
       ('2020-12-08 19:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false),
       ('2020-12-08 21:30:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false),
       ('2020-12-08 20:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false),
       ('2020-12-08 22:00:00', (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - EMPIRE'),
        (SELECT m.id FROM movie m WHERE m.name = 'The Loss Adjuster'), false);

INSERT INTO account_details (address, age, city, country, name, postal_code, state, is_deleted)
VALUES ('262  Lochmere Lane', 35, 'LOUISVILLE', 'United States', 'Josie D Story', '40289', 'Kentucky', false),
       ('2903  Jarvis Street', 28, 'Buffalo', 'United States', 'Bernard P Fendley', '14211', 'New York', false),
       ('4161  Alfred Drive', 47, 'Brooklyn', 'United States', 'Faith R Parsons', '11226', 'New York', false),
       ('2587  Logan Lane', 47, 'HOLTSVILLE', 'United States', 'Johnnie J Cannon', '00544', 'New York', false),
       ('698  Clark Street', 47, 'Brentwood', 'United States', 'Lawrence E Folkerts', '11717', 'New York', false);

INSERT INTO user_account (email, password, role, username, account_details_id, is_deleted)
VALUES ('josie_story@email.com', '123123123', 'USER', 'josieStory',
        (SELECT id from account_details WHERE name = 'Josie D Story'), false),
       ('bernard@email.com', '123123123', 'USER', 'bernard',
        (SELECT id from account_details WHERE name = 'Bernard P Fendley'), false),
       ('faith.p@email.com', '123123123', 'USER', 'faith',
        (SELECT id from account_details WHERE name = 'Faith R Parsons'), false),
       ('johnnie@email.com', '123123123', 'USER', 'johnnie',
        (SELECT id from account_details WHERE name = 'Johnnie J Cannon'), false),
       ('lawrence.f@email.com', '123123123', 'USER', 'lawrence.f',
        (SELECT id from account_details WHERE name = 'Lawrence E Folkerts'), false);


INSERT INTO ticket (date_time, row_number, seat_number, movie_cinema_id, user_account_id, is_deleted)
VALUES ('2020-12-05 20:00:00', 14, 15, (SELECT id
                                        FROM movie_cinema
                                        WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE')
                                          AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman') LIMIT 1),
       (SELECT id from user_account WHERE email = 'josie_story@email.com'), false),
                   ('2022-05-02 20:00:00', 18, 7, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman') LIMIT 1), (SELECT id from user_account WHERE email = 'bernard@email.com'), false),
                   ('2020-12-05 20:00:00', 9, 9, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman') LIMIT 1), (SELECT id from user_account WHERE email = 'faith.p@email.com'), false),
                   ('2020-12-05 20:00:00', 12, 18, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman') LIMIT 1), (SELECT id from user_account WHERE email = 'johnnie@email.com'), false),
                   ('2020-12-05 20:00:00', 11, 5, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 1 - EMPIRE') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Gentleman') LIMIT 1), (SELECT id from user_account WHERE email = 'lawrence.f@email.com'), false),

                   ('2020-12-06 20:45:00', 14, 15, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'Tenet') LIMIT 1), (SELECT id from user_account WHERE email = 'josie_story@email.com'), false),
                   ('2020-12-06 20:45:00', 18, 7, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'Tenet') LIMIT 1), (SELECT id from user_account WHERE email = 'bernard@email.com'), false),
                   ('2020-12-06 20:45:00', 9, 9, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'Tenet') LIMIT 1), (SELECT id from user_account WHERE email = 'faith.p@email.com'), false),
                   ('2020-12-06 20:45:00', 12, 18, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'Tenet') LIMIT 1), (SELECT id from user_account WHERE email = 'johnnie@email.com'), false),
                   ('2020-12-06 20:45:00', 11, 5, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 4 - SQUARE 13') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'Tenet') LIMIT 1), (SELECT id from user_account WHERE email = 'lawrence.f@email.com'), false),

                   ('2020-12-07 21:30:00', 14, 15, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas') LIMIT 1), (SELECT id from user_account WHERE email = 'josie_story@email.com'), false),
                   ('2020-12-07 21:30:00', 18, 7, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas') LIMIT 1), (SELECT id from user_account WHERE email = 'bernard@email.com'), false),
                   ('2020-12-07 21:30:00', 9, 9, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas') LIMIT 1), (SELECT id from user_account WHERE email = 'faith.p@email.com'), false),
                   ('2020-12-07 21:30:00', 12, 18, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas') LIMIT 1), (SELECT id from user_account WHERE email = 'johnnie@email.com'), false),
                   ('2020-12-07 21:30:00', 11, 5, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 2 - VILLAGE 7') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Nights Before Christmas') LIMIT 1), (SELECT id from user_account WHERE email = 'lawrence.f@email.com'), false),

                   ('2020-12-08 19:00:00', 14, 15, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Shawshank Redemption') LIMIT 1), (SELECT id from user_account WHERE email = 'josie_story@email.com'), false),
                   ('2020-12-08 19:00:00', 18, 7, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Shawshank Redemption') LIMIT 1), (SELECT id from user_account WHERE email = 'bernard@email.com'), false),
                   ('2020-12-08 19:00:00', 9, 9, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Shawshank Redemption') LIMIT 1), (SELECT id from user_account WHERE email = 'faith.p@email.com'), false),
                   ('2020-12-08 19:00:00', 12, 18, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Shawshank Redemption') LIMIT 1), (SELECT id from user_account WHERE email = 'johnnie@email.com'), false),
                   ('2020-12-08 19:00:00', 11, 5, (SELECT id FROM movie_cinema WHERE cinema_id = (SELECT c.id FROM cinema c WHERE c.name = 'Hall 3 - STREET 14') AND movie_id = (SELECT m.id FROM movie m WHERE m.name = 'The Shawshank Redemption') LIMIT 1), (SELECT id from user_account WHERE email = 'lawrence.f@email.com'), false);