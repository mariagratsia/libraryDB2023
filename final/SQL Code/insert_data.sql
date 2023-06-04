#Schools (8)
INSERT INTO school_library (school_name, school_address, city, email, phone_nmbr, director_first_name, director_last_name, operator_first_name, operator_last_name) VALUES
  ('Sunrise High School', '123 Main Street', 'New York', 'sunrisehigh@example.com', '555-1234', 'John', 'Smith', 'Emily', 'Johnson'),
  ('Oakwood Academy', '456 Elm Street', 'Los Angeles', 'oakwood@example.com', '555-5678', 'Michael', 'Williams', 'Jessica', 'Jones'),
  ('Maplewood Elementary', '789 Oak Street', 'Chicago', 'maplewood@example.com', '555-9012', 'David', 'Brown', 'Sarah', 'Davis'),
  ('Springfield Middle School', '321 Pine Street', 'Houston', 'springfieldms@example.com', '555-3456', 'Robert', 'Miller', 'Jennifer', 'Wilson'),
  ('Westwood High School', '987 Cedar Street', 'Miami', 'westwoodhigh@example.com', '555-7890', 'James', 'Taylor', 'Amy', 'Anderson'),
  ('Meadowbrook Elementary', '654 Birch Street', 'Dallas', 'meadowbrook@example.com', '555-2345', 'Daniel', 'Thomas', 'Linda', 'Martinez'),
  ('Fairview Middle School', '890 Walnut Street', 'Phoenix', 'fairviewms@example.com', '555-6789', 'William', 'Clark', 'Michelle', 'Rodriguez'),
  ('Riverside High School', '567 Willow Street', 'San Francisco', 'riversidehigh@example.com', '555-0123', 'Charles', 'Lewis', 'Karen', 'Lee');

#Books (105)
INSERT INTO book (ISBN, title, publisher, summary, key_words, page_count, picture, languag) VALUES
  ('9780141439846', 'Pride and Prejudice', 'Penguin Classics', 'A classic novel by Jane Austen that explores themes of love, marriage, and social status in 19th-century England.', 'romance, social commentary, British literature', 432, 'book_covers/Pride and Prejudice.jpg', 'English'),
  ('9780061122415', 'To Kill a Mockingbird', 'Harper Perennial Modern Classics', 'A Pulitzer Prize-winning novel by Harper Lee that addresses racial injustice and the loss of innocence in a small Southern town.', 'racial inequality, coming-of-age, Southern literature', 336, 'book_covers/To Kill a Mockingbird.jpg', 'English'),
  ('9780099577730', 'The Great Gatsby', 'Vintage Classics', 'A novel by F. Scott Fitzgerald set in the Roaring Twenties, exploring themes of wealth, love, and the American Dream.', 'American literature, Jazz Age, social critique', 216, 'book_covers/The Great Gatsby.jpg', 'English'),
  ('9710062315007', 'The Alchemist', 'HarperOne', 'A philosophical novel by Paulo Coelho that follows the journey of a young Andalusian shepherd boy in search of his personal legend.', 'allegorical fiction, self-discovery, spirituality', 208, 'book_covers/The Alchemist.jpg', 'English'),
  ('9780060598242', 'The Catcher in the Rye', 'Back Bay Books', 'A coming-of-age novel by J.D. Salinger that explores themes of teenage angst, alienation, and identity.', 'adolescence, rebellion, American literature', 224, 'book_covers/The Catcher in the Rye.jpg', 'English'),
  ('9780316769532', 'Gone Girl', 'Broadway Books', 'A psychological thriller by Gillian Flynn that follows the disappearance of a woman and the investigation into her husband.', 'suspense, crime, unreliable narrator', 432, 'book_covers/Gone Girl.jpg', 'English'),
  ('9780312357778', 'The Girl with the Dragon Tattoo', 'Vintage Crime/Black Lizard', 'The first book in the Millennium series by Stieg Larsson, featuring the investigative journalist Mikael Blomkvist and the brilliant hacker Lisbeth Salander.', 'crime fiction, Nordic noir, computer hacking', 672, 'book_covers/The Girl with the Dragon Tattoo.jpg', 'English'),
  ('9780062073488', 'And Then There Were None', 'Harper', 'A classic mystery novel by Agatha Christie, where ten strangers are lured to an isolated island and begin to die one by one.', 'whodunit, suspense, crime', 320, 'book_covers/And Then There Were None.jpg', 'English'),
  ('9780143127550', 'The Cuckoo\'s Calling', 'Mulholland Books', 'The first book in the Cormoran Strike series by Robert Galbraith (J.K. Rowling), featuring a private detective investigating a supermodel\'s mysterious death.', 'crime fiction, detective story, London', 464, 'book_covers/The Cuckoos Calling.jpg', 'English'),
  ('9780312983284', 'The Da Vinci Code', 'St. Martin\'s Paperbacks', 'A thriller novel by Dan Brown that combines art, history, and religion as a symbologist and a cryptologist unravel a hidden secret.', 'conspiracy, symbolism, religious art', 597, 'book_covers/the_da_vinci_code.jpg', 'English'),
  ('9780143111597', 'Dune', 'Ace Books', 'A science fiction novel by Frank Herbert that takes place in a distant future where interstellar travel and political intrigue shape the destiny of humanity.', 'epic, space opera, ecological themes', 896, 'book_covers/Dune.jpg', 'English'),
  ('9780765342294', 'Ender\'s Game', 'Tor Books', 'A military science fiction novel by Orson Scott Card, following a young boy named Ender Wiggin as he trains in a battle school to prepare for an alien invasion.', 'alien contact, virtual reality, military strategy', 324, 'book_covers/Enders game.jpg', 'English'),
  ('9710060850524', 'Neuromancer', 'Ace Books', 'A cyberpunk novel by William Gibson, where a washed-up computer hacker is hired for a dangerous mission that involves artificial intelligence and a powerful corporation.', 'cyberspace, dystopia, technological noir', 288, 'book_covers/Neuromancer.jpg', 'English'),
  ('9780451457998', 'The Hitchhiker\'s Guide to the Galaxy', 'Del Rey Books', 'A comedic science fiction series by Douglas Adams that follows the adventures of an ordinary human and his alien friend as they travel through space.', 'humor, satire, space travel', 208, 'book_covers/Hitchhikers guide to the galaxy.jpg', 'English'),
  ('9780812521395', 'Foundation', 'Tor Books', 'The first book in Isaac Asimov\'s Foundation series, depicting the collapse and rebirth of a galactic empire through the science of psychohistory.', 'future history, space opera, social science fiction', 255, 'book_covers/Foundation.jpg', 'English'),
  ('9783498063958', 'Die Biene Maja und ihre Abenteuer', 'Esslinger Verlag', 'A children\'s book by Waldemar Bonsels, featuring the adventures of the bee Maja and her friends in the meadow.', 'children\'s literature, animal adventures, friendship', 256, 'book_covers/Die Biene Maja und ihre Abenteuer.jpg', 'German'),
  ('9783423130013', 'Ich bin dann mal weg: Meine Reise auf dem Jakobsweg', 'DTV', 'A memoir by Hape Kerkeling, recounting his experiences walking the Camino de Santiago pilgrimage route.', 'travelogue, self-discovery, spirituality', 352, 'book_covers/ich_bin_dann_mal_weg.jpg', 'German'),
  ('9783257234764', 'Siddhartha', 'Suhrkamp Verlag', 'A novel by Hermann Hesse that tells the story of a young Indian man\'s spiritual journey and search for enlightenment.', 'spirituality, self-discovery, Eastern philosophy', 160, 'book_covers/Siddhartha.jpg', 'German'),
  ('9783596901069', 'Er ist wieder da', 'Fischer Taschenbuch', 'A satirical novel by Timur Vermes, imagining the return of Adolf Hitler to modern-day Germany and exploring the reactions of society.', 'satire, dark comedy, social commentary', 416, 'book_covers/Er ist wieder da.jpg', 'German'),
  ('9783442726671', 'Das Parfum: Die Geschichte eines Mörders', 'Diogenes Verlag', 'A novel by Patrick Süskind, following the life of Jean-Baptiste Grenouille, a perfumer with a highly developed sense of smell and an obsession with creating the perfect scent.', 'historical fiction, olfactory senses, obsession', 320, 'book_covers/Das Parfum: Die Geschichte eines Mörders.jpg', 'German'),
  ('9788466320693', 'Cien años de soledad', 'Diana', 'A novel by Gabriel García Márquez, depicting the multi-generational Buendía family and the magical town of Macondo.', 'magical realism, family saga, Latin American literature', 496, 'book_covers/Cien años de soledad.jpg', 'Spanish'),
  ('9788401017930', 'El nombre del viento', 'Plaza & Janés', 'The first book in Patrick Rothfuss\'s Kingkiller Chronicle series, following the life and adventures of Kvothe, a legendary musician and magician.', 'epic fantasy, bildungsroman, music', 768, 'book_covers/El nombre del viento.jpg', 'Spanish'),
  ('9788467042003', 'La sombra del viento', 'Planeta', 'A mystery novel by Carlos Ruiz Zafón, set in post-Spanish Civil War Barcelona and centered around a young boy who becomes obsessed with a forgotten author.', 'mystery, historical fiction, gothic atmosphere', 567, 'book_covers/La sombra del viento.jpg', 'Spanish'),
  ('9789876125517', 'El amor en los tiempos del cólera', 'Editorial Oveja Negra', 'A novel by Gabriel García Márquez, spanning decades and exploring themes of love, aging, and the passage of time.', 'romance, magical realism, Latin American literature', 496, 'book_covers/El amor en los tiempos del cólera.jpg', 'Spanish'),
  ('9786073109782', 'Fahrenheit 451', 'Debolsillo', 'A dystopian novel by Ray Bradbury, where books are outlawed, and firemen burn any that are found.', 'dystopia, censorship, knowledge', 208, 'book_covers/Fahrenheit 451.jpg', 'Spanish'),
  ('9780141182742', '1984', 'Penguin Books', 'Nineteen Eighty-Four is a dystopian novel by George Orwell published in 1949.', 'dystopia, totalitarianism, surveillance, rebellion', 328, 'book_covers/1984.jpg', 'English'),
  ('9780142437309', 'Moby-Dick', 'Penguin Classics', 'Moby-Dick; or, The Whale is a novel by Herman Melville published in 1851.', 'whaling, obsession, revenge, symbolism', 720, 'book_covers/Moby-Dick.jpg', 'English'),
  ('9782070368228', 'Le Petit Prince', 'Gallimard', 'Le Petit Prince is a novella by Antoine de Saint-Exupéry published in 1943.', 'children\'s literature, philosophy, allegory', 93, 'book_covers/Le Petit Prince.jpg', 'French'),
  ('9788807886433', 'La Divina Commedia', 'Mondadori', 'La Divina Commedia is an epic poem by Dante Alighieri written in the 14th century.', 'epic poetry, medieval literature, allegory, afterlife', 928, 'book_covers/La Divina Commedia.jpg', 'Italian'),
  ('9783458335253', 'Der Prozess', 'Fischer Verlag', 'Der Prozess is a novel by Franz Kafka published in 1925.', 'existentialism, bureaucracy, alienation, guilt', 208, 'book_covers/Der Prozess.jpg', 'German'),
  ('9780140286809', 'The Picture of Dorian Gray', 'Penguin Classics', 'The Picture of Dorian Gray is a novel by Oscar Wilde published in 1890.', 'Gothic fiction, decadence, aestheticism, morality', 272, 'book_covers/The Picture of Dorian Gray.jpg', 'English'),
  ('9788806192042', 'Il nome della rosa', 'Bompiani', 'Il nome della rosa (The Name of the Rose) is a novel by Umberto Eco published in 1980.', 'mystery, historical fiction, semiotics, medieval', 672, 'book_covers/Il nome della rosa.jpg', 'Italian'),
  ('9780452284234', 'Brave New World', 'Penguin Books', 'Brave New World is a dystopian novel by Aldous Huxley published in 1932.', 'dystopia, social engineering, individualism, technology', 288, 'book_covers/Brave New World.jpg', 'English'),
  ('9780060256654', 'Where the Wild Things Are', 'Harper & Row', 'Where the Wild Things Are is a children\'s picture book by Maurice Sendak published in 1963.', 'children\'s literature, imagination, monsters, growth', 48, 'book_covers/Where the Wild Things Are.jpg', 'English'),
  ('9780385376716', 'The Fault in Our Stars', 'Dutton Books', 'The Fault in Our Stars is a novel by John Green published in 2012.', 'young adult, cancer, love, coming-of-age', 313, 'book_covers/The Fault In Our Stars.jpg', 'English'),
  ('9711400078776', 'The Kite Runner', 'Riverhead Books', 'The Kite Runner is a novel by Khaled Hosseini published in 2003.', 'coming-of-age, friendship, betrayal, redemption', 371, 'book_covers/The Kite Runner.jpg', 'English'),
  ('9780739360385', 'The Help', 'Penguin Books', 'The Help is a historical fiction novel by Kathryn Stockett published in 2009.', 'civil rights, racial inequality, friendship, empowerment', 451, 'book_covers/The Help.jpg', 'English'),
  ('9780064407663', 'Holes', 'Yearling Books', 'Holes is a young adult novel by Louis Sachar published in 1998.', 'mystery, friendship, justice, family', 233, 'book_covers/Holes.jpg', 'English'),
  ('9781594200095', 'The Road', 'Knopf', 'The Road is a post-apocalyptic novel by Cormac McCarthy published in 2006.', 'post-apocalyptic, survival, father-son relationship, hope', 287, 'book_covers/The Road.jpg', 'English'),
  ('9780062315007', 'The Martian', 'Broadway Books', 'The Martian is a science fiction novel by Andy Weir published in 2011.', 'survival, space exploration, humor, resilience', 369, 'book_covers/The Martian.jpg', 'English'),
  ('9780547928227', 'The Hobbit', 'Houghton Mifflin Harcourt', 'The Hobbit is a fantasy novel by J.R.R. Tolkien published in 1937.', 'fantasy, adventure, quest, dwarves', 310, 'book_covers/The Hobbit.jpg', 'English'),
  ('9780140449332', 'Crime and Punishment', 'Penguin Classics', 'Crime and Punishment is a novel by Fyodor Dostoevsky published in 1866.', 'psychological thriller, guilt, redemption, morality', 671, 'book_covers/Crime and Punishment.jpg', 'Russian'),
  ('9780060850524', 'American Gods', 'William Morrow', 'American Gods is a fantasy novel by Neil Gaiman published in 2001.', 'mythology, gods, road trip, belief', 592, 'book_covers/American Gods.jpg', 'English'),
  ('9780345816023', 'Station Eleven', 'Knopf Canada', 'Station Eleven is a post-apocalyptic novel by Emily St. John Mandel published in 2014.', 'pandemic, art, resilience, interconnectedness', 333, 'book_covers/Station Eleven.jpg', 'English'),
  ('9780345806970', 'The Handmaid\'s Tale', 'Vintage Books', 'The Handmaid\'s Tale is a dystopian novel by Margaret Atwood published in 1985.', 'dystopia, women\'s rights, oppression, totalitarianism', 311, 'book_covers/The Handmaids tale.jpg', 'English'),
  ('9781400078776', 'The Road Less Traveled', 'Touchstone', 'The Road Less Traveled is a self-help book by M. Scott Peck published in 1978.', 'psychology, personal growth, love, spirituality', 316, 'book_covers/The Road Less Traveled.jpg', 'English'),
  ('9780385490818', 'Beloved', 'Knopf', 'Beloved is a novel by Toni Morrison published in 1987.', 'historical fiction, slavery, trauma, memory', 275, 'book_covers/Beloved.jpg', 'English'),
  ('9781400031702', 'The Shadow of the Wind', 'Penguin Books', 'The Shadow of the Wind is a historical fiction novel by Carlos Ruiz Zafón published in 2001.', 'mystery, books, Barcelona, love', 487, '/book_covers/The Shadow of the Wind.jpg', 'Spanish'),
  ('9780679733710', 'One Hundred Years of Solitude', 'Harper Perennial', 'One Hundred Years of Solitude is a novel by Gabriel García Márquez published in 1967.', 'magical realism, family saga, time, Latin America', 417, '/book_covers/One Hundred Years of Solitude.jpg', 'Spanish'),
  ('9780064400558', 'Matilda', 'Puffin Books', 'Matilda is a children\'s novel by Roald Dahl published in 1988.', 'children\'s literature, intelligence, magic, empowerment', 240, '/book_covers/Matilda.jpg', 'English'),
  ('9780141187761', 'Animal Farm', 'Penguin Books', 'Animal Farm is an allegorical novella by George Orwell published in 1945.', 'satire, political allegory, revolution, power', 112, '/book_covers/Animal Farm.jpg', 'English'),
  ('9780345342966', 'The Catch-22', 'Dell Publishing', 'Catch-22 is a satirical novel by Joseph Heller published in 1961.', 'war, absurdity, bureaucracy, black comedy', 453, '/book_covers/The Catch-22.jpg', 'English'),
  ('9780743273565', 'The Shining', 'Anchor Books', 'The Shining is a horror novel by Stephen King published in 1977.', 'horror, haunted hotel, madness, supernatural', 447, '/book_covers/The Shining.jpg', 'English'),
  ('9780064407113', 'Charlotte\'s Web', 'HarperCollins', 'Charlotte\'s Web is a children\'s novel by E.B. White published in 1952.', 'children\'s literature, friendship, animals, loyalty', 184, '/book_covers/Charlottes web.jpg', 'English'),
  ('9780679720201', 'Slaughterhouse-Five', 'Dell Publishing', 'Slaughterhouse-Five is a science fiction novel by Kurt Vonnegut published in 1969.', 'war, time travel, anti-war, satire', 275, '/book_covers/Slaughterhouse-Five.jpg', 'English'),
  ('9780064404990', 'The Chronicles of Narnia', 'HarperCollins', 'The Chronicles of Narnia is a series of fantasy novels by C.S. Lewis published between 1950 and 1956.', 'fantasy, adventure, allegory, talking animals', 767, '/book_covers/The Chronicles of Narnia.jpg', 'English'),
  ('9780446675536', 'The Five People You Meet in Heaven', 'Hyperion', 'The Five People You Meet in Heaven is a novel by Mitch Albom published in 2003.', 'life after death, destiny, redemption, interconnectedness', 198, '/book_covers/The Five People You Meet in Heaven.jpg', 'English'),
  ('9780062316097', 'The Book Thief', 'Alfred A. Knopf', 'The Book Thief is a historical fiction novel by Markus Zusak published in 2005.', 'World War II, books, death, friendship', 584, '/book_covers/The Book Thief.jpg', 'English'),
  ('9780007119554', 'The Lord of the Rings', 'HarperCollins', 'The Lord of the Rings is a fantasy novel series by J.R.R. Tolkien published between 1954 and 1955.', 'epic fantasy, quest, elves, rings', 1178, '/book_covers/The Lord of the Rings.jpg', 'English'),
('9780553283686', 'Jurassic Park', 'Ballantine Books', 'Jurassic Park is a science fiction novel by Michael Crichton published in 1990.', 'science, genetics, dinosaurs, adventure', 448, '/book_covers/Jurassic Park.jpg', 'English'),
('9780064410120', 'The Lion, the Witch and the Wardrobe', 'HarperCollins', 'The Lion, the Witch and the Wardrobe is a fantasy novel by C.S. Lewis published in 1950.', 'fantasy, adventure, magic, children\'s literature', 206, '/book_covers/The Lion, the Witch and the Wardrobe.jpg', 'English'),
('9780060548762', 'The Lovely Bones', 'Little, Brown and Company', 'The Lovely Bones is a novel by Alice Sebold published in 2002.', 'murder, afterlife, family, grief', 328, '/book_covers/The Lovely Bones.jpg', 'English'),
('9780061120077', 'The Giver', 'Laurel Leaf', 'The Giver is a dystopian novel by Lois Lowry published in 1993.', 'dystopia, memory, conformity, individuality', 208, '/book_covers/The Giver.jpg', 'English'),
('9780679734779', 'The Bell Jar', 'Harper Perennial Modern Classics', 'The Bell Jar is a novel by Sylvia Plath published in 1963.', 'coming-of-age, mental health, identity, feminism', 288, '/book_covers/The Bell Jar.jpg', 'English'),
('9780007175729', 'Life of Pi', 'Harvest Books', 'Life of Pi is a novel by Yann Martel published in 2001.', 'survival, adventure, spirituality, imagination', 460, '/book_covers/Life of Pi.jpg', 'English'),
('9780141439556', 'Dracula', 'Penguin Classics', 'Dracula is a Gothic horror novel by Bram Stoker published in 1897.', 'vampires, supernatural, Transylvania, Victorian', 432, '/book_covers/Dracula.jpg', 'English'),
('9780060833459', 'A Game of Thrones', 'Bantam Books', 'A Game of Thrones is the first novel in the series A Song of Ice and Fire by George R.R. Martin published in 1996.', 'fantasy, politics, power, epic', 694, '/book_covers/A Game of Thrones.jpg', 'English'),
('9711501173219', 'Educated', 'Random House', 'Educated is a memoir by Tara Westover published in 2018.', 'memoir, education, family, resilience', 334, '/book_covers/Educated.jpg', 'English'),
('9780060987527', 'The Poisonwood Bible', 'Harper Perennial', 'The Poisonwood Bible is a historical fiction novel by Barbara Kingsolver published in 1998.', 'colonialism, Africa, family, religion', 546, '/book_covers/The Poisonwood Bible.jpg', 'English'),
('9781594634024', 'Big Little Lies', 'G.P. Putnam\'s Sons', 'Big Little Lies is a novel by Liane Moriarty published in 2014.', 'mystery, domestic drama, secrets, friendship', 460, '/book_covers/Big Little Lies.jpg', 'English'),
('9780062564047', 'Circe', 'Bloomsbury Publishing', 'Circe is a fantasy novel by Madeline Miller published in 2018.', 'mythology, gods, witch, empowerment', 400, '/book_covers/Circe.jpg', 'English'),
('9780812993547', 'The Silent Patient', 'Celadon Books', 'A psychological thriller by Alex Michaelides, where a famous painter becomes a murder suspect after shooting her husband.', 'psychological suspense, therapy, art', 336, '/book_covers/The Silent Patient.jpg', 'English'),
('9780735219090', 'Where the Crawdads Sing', 'G.P. Putnam\'s Sons', 'A coming-of-age novel by Delia Owens, telling the story of a young girl named Kya living in the marshes of North Carolina.', 'mystery, nature, isolation, love', 384, '/book_covers/Where the Crawdads Sing.jpg', 'English'),
('9780735213616', 'Little Fires Everywhere', 'Penguin Press', 'A novel by Celeste Ng, exploring the intertwining lives of two families in the progressive community of Shaker Heights, Ohio.', 'family dynamics, motherhood, secrets, suburban life', 368, '/book_covers/Little Fires Everywhere.jpg', 'English'),
('9780525534969', 'Becoming', 'Crown Publishing Group', 'A memoir by Michelle Obama, chronicling her life from childhood on the South Side of Chicago to her time as First Lady of the United States.', 'memoir, autobiography, politics, inspiration', 448, '/book_covers/Becoming.jpg', 'English'),
('9781982110582', 'The Testaments', 'Nan A. Talese', 'A novel by Margaret Atwood, serving as a sequel to her dystopian masterpiece, "The Handmaid\'s Tale," and continuing the story of Gilead.', 'dystopia, feminism, political fiction, resistance', 432, '/book_covers/The Testaments.jpg', 'English'),
('9780735224315', 'Normal People', 'Hogarth', 'A novel by Sally Rooney, following the complex relationship between two Irish teenagers, Connell and Marianne, as they navigate love, friendship, and social class.', 'coming-of-age, romance, friendship, class differences', 288, '/book_covers/Normal People.jpg', 'English'),
('9781984801810', 'The Dutch House', 'Harper', 'A novel by Ann Patchett, centering around a grand mansion called the Dutch House and exploring themes of family, memory, and forgiveness.', 'family saga, siblings, inheritance, resilience', 352, '/book_covers/The Dutch House.jpg', 'English'),
('9780385544184', 'The Water Dancer', 'One World', 'A novel, blending elements of magical realism and focusing on the life of Hiram Walker, a young enslaved man with a mysterious power.', 'historical fantasy, slavery, underground railroad, family', 416, '/book_covers/The Water Dancer.jpg', 'English'),
('9780143110439', 'Freakonomics', 'William Morrow', 'This non-fiction book explores the hidden side of economics, applying economic principles to various unconventional topics.', 'Economics, Unconventional, Analysis', 336, '/book_covers/Freakonomics.jpg', 'English'),
('9780062567319', 'Milk and Honey', 'Andrews McMeel Publishing', 'A collection of poetry and prose that explores themes of love, loss, and healing.', 'Poetry, Healing, Empowerment', 208, '/book_covers/Milk and Honey.jpg', 'English'),
('9780061992278', 'The Hunger Games', 'Scholastic Press', 'Set in a dystopian society, this young adult novel follows a girl who becomes a symbol of rebellion against the oppressive government.', 'Dystopia, Survival, Rebellion', 374, '/book_covers/The Hunger Games.jpg', 'English'),
('9781501173219', 'The Outsider', 'Scribner', 'A gripping thriller about the investigation of a brutal murder and the perplexing evidence that points to an unlikely suspect.', 'Thriller, Murder Mystery, Psychological', 561, '/book_covers/The Outsider.jpg', 'English'),
('9720062315007', 'Ready Player One', 'Broadway Books', 'A science fiction novel set in a virtual reality world where the protagonist embarks on a treasure hunt that has real-world consequences.', 'Science Fiction, Virtual Reality, Adventure', 374, '/book_covers/Ready Player One.jpg', 'English'),
('9780679723165', 'Lolita', 'Vintage Books', 'A controversial novel that explores the mind of Humbert Humbert, a middle-aged man who becomes obsessed with a young girl named Dolores Haze.', 'Controversial, Obsession, Taboo', 317, '/book_covers/Lolita.jpg', 'English'),
('9780060929879', 'The Color Purple', 'Mariner Books', 'An epistolary novel that tells the story of Celie, a young African-American woman who finds her voice and liberation in the face of oppression.', 'Epistolary, African-American, Empowerment', 295, '/book_covers/The Color Purple.jpg', 'English'),
('9780307474278', 'A Thousand Splendid Suns', 'Riverhead Books', 'A powerful novel that explores the lives of two Afghan women, Mariam and Laila, as they endure hardships and form a deep bond in war-torn Afghanistan.', 'Afghanistan, Women\'s Fiction, Friendship', 418, '/book_covers/A Thousand Splendid Suns.jpg', 'English'),
('9780062225683', 'The Maze Runner', 'Delacorte Press', 'A dystopian novel that follows a group of teenagers trapped in a deadly maze, as they strive to unravel its mysteries and find a way out.', 'Dystopia, Survival, Mystery', 374, '/book_covers/The Maze Runner.jpg', 'English'),
('9780679783268', 'Into the Wild', 'Anchor Books', 'A non-fiction book that tells the story of Christopher McCandless, a young man who gave up everything and embarked on a journey into the Alaskan wilderness.', 'Non-Fiction, Adventure, Wilderness', 207, 'Into the Wild.jpg', 'English'),
('9780765376676', 'The Way of Kings', 'Tor Books', 'The first book in the epic fantasy series "The Stormlight Archive," which follows multiple characters and explores a world torn by war and political intrigue.', 'Fantasy, Epic, World-Building', 1007, 'The Way of Kings.jpg', 'English'),
('9780553801477', 'A Dance with Dragons', 'Bantam Books', 'The fifth book in the "A Song of Ice and Fire" series, continuing the intricate web of politics, power, and magic in the Seven Kingdoms.', 'Fantasy, Epic, Political Intrigue', 1125, 'A Dance with Dragons.jpg', 'English'),
('9780804171085', 'Wild: From Lost to Found on the Pacific Crest Trail', 'Vintage Books', 'A memoir that recounts Cheryl Strayed\'s solo hike along the Pacific Crest Trail, as she confronts her personal demons and finds healing in nature.', 'Memoir, Self-Discovery, Wilderness', 315, 'Wild From Lost to Found on the Pacific Crest Trail.jpg', 'English'),
('9780345339705', 'The Fellowship of the Ring', 'Del Rey Books', 'The first book in "The Lord of the Rings" trilogy, following Frodo Baggins and the Fellowship as they embark on a perilous journey to destroy the One Ring.', 'Fantasy, Adventure, Quest', 398, 'The Fellowship of the Ring.jpg', 'English'),
('9780451524935', 'Dune Messiah', 'Ace Books', 'The sequel to "Dune," continuing the story of Paul Atreides as he faces the challenges of governing an empire and dealing with the consequences of his actions.', 'Science Fiction, Space Opera, Political', 331, 'Dune Messiah.jpg', 'English'),
('9780061729076', 'The Diary of a Young Girl', 'Bantam Books', 'The diary of Anne Frank, a Jewish girl hiding with her family in Amsterdam during World War II, providing a powerful firsthand account of the Holocaust.', 'Biography, Holocaust, Diary', 283, 'The Diary of a Young Girl.jpg', 'English'),
('9780545010221', 'Harry Potter and the Sorcerer\'s Stone', 'Scholastic', 'The first book in the Harry Potter series, where young wizard Harry Potter discovers his magical heritage and begins his journey at Hogwarts School of Witchcraft and Wizardry.', 'Fantasy, Magic, Adventure', 320, 'Harry Potter and the Sorcerer\'s Stone.jpg', 'English'),
('9781501144341', 'Me Before You', 'Penguin Books', 'A heartwarming and bittersweet love story between Louisa Clark, a young woman who takes a job as a caregiver, and Will Traynor, a paralyzed man she cares for.', 'Romance, Contemporary, Disability', 369, 'Me Before You.jpg', 'English'),
('9780062358202', 'Outlander', 'Dell Publishing', 'A time-travel romance novel that follows the story of Claire Randall, a World War II nurse who finds herself transported to 18th-century Scotland, where she meets Jamie Fraser.', 'Romance, Historical, Time Travel', 850, 'Outlander.jpg', 'English'),
('9780062457714', 'The Subtle Art of Not Giving a F*ck', 'HarperOne', 'A self-help book that challenges conventional wisdom and encourages readers to embrace a more honest and grounded approach to life, focusing on what truly matters.', 'Self-Help, Personal Development, Happiness', 224, 'The Subtle Art of Not Giving a F*ck.jpg', 'English'),
('9781524762237', 'Atomic Habits', 'Avery Publishing Group', 'A guide to building good habits, breaking bad ones, and optimizing performance, providing practical strategies and techniques for personal and professional growth.', 'Self-Help, Productivity, Psychology', 320, 'Atomic Habits.jpg', 'English'),
('9780143118442', 'The Power of Now', 'New World Library', 'A spiritual guide that emphasizes the importance of living in the present moment and finding inner peace and enlightenment.', 'Self-Help, Spirituality, Mindfulness', 236, 'The Power of Now.jpg', 'English'),
('9781439130838', 'Sapiens: A Brief History of Humankind', 'Harper', 'A captivating exploration of human history, from the emergence of Homo sapiens to the present, covering key milestones and developments that shaped our species.', 'History, Anthropology, Evolution', 498, 'Sapiens A Brief History of Humankind.jpg', 'English'),
('9710062316097', 'The Devil in the White City', 'Vintage Books', 'A non-fiction book that intertwines the true story of the 1893 World\'s Fair in Chicago with the tale of a cunning serial killer who used the fair as a hunting ground.', 'History, True Crime, Architecture', 447, 'The Devil in the White City.jpg', 'English'),
('9780375502023', 'The Guns of August', 'Random House', 'A Pulitzer Prize-winning history book that examines the events leading up to World War I and the first month of the war, providing insights into the political and military strategies of the time.', 'History, World War I, Military', 511, 'The Guns of August.jpg', 'English'),
('9780345391806', 'A Clash of Kings', 'Bantam Books', 'The second book in the "A Song of Ice and Fire" series, continuing the epic tale of power struggles, alliances, and battles in the Seven Kingdoms.', 'Fantasy, Epic, Political Intrigue', 761, 'A Clash of Kings.jpg', 'English');

#Categories (12)
INSERT INTO category (category_name) VALUES
  ('Fiction'),
  ('Mystery'),
  ('Romance'),
  ('Thriller'),
  ('Biography'),
  ('History'),
  ('Cooking'),
  ('Art'),
  ('Science'),
  ('Travel'),
  ('Poetry'),
  ('Children');

#Authors (60)
INSERT INTO author (author_first_name, author_last_name) VALUES
  ('John', 'Smith'), ('Emily', 'Johnson'), ('Michael', 'Williams'), ('Jessica', 'Jones'),
  ('David', 'Brown'), ('Sarah', 'Davis'), ('Robert', 'Miller'), ('Jennifer', 'Wilson'),
  ('James', 'Taylor'), ('Amy', 'Anderson'), ('Daniel', 'Thomas'), ('Linda', 'Martinez'),
  ('William', 'Clark'), ('Michelle', 'Rodriguez'), ('Charles', 'Lewis'), ('Karen', 'Lee'),
  ('Matthew', 'Walker'), ('Patricia', 'Hall'), ('Andrew', 'Allen'), ('Elizabeth', 'Young'),
  ('Brian', 'King'), ('Susan', 'Wright'), ('Jason', 'Harris'), ('Nancy', 'Turner'),
  ('Kevin', 'Adams'), ('Lisa', 'Scott'), ('Eric', 'Green'), ('Maria', 'Baker'),
  ('Mark', 'Gonzalez'), ('Christine', 'Nelson'), ('Steven', 'Carter'), ('Sandra', 'Mitchell'),
  ('Paul', 'Perez'), ('Kimberly', 'Roberts'), ('Timothy', 'Cook'), ('Cynthia', 'Morgan'),
  ('Richard', 'Bell'), ('Angela', 'Murphy'), ('Thomas', 'Collins'), ('Michelle', 'Peterson'),
  ('Jeffrey', 'Rogers'), ('Rebecca', 'Stewart'), ('Stephen', 'Morris'), ('Carol', 'Brooks'),
  ('Ryan', 'Ward'), ('Margaret', 'Simmons'), ('Kyle', 'Foster'), ('Laura', 'Barnes'),
  ('Gregory', 'Ross'), ('Amanda', 'Powell'), ('Jonathan', 'Butler'), ('Christina', 'Bennett'),
  ('Edward', 'Griffin'), ('Melissa', 'Alexander'), ('Jeremy', 'Coleman'), ('Dorothy', 'Hayes'),
  ('Patrick', 'Sullivan'), ('Heather', 'Russell'), ('Jose', 'Price'), ('Tiffany', 'Howard');

                
#Books in categories
INSERT INTO book_category (book_id, category_id) VALUES
  (2001, 4000), (2040, 4000), (2041, 4001), (2080, 4001), (2081, 4002), (2101, 4002),
  (2002, 4003), (2039, 4003), (2042, 4004), (2079, 4004), (2082, 4005), (2102, 4005),
  (2003, 4006), (2038, 4006), (2043, 4007), (2078, 4007), (2083, 4008), (2103, 4008),
  (2004, 4009), (2037, 4009), (2044, 4010), (2077, 4010), (2084, 4011), (2104, 4011),
  (2005, 4000), (2036, 4000), (2045, 4001), (2076, 4001), (2085, 4002), (2000, 4002),
  (2006, 4003), (2035, 4003), (2046, 4004), (2075, 4004), (2086, 4005), (2000, 4005),
  (2007, 4006), (2034, 4006), (2047, 4007), (2074, 4007), (2087, 4008), (2002, 4008),
  (2008, 4009), (2033, 4009), (2048, 4010), (2073, 4010), (2088, 4011), (2003, 4011),
  (2009, 4000), (2032, 4000), (2049, 4001), (2072, 4001), (2089, 4002), (2004, 4002),
  (2010, 4003), (2031, 4003), (2050, 4004), (2071, 4004), (2090, 4005), (2005, 4005),
  (2011, 4006), (2030, 4006), (2051, 4007), (2070, 4007), (2091, 4008), (2005, 4008),
  (2012, 4009), (2029, 4009), (2052, 4010), (2069, 4010), (2092, 4011), (2006, 4011),
  (2013, 4000), (2028, 4000), (2053, 4001), (2068, 4001), (2093, 4002), (2006, 4002),
  (2014, 4003), (2027, 4003), (2054, 4004), (2067, 4004), (2094, 4005), (2035, 4001),
  (2015, 4006), (2026, 4006), (2055, 4007), (2066, 4007), (2095, 4008), (2035, 4009),
  (2016, 4009), (2025, 4009), (2056, 4010), (2065, 4010), (2096, 4011), (2041, 4003),
  (2017, 4000), (2024, 4000), (2057, 4001), (2064, 4001), (2097, 4002), (2052, 4004),
  (2018, 4003), (2023, 4003), (2058, 4004), (2063, 4004), (2098, 4005), (2067, 4005),
  (2019, 4006), (2022, 4006), (2059, 4007), (2062, 4007), (2099, 4008), (2085, 4010),
  (2020, 4009), (2021, 4009), (2060, 4010), (2061, 4010), (2100, 4011), (2100, 4006);
  
  #Books with their authors
  INSERT INTO book_author (book_id, author_id) VALUES 
  (2000, 3000), (2003, 3004), (2007, 3008), (2011, 3012), (2014, 3016), (2018, 3020), (2022, 3024), 
  (2000, 3001), (2004, 3005), (2008, 3009), (2011, 3013), (2015, 3017), (2019, 3021), (2023, 3025), 
  (2001, 3002), (2005, 3006), (2009, 3010), (2012, 3014), (2016, 3018), (2020, 3022), (2024, 3026), 
  (2002, 3003), (2006, 3007), (2010, 3011), (2013, 3015), (2017, 3019), (2021, 3023), (2025, 3027),
  (2026, 3028), (2030, 3032), (2033, 3036), (2035, 3040), (2039, 3044), (2043, 3048), (2047, 3052), 
  (2027, 3029), (2031, 3033), (2033, 3037), (2036, 3041), (2040, 3045), (2044, 3049), (2048, 3053), 
  (2028, 3030), (2032, 3034), (2033, 3038), (2037, 3042), (2041, 3046), (2045, 3050), (2049, 3054), 
  (2029, 3031), (2032, 3035), (2034, 3039), (2038, 3043), (2042, 3047), (2046, 3051), (2050, 3055),
  (2051, 3056), (2065, 3001), (2066, 3010), (2079, 3020), (2080, 3024), (2093, 3011), (2088, 3014), 
  (2052, 3057), (2064, 3002), (2067, 3011), (2078, 3021), (2080, 3025), (2092, 3009), (2088, 3016), 
  (2053, 3058), (2063, 3003), (2067, 3012), (2077, 3022), (2081, 3026), (2091, 3004), (2089, 3018), 
  (2053, 3059), (2062, 3004), (2067, 3013), (2076, 3023), (2082, 3027), (2090, 3001), (2090, 3019),
  (2054, 3000), (2061, 3005), (2068, 3014), (2075, 3023), (2083, 3028), (2089, 3030), (2091, 3020), 
  (2055, 3000), (2060, 3006), (2069, 3015), (2074, 3023), (2084, 3028), (2088, 3031), (2092, 3026), 
  (2056, 3000), (2059, 3007), (2070, 3016), (2073, 3023), (2085, 3029), (2088, 3032), (2093, 3027), 
  (2057, 3000), (2058, 3007), (2071, 3017), (2072, 3023), (2086, 3029), (2087, 3033), (2094, 3029),
  (2095, 3028), (2097, 3008), (2098, 3018), (2099, 3023), (2100, 3044), (2101, 3034), (2103, 3052), 
  (2096, 3029), (2097, 3009), (2099, 3019), (2100, 3023), (2100, 3045), (2102, 3049), (2104, 3053); 
  
  #Books in school 1000 with availability (40 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2001, 1000, 5), (2009, 1000, 5), (2017, 1000, 2), (2025, 1000, 5), (2033, 1000, 3),
  (2002, 1000, 2), (2010, 1000, 1), (2018, 1000, 5), (2026, 1000, 5), (2034, 1000, 3),
  (2003, 1000, 5), (2011, 1000, 5), (2019, 1000, 5), (2027, 1000, 2), (2035, 1000, 1),
  (2004, 1000, 3), (2012, 1000, 3), (2020, 1000, 2), (2028, 1000, 3), (2036, 1000, 1),
  (2005, 1000, 5), (2013, 1000, 5), (2021, 1000, 5), (2029, 1000, 2), (2037, 1000, 1),
  (2006, 1000, 4), (2014, 1000, 2), (2022, 1000, 1), (2030, 1000, 1), (2038, 1000, 2),
  (2007, 1000, 5), (2015, 1000, 5), (2023, 1000, 4), (2031, 1000, 5), (2039, 1000, 2),
  (2008, 1000, 6), (2016, 1000, 1), (2024, 1000, 5), (2032, 1000, 1), (2040, 1000, 2);
 
 #Books in school 1001 with availability (50 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2041, 1001, 4), (2051, 1001, 4), (2061, 1001, 3), (2071, 1001, 4), (2081, 1001, 4),
  (2042, 1001, 1), (2052, 1001, 3), (2062, 1001, 3), (2072, 1001, 3), (2082, 1001, 3),
  (2043, 1001, 1), (2053, 1001, 2), (2063, 1001, 3), (2073, 1001, 2), (2083, 1001, 2),
  (2044, 1001, 1), (2054, 1001, 3), (2064, 1001, 3), (2074, 1001, 2), (2084, 1001, 1),
  (2045, 1001, 4), (2055, 1001, 2), (2065, 1001, 4), (2075, 1001, 2), (2085, 1001, 1),
  (2046, 1001, 4), (2056, 1001, 1), (2066, 1001, 4), (2076, 1001, 2), (2086, 1001, 1),
  (2047, 1001, 2), (2057, 1001, 5), (2067, 1001, 2), (2077, 1001, 1), (2087, 1001, 2),
  (2048, 1001, 4), (2058, 1001, 3), (2068, 1001, 1), (2078, 1001, 4), (2088, 1001, 2),
  (2049, 1001, 2), (2059, 1001, 4), (2069, 1001, 4), (2079, 1001, 4), (2089, 1001, 3),
  (2050, 1001, 4), (2060, 1001, 4), (2070, 1001, 1), (2080, 1001, 4), (2090, 1001, 4);
  
  #Books in school 1002 with availability (54 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2091, 1002, 2), (2103, 1002, 1), (2011, 1002, 3), (2023, 1002, 1), (2035, 1002, 1),
  (2092, 1002, 1), (2104, 1002, 2), (2012, 1002, 1), (2024, 1002, 2), (2036, 1002, 5),
  (2093, 1002, 2), (2001, 1002, 3), (2013, 1002, 3), (2025, 1002, 3), (2037, 1002, 4),
  (2094, 1002, 2), (2002, 1002, 1), (2014, 1002, 2), (2026, 1002, 4), (2038, 1002, 3),
  (2095, 1002, 2), (2003, 1002, 1), (2015, 1002, 3), (2027, 1002, 4), (2039, 1002, 4),
  (2096, 1002, 3), (2004, 1002, 1), (2016, 1002, 2), (2028, 1002, 1), (2040, 1002, 5),
  (2097, 1002, 4), (2005, 1002, 2), (2017, 1002, 3), (2029, 1002, 1), (2041, 1002, 3),
  (2098, 1002, 4), (2006, 1002, 2), (2018, 1002, 3), (2030, 1002, 1), (2042, 1002, 2),
  (2099, 1002, 4), (2007, 1002, 2), (2019, 1002, 1), (2031, 1002, 1), (2043, 1002, 1),
  (2100, 1002, 3), (2008, 1002, 3), (2020, 1002, 2), (2032, 1002, 2), (2044, 1002, 2),
  (2101, 1002, 2), (2009, 1002, 4), (2021, 1002, 3), (2033, 1002, 3), (2045, 1002, 3),
  (2102, 1002, 1), (2010, 1002, 6), (2022, 1002, 5), (2034, 1002, 5);
  
  #Books in school 1003 with availability (38 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2046, 1003, 2), (2061, 1003, 2), (2062, 1003, 2), (2078, 1003, 1), (2079, 1003, 3),
  (2047, 1003, 3), (2060, 1003, 2), (2063, 1003, 2), (2077, 1003, 2), (2080, 1003, 2),
  (2048, 1003, 2), (2059, 1003, 1), (2064, 1003, 3), (2076, 1003, 2), (2081, 1003, 2),
  (2049, 1003, 2), (2058, 1003, 2), (2067, 1003, 2), (2075, 1003, 1), (2082, 1003, 4),
  (2050, 1003, 2), (2057, 1003, 2), (2068, 1003, 2), (2074, 1003, 2), (2083, 1003, 2),
  (2051, 1003, 3), (2056, 1003, 2), (2069, 1003, 3), (2073, 1003, 3), (2084, 1003, 2),
  (2052, 1003, 2), (2055, 1003, 1), (2070, 1003, 2), (2072, 1003, 2), (2085, 1003, 2),
  (2053, 1003, 2), (2054, 1003, 1), (2071, 1003, 2);
   
  #Books in school 1004 with availability (47 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2086, 1004, 3), (2001, 1004, 2), (2002, 1004, 2), (2019, 1004, 2), (2020, 1004, 2),
  (2087, 1004, 4), (2104, 1004, 4), (2003, 1004, 2), (2018, 1004, 2), (2021, 1004, 2),
  (2088, 1004, 3), (2103, 1004, 2), (2004, 1004, 2), (2017, 1004, 2), (2022, 1004, 1),
  (2089, 1004, 3), (2102, 1004, 2), (2005, 1004, 4), (2016, 1004, 4), (2023, 1004, 2),
  (2090, 1004, 3), (2101, 1004, 2), (2006, 1004, 3), (2015, 1004, 2), (2024, 1004, 2),
  (2091, 1004, 2), (2100, 1004, 3), (2007, 1004, 2), (2014, 1004, 2), (2025, 1004, 3),
  (2092, 1004, 3), (2099, 1004, 2), (2008, 1004, 2), (2013, 1004, 2), (2026, 1004, 2),
  (2093, 1004, 3), (2098, 1004, 2), (2009, 1004, 1), (2012, 1004, 1), (2027, 1004, 2),
  (2094, 1004, 3), (2097, 1004, 1), (2010, 1004, 2), (2011, 1004, 2), (2028, 1004, 2),
  (2095, 1004, 1), (2096, 1004, 2);
  
  #Books in school 1005 with availability (59 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2029, 1005, 1), (2052, 1005, 2), (2053, 1006, 5), (2079, 1005, 5), (2080, 1005, 5),
  (2030, 1005, 5), (2051, 1005, 5), (2054, 1006, 2), (2078, 1005, 1), (2081, 1005, 5),
  (2031, 1005, 3), (2050, 1005, 4), (2055, 1006, 5), (2077, 1005, 1), (2082, 1005, 1),
  (2032, 1005, 2), (2049, 1005, 5), (2056, 1006, 5), (2076, 1005, 1), (2083, 1005, 5),
  (2033, 1005, 1), (2048, 1005, 1), (2057, 1006, 2), (2075, 1005, 5), (2084, 1005, 5),
  (2034, 1005, 5), (2047, 1005, 1), (2058, 1006, 5), (2074, 1005, 5), (2085, 1005, 1),
  (2035, 1005, 5), (2046, 1005, 2), (2059, 1006, 2), (2073, 1005, 1), (2086, 1005, 5),
  (2036, 1005, 3), (2045, 1005, 3), (2060, 1006, 5), (2072, 1005, 5), (2087, 1005, 1),
  (2037, 1005, 5), (2044, 1005, 3), (2061, 1006, 2), (2071, 1005, 3), (2088, 1005, 1),
  (2038, 1005, 5), (2043, 1005, 5), (2065, 1006, 5), (2070, 1005, 1), (2089, 1005, 1),
  (2039, 1005, 5), (2042, 1005, 5), (2066, 1006, 5), (2069, 1005, 1), (2090, 1005, 5),
  (2040, 1005, 4), (2041, 1005, 3), (2067, 1006, 2), (2068, 1005, 3);
  
  #Books in school 1006 with availability (29 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2091, 1006, 1), (2102, 1006, 4), (2103, 1005, 4), (2010, 1006, 4), (2011, 1006, 4),
  (2092, 1006, 2), (2101, 1006, 2), (2104, 1005, 2), (2009, 1006, 3), (2012, 1006, 1),
  (2093, 1006, 3), (2100, 1006, 2), (2001, 1005, 1), (2008, 1006, 3), (2013, 1006, 2),
  (2094, 1006, 4), (2099, 1006, 1), (2002, 1005, 3), (2007, 1006, 1), (2014, 1006, 4),
  (2095, 1006, 4), (2098, 1006, 1), (2003, 1005, 4), (2006, 1006, 1), (2015, 1006, 1),
  (2096, 1006, 3), (2097, 1006, 2), (2004, 1005, 5), (2005, 1006, 2);
  

  #Books in school 1007 with availability (35 books)
  INSERT INTO book_copy (book_id, school_id, book_avail_copies) VALUES
  (2016, 1007, 4), (2023, 1007, 3), (2030, 1007, 1), (2043, 1007, 2), (2044, 1007, 1),
  (2017, 1007, 3), (2024, 1007, 2), (2031, 1007, 4), (2042, 1007, 3), (2045, 1007, 1),
  (2018, 1007, 2), (2025, 1007, 1), (2032, 1007, 3), (2041, 1007, 2), (2046, 1007, 5),
  (2019, 1007, 1), (2026, 1007, 3), (2033, 1007, 3), (2040, 1007, 2), (2047, 1007, 4),
  (2020, 1007, 1), (2027, 1007, 3), (2034, 1007, 2), (2039, 1007, 3), (2048, 1007, 3),
  (2021, 1007, 5), (2028, 1007, 4), (2035, 1007, 2), (2038, 1007, 2), (2049, 1007, 2),
  (2022, 1007, 5), (2029, 1007, 4), (2036, 1007, 1), (2037, 1007, 1), (2050, 1007, 1);

#USERS (80 = 8 operators + 47 students + 25 teachers) 
#Users - Sunrise High School Users  (school_id = 1000)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
	('Emily', 'Johnson', 1000, '1978', 'daviddavis', 'letmein', 'O', TRUE),
    ('John', 'Doe', 1000, '2005', 'johndoe', 'password123', 'S', TRUE),
    ('Jane', 'Smith', 1000, '2007', 'janesmith', 'secret456', 'S', TRUE),
    ('Sarah', 'Wilson', 1000, '2012', 'sarahwilson', 'admin123', 'S', TRUE),
	('Jennifer', 'Miller', 1000, '2015', 'jennifermiller', 'pass1234', 'S', TRUE),
    ('Daniel', 'Taylor', 1000, '2008', 'danieltaylor', '12345678', 'S', TRUE),
    ('Michelle', 'Lee', 1000, '2006', 'michellelee', 'password456', 'S', TRUE),
    ('Michael', 'Johnson', 1000, '1985', 'michaeljohnson', 'abc123', 'T', TRUE),
    ('Emily', 'Brown', 1000, '1990', 'emilybrown', 'qwerty', 'T', TRUE),
    ('Robert', 'Anderson', 1000, '1972', 'robertanderson', 'welcome1', 'T', TRUE);

   
#Users - Maplewood academy (school_id = 1001)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
    ('Jessica', 'Jones', 1001, '1985', 'JessJo', 'admin123', 'O', TRUE),
    ('Jessica', 'Williams', 1001, '2003', 'jessicawilliams', 'password123', 'S', TRUE),
    ('Matthew', 'Jones', 1001, '2002', 'matthewjones', 'secret456', 'S', TRUE),
	('Sarah', 'White', 1001, '2011', 'sarahwhite', 'letmein', 'S', TRUE),
    ('Karen', 'Miller', 1001, '2009', 'miller123', 'welcome1', 'S', TRUE),
    ('Monica', 'Taylor', 1001, '2006', 'MonaLisa', '12345678', 'S', TRUE),
    ('Robert', 'Lee', 1001, '2005', 'bob_the_builder', 'password456', 'S', TRUE),
    ('Emily', 'Brown', 1001, '1988', 'teachermilybrown', 'abc123', 'T', TRUE),
    ('David', 'Davis', 1001, '1992', 'teacherdaviddavis', 'qwerty', 'T', TRUE),
    ('Sherlock', 'Holmes', 1001, '1998', 'bestdetective', 'sherlocked', 'T', TRUE);
    

 #Users - Maplewood Elementary (school id = 1002)
 -- Users - Maplewood Elementary (school_id = 1002)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
    ('Sarah', 'Davis', 1002, '1989', 'Sarah_D', 'admin123', 'O', TRUE),
    ('Michael', 'Brown', 1002, '2005', 'michaelbrown', 'password123', 'S', TRUE),
    ('Sophia', 'Davis', 1002, '2006', 'sophiadavis', 'secret456', 'S', TRUE),
	('Ethan', 'Thomas', 1002, '2014', 'ethanthomas', 'letmein', 'S', TRUE),
    ('Ava', 'Smith', 1002, '2017', 'avasmith', 'welcome1', 'S', TRUE),
	('Liam', 'Taylor', 1002, '2007', 'liamtaylor', '12345678', 'S', TRUE),
    ('Mia', 'Rodriguez', 1002, '2009', 'miarodriguez', 'password456', 'S', TRUE),
    ('Oliver', 'Johnson', 1002, '1987', 'oliverjohnson', 'abc123', 'T', TRUE),
    ('Elsa', 'Jones', 1002, '1991', 'SnowQueen', 'qwerty', 'T', TRUE),
    ('Noah', 'Lee', 1002, '1997', 'noahlee', 'pass1234', 'T', TRUE);


#Users - Springfield Middle School (school id = 1003)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
    ('Jennifer', 'Wilson', 1003, '1983', 'JennyJenny', 'letmein', 'O', TRUE),
    ('Panagiota', 'Breza', 1003, '2006', 'Giota', 'password123', 'S', TRUE),
    ('Emily', 'Miller', 1003, '2015', 'emilymiller', 'secret456', 'S', TRUE),
    ('Clark', 'Kend', 1003, '2017', 'superman', 'welcome1', 'S', TRUE),
    ('Liam', 'Wilson', 1003, '2016', 'liamwilson', 'pass1234', 'S', TRUE),
    ('Mason', 'Lee', 1003, '2007', 'masonlee', '12345678', 'S', TRUE),
    ('Ava', 'Rodriguez', 1003, '2011', 'avarodriguez', 'password456', 'S', TRUE),
    ('David', 'Williams', 1003, '1988', 'davidwilliams', 'abc123', 'T', TRUE),
    ('Grace', 'Anderson', 1003, '1992', 'graceanderson', 'qwerty', 'T', TRUE),
    ('Patrick', 'Stars', 1003, '1989', 'bikini123', 'admin123', 'T', TRUE);

#Users - Westwood High School  (school id = 1004)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
    ('Amy', 'Anderson', 1004, '1984', 'AmyAnde', 'letmein', 'O', TRUE),
    ('Sophia', 'Taylor', 1004, '2013', 'sophiataylor', 'password123', 'S', TRUE),
    ('James', 'Johnson', 1004, '2010', 'jamesjohnson', 'secret456', 'S', TRUE),
	('Elijah', 'Brown', 1004, '2008', 'elijahbrown', 'admin123', 'S', TRUE),
	('Noah', 'Williams', 1004, '2015', 'noahwilliams', 'pass1234', 'S', TRUE),
    ('Mia', 'Jones', 1004, '2006', 'miajones', '12345678', 'S', TRUE),
    ('Oliver', 'Davis', 1004, '1987', 'oliverdavis', 'abc123', 'T', TRUE),
    ('Amelia', 'Anderson', 1004, '1985', 'ameliaanderson', 'qwerty', 'T', TRUE),
    ('John', 'Smith', 1004, '1979', 'Johnny_S', 'pocahondas', 'T', TRUE),
    ('Liam', 'Miller', 1004, '2000', 'liammiller', 'password456', 'T', TRUE);
    
#Users - Meadowbrook Elementary (school id = 1005)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
    ('Linda', 'Martinez', 1005, '1994', 'Linda_Mart', 'letmein', 'O', TRUE),
    ('Olivia', 'Thomas', 1005, '2009', 'oliviathomas', 'password123', 'S', TRUE),
    ('William', 'Wilson', 1005, '2008', 'williamwilson', 'secret456', 'S', TRUE),
    ('Emma', 'Martinez', 1005, '2007', 'emmamartinez', '12345678', 'S', TRUE),
    ('Oliver', 'Rodriguez', 1005, '2005', 'oliverrodriguez', 'password456', 'S', TRUE),
    ('Mia', 'Smith', 1005, '2013', 'miasmith', 'admin123', 'S', TRUE),
    ('Liam', 'Davis', 1005, '2010', 'liamdavis', 'welcome1', 'S', TRUE),
    ('Isabella', 'Brown', 1005, '1986', 'isabellabrown', 'abc123', 'T', TRUE),
    ('Sophia', 'Garcia', 1005, '1992', 'sophiagarcia', 'qwerty', 'T', TRUE),
    ('Noah', 'Johnson', 1005, '1989', 'noahjohnson', 'pass1234', 'T', TRUE);
    

# Users - Fairview Middle School (school id = 1006)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
    ('Michelle', 'Rodriguez', 1006, '1993', 'Mich_Ro', 'letmein', 'O', TRUE),
    ('Emma', 'Harris', 1006, '2008', 'emmaharris', 'password123', 'S', TRUE),
    ('Olivia', 'Clark', 1006, '2007', 'oliviaclark', 'secret456', 'S', TRUE),
    ('Mia', 'Adams', 1006, '2012', 'miaadams', 'welcome1', 'S', TRUE),
    ('William', 'Allen', 1006, '2010', 'williamallen', 'pass1234', 'S', TRUE),
    ('Oliver', 'Baker', 1006, '2006', 'oliverbaker', '12345678', 'S', TRUE),
    ('Isabella', 'Young', 1006, '2009', 'isabellayoung', 'password456', 'S', TRUE),
	('Liam', 'Walker', 1006, '1985', 'liamwalker', 'abc123', 'T', TRUE),
    ('Noah', 'Hall', 1006, '1991', 'noahhall', 'qwerty', 'T', TRUE),
    ('Sophia', 'Parker', 1006, '1982', 'sophiaparker', 'parker123', 'T', TRUE);

#Users - Riverside High School(school id = 1007)
INSERT INTO users (user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
    ('Karen', 'Lee', 1007, '1987', 'karenlee', 'admin123', 'O', TRUE),
    ('Maria', 'Gratsia', '1007', '2012', 'MaRiA', 'password123', 'S', TRUE),
    ('Amelia', 'Mitchell', 1007, '2008', 'ameliamitchell', 'secret456', 'S', TRUE),
    ('Daniel', 'Bennett', 1007, '2012', 'danielbennett', 'welcome1', 'S', TRUE),
    ('Emily', 'Hill', 1007, '2015', 'emilyhill', 'pass1234', 'S', TRUE),
    ('Logan', 'Reed', 1007, '2013', 'loganreed', '12345678', 'S', TRUE),
    ('Sophie', 'Carter', 1007, '2015', 'sophiecarter', 'password456', 'S', TRUE),
    ('James', 'Turner', 1007, '1984', 'jamesturner', 'abc123', 'T', TRUE),
    ('Charlotte', 'Ward', 1007, '1989', 'charlotteward', 'qwerty', 'T', TRUE),
    ('Benjamin', 'Ross', 1007, '1995', 'benjaminross', 'letmein', 'T', TRUE); 

#Library Manager
INSERT INTO users (user_id, user_first_name, user_last_name, school_id, birth_year, myusername, mypassword, user_role, approved) VALUES
	(0000, 'Albert', 'Einstein', NULL, NULL, 'Admin', '1234', 'M', TRUE);
    
#Library Log - Past Borrows - Returned Books
INSERT INTO library_log (user_id, book_copy_id, book_status, borrow_date) VALUES
(5001, 6014, 'Returned', '2022-10-21'),
(5004, 6023, 'Returned', '2022-10-22'),
(5004, 6044, 'Returned', '2022-10-23'),
(5003, 6036, 'Returned', '2022-11-23'),
(5004, 6023, 'Returned', '2022-11-23'),
(5006, 6022, 'Returned', '2022-11-24'),
(5006, 6021, 'Returned', '2022-11-29'),
(5006, 6034, 'Returned', '2022-11-29'),
(5002, 6039, 'Returned', '2022-12-01'),
(5007, 6015, 'Returned', '2022-12-04'),
(5008, 6019, 'Returned', '2022-12-03'),
(5009, 6020, 'Returned', '2022-12-07'),
(5009, 6025, 'Returned', '2022-12-11'),
(5009, 6031, 'Returned', '2022-12-12'),
(5005, 6035, 'Returned', '2022-12-12'), 
(5011, 6044, 'Returned', '2022-09-21'),
(5014, 6043, 'Returned', '2022-09-22'),
(5014, 6044, 'Returned', '2022-09-23'),
(5013, 6046, 'Returned', '2022-09-23'),
(5014, 6063, 'Returned', '2022-10-23'),
(5016, 6052, 'Returned', '2022-10-24'),
(5016, 6061, 'Returned', '2022-10-29'),
(5016, 6074, 'Returned', '2022-10-29'),
(5012, 6089, 'Returned', '2022-10-01'),
(5017, 6085, 'Returned', '2022-10-04'),
(5018, 6069, 'Returned', '2022-11-03'),
(5019, 6050, 'Returned', '2022-11-07'),
(5019, 6065, 'Returned', '2022-11-15'),
(5019, 6071, 'Returned', '2022-11-16'),
(5015, 6085, 'Returned', '2022-11-17'), 
(5011, 6084, 'Returned', '2022-11-21'),
(5014, 6073, 'Returned', '2022-11-22'),
(5014, 6064, 'Returned', '2022-11-24'),
(5013, 6066, 'Returned', '2022-11-25'),
(5014, 6053, 'Returned', '2022-12-26'), 
(5026, 6092, 'Returned', '2022-09-28'),
(5026, 6091, 'Returned', '2022-09-29'),
(5026, 6094, 'Returned', '2022-09-30'),
(5022, 6099, 'Returned', '2022-09-01'),
(5027, 6115, 'Returned', '2022-09-04'),
(5028, 6119, 'Returned', '2022-09-03'),
(5029, 6120, 'Returned', '2022-09-07'),
(5029, 6125, 'Returned', '2022-11-11'),
(5029, 6131, 'Returned', '2022-11-12'),
(5025, 6135, 'Returned', '2022-11-12'), 
(5021, 6114, 'Returned', '2022-12-21'),
(5024, 6123, 'Returned', '2022-12-22'), 
(5034, 6144, 'Returned', '2022-11-03'),
(5033, 6165, 'Returned', '2022-11-05'),
(5034, 6153, 'Returned', '2022-11-16'),
(5036, 6162, 'Returned', '2022-11-18'),
(5036, 6171, 'Returned', '2022-11-21'),
(5036, 6174, 'Returned', '2022-11-29'),
(5032, 6179, 'Returned', '2022-12-01'),
(5037, 6175, 'Returned', '2022-12-04'),
(5038, 6159, 'Returned', '2022-12-03'),
(5039, 6160, 'Returned', '2022-12-07'),
(5039, 6165, 'Returned', '2022-12-11'),
(5039, 6165, 'Returned', '2022-12-11'),
(5039, 6151, 'Returned', '2022-12-12'),
(5035, 6175, 'Returned', '2022-12-18'), 
(5041, 6214, 'Returned', '2022-11-21'),
(5044, 6223, 'Returned', '2022-11-22'),
(5044, 6194, 'Returned', '2022-11-23'),
(5043, 6196, 'Returned', '2022-11-23'),
(5044, 6223, 'Returned', '2022-11-23'),
(5046, 6222, 'Returned', '2022-11-24'),
(5046, 6221, 'Returned', '2022-11-29'),
(5046, 6194, 'Returned', '2022-11-29'), 
(5052, 6229, 'Returned', '2022-12-01'),
(5057, 6225, 'Returned', '2022-12-04'),
(5058, 6239, 'Returned', '2022-12-03'),
(5059, 6240, 'Returned', '2022-12-07'),
(5059, 6265, 'Returned', '2022-12-11'),
(5059, 6271, 'Returned', '2022-12-12'),
(5055, 6285, 'Returned', '2022-12-12'), 
(5061, 6314, 'Returned', '2022-11-21'),
(5064, 6313, 'Returned', '2022-11-22'),
(5064, 6194, 'Returned', '2022-11-23'),
(5063, 6196, 'Returned', '2022-11-23'),
(5064, 6303, 'Returned', '2022-11-23'),
(5066, 6302, 'Returned', '2022-11-24'),
(5066, 6301, 'Returned', '2022-11-29'),
(5066, 6304, 'Returned', '2022-11-29'), 
(5072, 6329, 'Returned', '2022-12-01'), 
(5077, 6335, 'Returned', '2022-12-04'),
(5078, 6339, 'Returned', '2022-12-03'),
(5079, 6350, 'Returned', '2022-12-07'),
(5079, 6345, 'Returned', '2022-12-11'),
(5079, 6321, 'Returned', '2022-12-12'),
(5075, 6335, 'Returned', '2022-12-12'),
(5041, 6218, 'Returned', '2023-01-21'),
(5048, 6224, 'Returned', '2023-01-22'),
(5042, 6199, 'Returned', '2023-01-23'),
(5045, 6191, 'Returned', '2023-02-23'),
(5046, 6226, 'Returned', '2023-02-23'),
(5047, 6212, 'Returned', '2023-03-24'),
(5061, 6316, 'Returned', '2023-03-21'),
(5069, 6317, 'Returned', '2023-03-22'),
(5068, 6294, 'Returned', '2023-04-23'),
(5067, 6296, 'Returned', '2023-04-23'),
(5065, 6303, 'Returned', '2023-04-23'),
(5066, 6302, 'Returned', '2023-04-24'); 


#Borrowed books
#Borrows with late return (8)
INSERT borrow(user_id, book_copy_id, borrow_date) VALUES
(5001, 6033, '2023-05-01'), 
(5051, 6229, '2023-05-11'), 
(5011, 6088, '2023-05-09'), 
(5061, 6300, '2023-05-08'),
(5021, 6091, '2023-05-19'), 
(5071, 6350, '2023-05-03'),
(5031, 6155, '2023-05-11'), 
(5041, 6188, '2023-05-08');

# Active borrows (62)
# School 0 - 1000 - Borrowed Books (10)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5002, 6002, TRUE), (5003, 6003, TRUE), (5004, 6004, TRUE), (5005, 6000, TRUE),
(5006, 6006, TRUE), (5007, 6007, TRUE), (5008, 6008, TRUE), (5009, 6009, TRUE),
(5002, 6012, TRUE), (5003, 6013, TRUE);

# School 1 - 1001 - Borrowed Books (9)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5016, 6088, TRUE), (5019, 6040, TRUE), (5018, 6046, TRUE), (5015, 6045, TRUE),
(5012, 6060, TRUE), (5013, 6063, TRUE), (5014, 6078, TRUE), (5012, 6088, TRUE),
(5014, 6079, TRUE);

# School 2 - 1002 - Borrowed Books (10)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5025, 6100, TRUE), (5029, 6108, TRUE), (5024, 6115, TRUE), (5028, 6122, TRUE),
(5022, 6094, TRUE), (5026, 6102, TRUE), (5027, 6128, TRUE), (5022, 6112, TRUE),
(5024, 6098, TRUE), (5025, 6116, TRUE);

# School 3 - 1003 - Borrowed Books (7)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5035, 6153, TRUE), (5039, 6161, TRUE), (5034, 6169, TRUE), (5038, 6164, TRUE),
(5032, 6147, TRUE), (5036, 6155, TRUE), (5035, 6171, TRUE);

# School 4 - 1004 - Borrowed Books (8)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5042, 6200, TRUE), (5044, 6186, TRUE), (5046, 6210, TRUE), (5048, 6187, TRUE),
(5043, 6226, TRUE), (5045, 6188, TRUE), (5047, 6209, TRUE), (5049, 6201, TRUE);

# School 5 - 1005 - Borrowed Books (4)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5052, 6230, TRUE), (5054, 6269, TRUE), (5056, 6280, TRUE), (5058, 6271, TRUE);

# School 6 - 1006 - Borrowed Books (8)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5062, 6300, TRUE), (5064, 6302, TRUE), (5066, 6304, TRUE), (5068, 6306, TRUE),
(5063, 6301, TRUE), (5065, 6303, TRUE), (5067, 6305, TRUE), (5069, 6307, TRUE);

# School 7 - 1007 - Borrowed Books (6)
INSERT INTO borrow (user_id, book_copy_id, approved) VALUES
(5072, 6320, TRUE), (5074, 6344, TRUE), (5076, 6325, TRUE), (5073, 6347, TRUE),
(5075, 6350, TRUE), (5077, 6333, TRUE);


# Reserves (46)
INSERT INTO reserve (user_id, book_copy_id) VALUES
(5015, 6001), (5004, 6021), (5007, 6044), (5011, 6012), (5005, 6026),
(5006, 6037), (5007, 6032), (5008, 6020), (5009, 6015), (5000, 6025),
(5001, 6021), (5002, 6035), (5003, 6019), (5004, 6016), (5005, 6030),
(5006, 6029), (5007, 6027), (5008, 6018), (5009, 6017), (5012, 6048),
(5013, 6082), (5012, 6049), (5010, 6051), (5010, 6062), (5016, 6079),
(5019, 6052), (5018, 6050), (5017, 6056), (5015, 6088), (5029, 6124),
(5023, 6096), (5027, 6104), (5024, 6118), (5029, 6126), (5028, 6106),
(5023, 6114), (5026, 6120), (5033, 6149), (5037, 6157), (5032, 6165),
(5034, 6173), (5039, 6126), (5034, 6151), (5038, 6159), (5033, 6167),
(5036, 6175), (5037, 6177);


# Reviews (5)
INSERT INTO review (book_id, user_id, book_review, likert, approved) VALUES
(2001, 5015, 'The book was great!', 5, TRUE),
(2010, 5014, 'I didn\'t like it!', 1, TRUE),
(2013, 5002, 'Medium', 3, TRUE),
(2013, 5003, 'Loved it!', 5, TRUE),
(2022, 5004, 'The book was great!', 5, TRUE);
