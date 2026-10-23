-- ============================================================
-- WHERE QUERIES (5)
-- ============================================================

-- 1. Get all pets that are older than 2 years
SELECT * FROM Pet WHERE age > '2';

-- 2. Get all care requests located in Warsaw
SELECT * FROM CareRequest WHERE location = 'Warsaw';

-- 3. Get all arrangements that are completed
SELECT * FROM Arrangement WHERE status = 'completed';

-- 4. Get all users who registered after 2023-03-01
SELECT * FROM User WHERE registration_da > '2023-03-01';

-- 5. Get all reviews with a score of 5
SELECT * FROM Review WHERE score = 5;


-- ============================================================
-- JOIN QUERIES (5)
-- ============================================================

-- 6. Get each pet along with its owner's name
SELECT Pet.name AS pet_name, User.name AS owner_name
FROM Pet
JOIN User ON Pet.user_id = User.user_id;

-- 7. Get each care request with the pet name and owner name
SELECT CareRequest.request_id, Pet.name AS pet, User.name AS owner, CareRequest.location
FROM CareRequest
JOIN Pet ON CareRequest.pet_id = Pet.pet_id
JOIN User ON CareRequest.owner_id = User.user_id;

-- 8. Get each arrangement with the caregiver's name
SELECT Arrangement.arrangement_id, Arrangement.status, User.name AS caregiver
FROM Arrangement
JOIN HelpOffer ON Arrangement.offer_id = HelpOffer.offer_id
JOIN User ON HelpOffer.caregiver_id = User.user_id;

-- 9. Get all messages with the sender's name and chat id
SELECT Message.message_id, User.name AS sender, Message.content, Message.sent_at
FROM Message
JOIN User ON Message.sender_id = User.user_id;

-- 10. Get each review with the reviewer's name and the arrangement status
SELECT Review.review_id, User.name AS reviewer, Review.score, Review.comment, Arrangement.status
FROM Review
JOIN User ON Review.reviewer_id = User.user_id
JOIN Arrangement ON Review.arrangement_id = Arrangement.arrangement_id;


-- ============================================================
-- GROUP BY + AGGREGATE QUERIES (5)
-- ============================================================

-- 11. Count how many pets each user owns
SELECT User.name, COUNT(Pet.pet_id) AS pet_count
FROM User
LEFT JOIN Pet ON User.user_id = Pet.user_id
GROUP BY User.user_id, User.name;

-- 12. Get the average review score per arrangement
SELECT arrangement_id, AVG(score) AS avg_score
FROM Review
GROUP BY arrangement_id;

-- 13. Get the number of care requests per location
SELECT location, COUNT(*) AS request_count
FROM CareRequest
GROUP BY location;

-- 14. Get the maximum review score given by each reviewer
SELECT reviewer_id, MAX(score) AS highest_score
FROM Review
GROUP BY reviewer_id;

-- 15. Count how many messages were sent in each chat
SELECT chat_id, COUNT(*) AS message_count
FROM Message
GROUP BY chat_id;


-- ============================================================
-- SUBQUERY QUERIES (3, including 1 correlated)
-- ============================================================

-- 16. Get users who have made at least one care request
SELECT name FROM User
WHERE user_id IN (SELECT DISTINCT owner_id FROM CareRequest);

-- 17. Get pets that have at least one care requirement
SELECT name FROM Pet
WHERE pet_id IN (SELECT DISTINCT pet_id FROM CareRequirement);

-- 18. (Correlated) Get users whose review score is higher than
--     the average score of all reviews for the same arrangement
SELECT r1.review_id, r1.reviewer_id, r1.score
FROM Review r1
WHERE r1.score > (
    SELECT AVG(r2.score)
    FROM Review r2
    WHERE r2.arrangement_id = r1.arrangement_id
);
