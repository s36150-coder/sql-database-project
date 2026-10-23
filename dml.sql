INSERT INTO PetType VALUES (1, 'Dog');
INSERT INTO PetType VALUES (2, 'Cat');
INSERT INTO PetType VALUES (3, 'Bird');
INSERT INTO PetType VALUES (4, 'Rabbit');

INSERT INTO User VALUES (1, 'Alice Johnson', 'alice@email.com', '555-1001', DATE '2023-01-10');
INSERT INTO User VALUES (2, 'Bob Smith', 'bob@email.com', '555-1002', DATE '2023-02-15');
INSERT INTO User VALUES (3, 'Clara Davis', 'clara@email.com', '555-1003', DATE '2023-03-20');
INSERT INTO User VALUES (4, 'David Brown', 'david@email.com', '555-1004', DATE '2023-04-05');
INSERT INTO User VALUES (5, 'Eva Wilson', 'eva@email.com', '555-1005', DATE '2023-05-18');

INSERT INTO Address VALUES (1, '12 Oak Street', 'Warsaw', '00-001', 'Poland', 1);
INSERT INTO Address VALUES (2, '34 Pine Ave', 'Krakow', '30-002', 'Poland', 2);
INSERT INTO Address VALUES (3, '56 Elm Rd', 'Gdansk', '80-003', 'Poland', 3);
INSERT INTO Address VALUES (4, '78 Maple Ln', 'Wroclaw', '50-004', 'Poland', 4);
INSERT INTO Address VALUES (5, '90 Birch Blvd', 'Poznan', '60-005', 'Poland', 5);

INSERT INTO Availability VALUES (1, DATE '2024-07-01', 2);
INSERT INTO Availability VALUES (2, DATE '2024-07-02', 2);
INSERT INTO Availability VALUES (3, DATE '2024-07-05', 3);
INSERT INTO Availability VALUES (4, DATE '2024-07-10', 4);
INSERT INTO Availability VALUES (5, DATE '2024-07-15', 5);

INSERT INTO Pet VALUES (1, 'Buddy', '3', 'Friendly golden retriever', 1, 1);
INSERT INTO Pet VALUES (2, 'Whiskers', '5', 'Calm indoor cat', 2, 1);
INSERT INTO Pet VALUES (3, 'Max', '2', 'Energetic beagle', 1, 2);
INSERT INTO Pet VALUES (4, 'Luna', '4', 'Gentle grey cat', 2, 3);
INSERT INTO Pet VALUES (5, 'Tweety', '1', 'Yellow canary', 3, 4);

INSERT INTO Photo VALUES (1, 'https://photos.example.com/buddy1.jpg', 1);
INSERT INTO Photo VALUES (2, 'https://photos.example.com/buddy2.jpg', 1);
INSERT INTO Photo VALUES (3, 'https://photos.example.com/whiskers1.jpg', 2);
INSERT INTO Photo VALUES (4, 'https://photos.example.com/max1.jpg', 3);
INSERT INTO Photo VALUES (5, 'https://photos.example.com/luna1.jpg', 4);

INSERT INTO CareRequirement VALUES (1, 'Needs daily walks', 1);
INSERT INTO CareRequirement VALUES (2, 'Allergic to chicken-based food', 1);
INSERT INTO CareRequirement VALUES (3, 'Needs medication twice a day', 2);
INSERT INTO CareRequirement VALUES (4, 'High energy, needs playtime', 3);
INSERT INTO CareRequirement VALUES (5, 'Fresh water changed daily', 5);

INSERT INTO CareRequest VALUES (1, DATE '2024-07-01', DATE '2024-07-05', 'Warsaw', 1, 1);
INSERT INTO CareRequest VALUES (2, DATE '2024-07-03', DATE '2024-07-07', 'Krakow', 3, 2);
INSERT INTO CareRequest VALUES (3, DATE '2024-07-10', DATE '2024-07-12', 'Gdansk', 4, 3);
INSERT INTO CareRequest VALUES (4, DATE '2024-07-15', DATE '2024-07-20', 'Warsaw', 2, 1);
INSERT INTO CareRequest VALUES (5, DATE '2024-07-08', DATE '2024-07-09', 'Wroclaw', 5, 4);

INSERT INTO HelpOffer VALUES (1, 'I have experience with dogs!', 2);
INSERT INTO HelpOffer VALUES (2, 'Happy to help with cats.', 3);
INSERT INTO HelpOffer VALUES (3, 'I love animals, will take great care.', 4);
INSERT INTO HelpOffer VALUES (4, 'Available all week for this.', 5);
INSERT INTO HelpOffer VALUES (5, 'I have a big yard for the dog.', 3);

INSERT INTO Arrangement VALUES (1, 'completed', 1, 1);
INSERT INTO Arrangement VALUES (2, 'completed', 2, 2);
INSERT INTO Arrangement VALUES (3, 'active', 3, 3);
INSERT INTO Arrangement VALUES (4, 'pending', 4, 4);
INSERT INTO Arrangement VALUES (5, 'completed', 5, 5);

INSERT INTO Chat VALUES (1, 1);
INSERT INTO Chat VALUES (2, 2);
INSERT INTO Chat VALUES (3, 3);
INSERT INTO Chat VALUES (4, 4);
INSERT INTO Chat VALUES (5, 5);

INSERT INTO Message VALUES (1, 'Hello, is Buddy friendly with kids?', '2024-06-28 10:00', 1, 1);
INSERT INTO Message VALUES (2, 'Yes, he loves children!', '2024-06-28 10:05', 1, 2);
INSERT INTO Message VALUES (3, 'What time should I pick up Max?', '2024-07-02 09:00', 2, 2);
INSERT INTO Message VALUES (4, 'Anytime after 10am works.', '2024-07-02 09:10', 2, 3);
INSERT INTO Message VALUES (5, 'Luna eats twice a day at 8am and 6pm.', '2024-07-09 14:00', 3, 3);

INSERT INTO Review VALUES (1, 5, 'Amazing caregiver, Buddy loved it!', 1, 1);
INSERT INTO Review VALUES (2, 4, 'Very responsible and caring.', 2, 2);
INSERT INTO Review VALUES (3, 5, 'Would recommend to anyone.', 2, 3);
INSERT INTO Review VALUES (4, 3, 'Good but a bit late on updates.', 1, 2);
INSERT INTO Review VALUES (5, 5, 'Tweety was in great hands.', 5, 4);
