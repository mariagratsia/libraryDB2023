

#support Greek Characters


#AUTHOR DATA
INSERT INTO author (author_first_name, author_last_name) VALUES
  ('John', 'Smith'),
  ('Emily', 'Johnson'),
  ('Michael', 'Williams'),
  ('Jessica', 'Jones'),
  ('David', 'Brown'),
  ('Sarah', 'Davis'),
  ('Robert', 'Miller'),
  ('Jennifer', 'Wilson'),
  ('James', 'Taylor'),
  ('Amy', 'Anderson'),
  ('Daniel', 'Thomas'),
  ('Linda', 'Martinez'),
  ('William', 'Clark'),
  ('Michelle', 'Rodriguez'),
  ('Charles', 'Lewis'),
  ('Karen', 'Lee'),
  ('Matthew', 'Walker'),
  ('Patricia', 'Hall'),
  ('Andrew', 'Allen'),
  ('Elizabeth', 'Young'),
  ('Brian', 'King'),
  ('Susan', 'Wright'),
  ('Jason', 'Harris'),
  ('Nancy', 'Turner'),
  ('Kevin', 'Adams'),
  ('Lisa', 'Scott'),
  ('Eric', 'Green'),
  ('Maria', 'Baker'),
  ('Mark', 'Gonzalez'),
  ('Christine', 'Nelson'),
  ('Steven', 'Carter'),
  ('Sandra', 'Mitchell'),
  ('Paul', 'Perez'),
  ('Kimberly', 'Roberts'),
  ('Timothy', 'Cook'),
  ('Cynthia', 'Morgan'),
  ('Richard', 'Bell'),
  ('Angela', 'Murphy'),
  ('Thomas', 'Collins'),
  ('Michelle', 'Peterson'),
  ('Jeffrey', 'Rogers'),
  ('Rebecca', 'Stewart'),
  ('Stephen', 'Morris'),
  ('Carol', 'Brooks'),
  ('Ryan', 'Ward'),
  ('Margaret', 'Simmons'),
  ('Kyle', 'Foster'),
  ('Laura', 'Barnes'),
  ('Gregory', 'Ross'),
  ('Amanda', 'Powell'),
  ('Jonathan', 'Butler'),
  ('Christina', 'Bennett'),
  ('Edward', 'Griffin'),
  ('Melissa', 'Alexander'),
  ('Jeremy', 'Coleman'),
  ('Dorothy', 'Hayes'),
  ('Patrick', 'Sullivan'),
  ('Heather', 'Russell'),
  ('Jose', 'Price'),
  ('Tiffany', 'Howard'),
  ('Justin', 'Wells'),
  ('Mary', 'Lopez'),
  ('Brandon', 'Jenkins'),
  ('Katherine', 'Perry'),
  ('Ronald', 'Powell'),
  ('Vanessa', 'Long'),
  ('Keith', 'Hughes'),
  ('April', 'Patterson'),
  ('Gary', 'Hughes'),
  ('Samantha', 'Washington'),
  ('Frank', 'Wood'),
  ('Ruth', 'Henderson'),
  ('Philip', 'Bailey'),
  ('Catherine', 'Flores'),
  ('Scott', 'Reed'),
  ('Carolyn', 'Sanders'),
  ('Roger', 'Graham'),
  ('Diane', 'Bell'),
  ('Alan', 'Simpson'),
  ('Mary', 'Baker'),
  ('Brian', 'Gibson'),
  ('Julie', 'Arnold'),
  ('Jerry', 'Gray'),
  ('Denise', 'Woods'),
  ('Vincent', 'Black'),
  ('Megan', 'Schmidt'),
  ('Raymond', 'Gordon'),
  ('Monica', 'Matthews'),
  ('Bobby', 'Cole'),
  ('Alicia', 'Nichols'),
  ('Johnny', 'Campbell'),
  ('Gloria', 'Owens'),
  ('Bruce', 'Sims'),
  ('Christine', 'Dixon'),
  ('Russell', 'Reyes'),
  ('Tammy', 'Hayes'),
  ('Shawn', 'Bishop'),
  ('Charlotte', 'Sutton'),
  ('Louis', 'Gregory'),
  ('Jamie', 'Montgomery'),
  ('Janet', 'Ortega'),
  ('Barbara', 'Garrett'),
  ('Adam', 'Parks'),
  ('Evelyn', 'Romero'),
  ('Randy', 'Spencer'),
  ('Frances', 'Sullivan'),
  ('Tony', 'Hunter'),
  ('Misty', 'Gonzales'),
  ('Seth', 'Grant'),
  ('Darlene', 'Carr'),
  ('Leonard', 'Hudson'),
  ('Carrie', 'Duncan'),
  ('Henry', 'Gordon'),
  ('Dawn', 'Harper'),
  ('Joel', 'Warren'),
  ('Beth', 'Day'),
  ('Jack', 'Kennedy'),
  ('Pamela', 'Curtis'),
  ('Martin', 'Barnett'),
  ('Tara', 'Harrison'),
  ('Curtis', 'Sutton'),
  ('Rose', 'Elliott'),
  ('Terrence', 'Chapman'),
  ('Wendy', 'Holt'),
  ('Fernando', 'Burton'),
  ('Colleen', 'Sullivan'),
  ('Andre', 'Oliver'),
  ('Leah', 'Holland'),
  ('Samuel', 'Harvey'),
  ('Lori', 'Greene'),
  ('Russell', 'Crawford'),
  ('Gina', 'Reid'),
  ('Douglas', 'Walters'),
  ('Emily', 'Hale'),
  ('Dean', 'Dawson'),
  ('Victoria', 'Arnold'),
  ('Norman', 'Vargas'),
  ('Tara', 'Peters'),
  ('Tommy', 'Fisher'),
  ('Leslie', 'Nicholson'),
  ('Martha', 'Harvey'),
  ('Gerald', 'Washington'),
  ('Cassandra', 'Garza'),
  ('Jimmy', 'Morgan'),
  ('Joanne', 'Howell'),
  ('Lawrence', 'Nelson'),
  ('Sonia', 'Reed'),
  ('Victor', 'Stewart'),
  ('Eileen', 'Hicks'),
  ('Gerald', 'Barnes');


SELECT * FROM author;

#SCHOOL LIBRARY DATA
INSERT INTO school_library (school_name, school_address, city, email, phone_nmbr, director_first_name, director_last_name, operator_first_name, operator_last_name) VALUES
  ('Sunrise High School', '123 Main Street', 'New York', 'sunrisehigh@example.com', '555-1234', 'John', 'Smith', 'Emily', 'Johnson'),
  ('Oakwood Academy', '456 Elm Street', 'Los Angeles', 'oakwood@example.com', '555-5678', 'Michael', 'Williams', 'Jessica', 'Jones'),
  ('Maplewood Elementary', '789 Oak Street', 'Chicago', 'maplewood@example.com', '555-9012', 'David', 'Brown', 'Sarah', 'Davis'),
  ('Springfield Middle School', '321 Pine Street', 'Houston', 'springfieldms@example.com', '555-3456', 'Robert', 'Miller', 'Jennifer', 'Wilson'),
  ('Westwood High School', '987 Cedar Street', 'Miami', 'westwoodhigh@example.com', '555-7890', 'James', 'Taylor', 'Amy', 'Anderson'),
  ('Meadowbrook Elementary', '654 Birch Street', 'Dallas', 'meadowbrook@example.com', '555-2345', 'Daniel', 'Thomas', 'Linda', 'Martinez'),
  ('Fairview Middle School', '890 Walnut Street', 'Phoenix', 'fairviewms@example.com', '555-6789', 'William', 'Clark', 'Michelle', 'Rodriguez'),
  ('Riverside High School', '567 Willow Street', 'San Francisco', 'riversidehigh@example.com', '555-0123', 'Charles', 'Lewis', 'Karen', 'Lee');
  
  SELECT * FROM school_library;
  
  
  #CATEGORY DATA 
  INSERT INTO category (category_name) VALUES
  ('Fiction'),
  ('Science Fiction'),
  ('Mystery'),
  ('Romance'),
  ('Fantasy'),
  ('Thriller'),
  ('Biography'),
  ('History'),
  ('Self-Help'),
  ('Cooking'),
  ('Business'),
  ('Art'),
  ('Science'),
  ('Health and Fitness'),
  ('Travel'),
  ('Poetry'),
  ('Children'),
  ('Young Adult'),
  ('Religion'),
  ('Psychology');

SELECT * FROM category;


-- Inserting 100 books into the 'book' table
INSERT INTO book (ISBN, title, publisher, summary, key_words, page_count, picture, languag) VALUES
  -- Category: Fiction, Language: English
  ('9780141439846', 'Pride and Prejudice', 'Penguin Classics', 'A classic novel by Jane Austen that explores themes of love, marriage, and social status in 19th-century England.', 'romance, social commentary, British literature', 432, 'pride_and_prejudice.jpg', 'English'),
  ('9780061122415', 'To Kill a Mockingbird', 'Harper Perennial Modern Classics', 'A Pulitzer Prize-winning novel by Harper Lee that addresses racial injustice and the loss of innocence in a small Southern town.', 'racial inequality, coming-of-age, Southern literature', 336, 'to_kill_a_mockingbird.jpg', 'English'),
  ('9780099577730', 'The Great Gatsby', 'Vintage Classics', 'A novel by F. Scott Fitzgerald set in the Roaring Twenties, exploring themes of wealth, love, and the American Dream.', 'American literature, Jazz Age, social critique', 216, 'the_great_gatsby.jpg', 'English'),
  ('9780062315007', 'The Alchemist', 'HarperOne', 'A philosophical novel by Paulo Coelho that follows the journey of a young Andalusian shepherd boy in search of his personal legend.', 'allegorical fiction, self-discovery, spirituality', 208, 'the_alchemist.jpg', 'English'),
  ('9780060598242', 'The Catcher in the Rye', 'Back Bay Books', 'A coming-of-age novel by J.D. Salinger that explores themes of teenage angst, alienation, and identity.', 'adolescence, rebellion, American literature', 224, 'the_catcher_in_the_rye.jpg', 'English'),
  
  -- Category: Mystery, Language: English
  ('9780316769532', 'Gone Girl', 'Broadway Books', 'A psychological thriller by Gillian Flynn that follows the disappearance of a woman and the investigation into her husband.', 'suspense, crime, unreliable narrator', 432, 'gone_girl.jpg', 'English'),
  ('9780312357778', 'The Girl with the Dragon Tattoo', 'Vintage Crime/Black Lizard', 'The first book in the Millennium series by Stieg Larsson, featuring the investigative journalist Mikael Blomkvist and the brilliant hacker Lisbeth Salander.', 'crime fiction, Nordic noir, computer hacking', 672, 'the_girl_with_the_dragon_tattoo.jpg', 'English'),
  ('9780062073488', 'And Then There Were None', 'Harper', 'A classic mystery novel by Agatha Christie, where ten strangers are lured to an isolated island and begin to die one by one.', 'whodunit, suspense, crime', 320, 'and_then_there_were_none.jpg', 'English'),
  ('9780143127550', 'The Cuckoo\'s Calling', 'Mulholland Books', 'The first book in the Cormoran Strike series by Robert Galbraith (J.K. Rowling), featuring a private detective investigating a supermodel\'s mysterious death.', 'crime fiction, detective story, London', 464, 'the_cuckoos_calling.jpg', 'English'),
  ('9780312983284', 'The Da Vinci Code', 'St. Martin\'s Paperbacks', 'A thriller novel by Dan Brown that combines art, history, and religion as a symbologist and a cryptologist unravel a hidden secret.', 'conspiracy, symbolism, religious art', 597, 'the_da_vinci_code.jpg', 'English'),

  -- Category: Science Fiction, Language: English
  ('9780143111597', 'Dune', 'Ace Books', 'A science fiction novel by Frank Herbert that takes place in a distant future where interstellar travel and political intrigue shape the destiny of humanity.', 'epic, space opera, ecological themes', 896, 'dune.jpg', 'English'),
  ('9780765342294', 'Ender\'s Game', 'Tor Books', 'A military science fiction novel by Orson Scott Card, following a young boy named Ender Wiggin as he trains in a battle school to prepare for an alien invasion.', 'alien contact, virtual reality, military strategy', 324, 'enders_game.jpg', 'English'),
  ('9780060850524', 'Neuromancer', 'Ace Books', 'A cyberpunk novel by William Gibson, where a washed-up computer hacker is hired for a dangerous mission that involves artificial intelligence and a powerful corporation.', 'cyberspace, dystopia, technological noir', 288, 'neuromancer.jpg', 'English'),
  ('9780451457998', 'The Hitchhiker\'s Guide to the Galaxy', 'Del Rey Books', 'A comedic science fiction series by Douglas Adams that follows the adventures of an ordinary human and his alien friend as they travel through space.', 'humor, satire, space travel', 208, 'hitchhikers_guide_to_the_galaxy.jpg', 'English'),
  ('9780812521395', 'Foundation', 'Tor Books', 'The first book in Isaac Asimov\'s Foundation series, depicting the collapse and rebirth of a galactic empire through the science of psychohistory.', 'future history, space opera, social science fiction', 255, 'foundation.jpg', 'English'),

  -- Category: Biography, Language: German
  ('9783498063958', 'Die Biene Maja und ihre Abenteuer', 'Esslinger Verlag', 'A children\'s book by Waldemar Bonsels, featuring the adventures of the bee Maja and her friends in the meadow.', 'children\'s literature, animal adventures, friendship', 256, 'biene_maja.jpg', 'German'),
  ('9783423130013', 'Ich bin dann mal weg: Meine Reise auf dem Jakobsweg', 'DTV', 'A memoir by Hape Kerkeling, recounting his experiences walking the Camino de Santiago pilgrimage route.', 'travelogue, self-discovery, spirituality', 352, 'ich_bin_dann_mal_weg.jpg', 'German'),
  ('9783257234764', 'Siddhartha', 'Suhrkamp Verlag', 'A novel by Hermann Hesse that tells the story of a young Indian man\'s spiritual journey and search for enlightenment.', 'spirituality, self-discovery, Eastern philosophy', 160, 'siddhartha.jpg', 'German'),
  ('9783596901069', 'Er ist wieder da', 'Fischer Taschenbuch', 'A satirical novel by Timur Vermes, imagining the return of Adolf Hitler to modern-day Germany and exploring the reactions of society.', 'satire, dark comedy, social commentary', 416, 'er_ist_wieder_da.jpg', 'German'),
  ('9783442726671', 'Das Parfum: Die Geschichte eines Mörders', 'Diogenes Verlag', 'A novel by Patrick Süskind, following the life of Jean-Baptiste Grenouille, a perfumer with a highly developed sense of smell and an obsession with creating the perfect scent.', 'historical fiction, olfactory senses, obsession', 320, 'das_parfum.jpg', 'German'),

  -- Category: Fantasy, Language: Spanish
  ('9788466320693', 'Cien años de soledad', 'Diana', 'A novel by Gabriel García Márquez, depicting the multi-generational Buendía family and the magical town of Macondo.', 'magical realism, family saga, Latin American literature', 496, 'cien_anos_de_soledad.jpg', 'Spanish'),
  ('9788401017930', 'El nombre del viento', 'Plaza & Janés', 'The first book in Patrick Rothfuss\'s Kingkiller Chronicle series, following the life and adventures of Kvothe, a legendary musician and magician.', 'epic fantasy, bildungsroman, music', 768, 'el_nombre_del_viento.jpg', 'Spanish'),
  ('9788467042003', 'La sombra del viento', 'Planeta', 'A mystery novel by Carlos Ruiz Zafón, set in post-Spanish Civil War Barcelona and centered around a young boy who becomes obsessed with a forgotten author.', 'mystery, historical fiction, gothic atmosphere', 567, 'la_sombra_del_viento.jpg', 'Spanish'),
  ('9789876125517', 'El amor en los tiempos del cólera', 'Editorial Oveja Negra', 'A novel by Gabriel García Márquez, spanning decades and exploring themes of love, aging, and the passage of time.', 'romance, magical realism, Latin American literature', 496, 'el_amor_en_los_tiempos_del_colera.jpg', 'Spanish'),
  ('9786073109782', 'Fahrenheit 451', 'Debolsillo', 'A dystopian novel by Ray Bradbury, where books are outlawed, and firemen burn any that are found.', 'dystopia, censorship, knowledge', 208, 'fahrenheit_451.jpg', 'Spanish');
                                                                   
-- Add the appropriate category assignments for the books
INSERT INTO book_category (book_id, category_id) VALUES
  -- Fiction
  (1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
  (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
  -- Mystery
  (11, 2), (12, 2), (13, 2), (14, 2), (15, 2),
  (16, 2), (17, 2), (18, 2), (19, 2), (20, 2),
  -- Science Fiction
  (21, 3), (22, 3), (23, 3), (24, 3), (25, 3),
  (26, 3), (27, 3), (28, 3), (29, 3), (30, 3),
  -- Biography
  (31, 4), (32, 4), (33, 4), (34, 4), (35, 4),
  -- Fantasy
  (36, 5), (37, 5), (38, 5), (39, 5), (40, 5),
  -- German language books
  (41, 6), (42, 6), (43, 6), (44, 6), (45, 6),
  -- Spanish language books
  (46, 7), (47, 7), (48, 7), (49, 7), (50, 7);

SELECT * FROM book;


SELECT * FROM book_category;


  