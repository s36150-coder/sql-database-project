CREATE TABLE PetType (
    type_id     INTEGER PRIMARY KEY,
    name        VARCHAR2(30) NOT NULL
);

CREATE TABLE User (
    user_id         INTEGER PRIMARY KEY,
    name            VARCHAR2(30) NOT NULL,
    email           VARCHAR2(30) NOT NULL UNIQUE,
    phone           VARCHAR2(30),
    registration_da DATE NOT NULL
);

CREATE TABLE Address (
    address_id  INTEGER PRIMARY KEY,
    street      VARCHAR2(30),
    city        VARCHAR2(30),
    zip_code    VARCHAR2(30),
    country     VARCHAR2(30),
    user_id     INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Availability (
    availability_id INTEGER PRIMARY KEY,
    available_date  DATE NOT NULL,
    user_id         INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Pet (
    pet_id      INTEGER PRIMARY KEY,
    name        VARCHAR2(30) NOT NULL,
    age         VARCHAR2(30),
    bio         VARCHAR2(30),
    PetType_id  INTEGER NOT NULL,
    user_id     INTEGER NOT NULL,
    FOREIGN KEY (PetType_id) REFERENCES PetType(type_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Photo (
    photo_id    INTEGER PRIMARY KEY,
    url         VARCHAR2(100) NOT NULL,
    pet_id      INTEGER NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES Pet(pet_id)
);

CREATE TABLE CareRequirement (
    requirement_i   INTEGER PRIMARY KEY,
    description     VARCHAR2(50),
    pet_id          INTEGER NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES Pet(pet_id)
);

CREATE TABLE CareRequest (
    request_id  INTEGER PRIMARY KEY,
    start_date  DATE NOT NULL,
    end_date    DATE NOT NULL,
    location    VARCHAR2(50),
    pet_id      INTEGER NOT NULL,
    owner_id    INTEGER NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES Pet(pet_id),
    FOREIGN KEY (owner_id) REFERENCES User(user_id)
);

CREATE TABLE HelpOffer (
    offer_id    INTEGER PRIMARY KEY,
    message     VARCHAR2(30),
    caregiver_id INTEGER NOT NULL,
    FOREIGN KEY (caregiver_id) REFERENCES User(user_id)
);

CREATE TABLE Arrangement (
    arrangement_id  INTEGER PRIMARY KEY,
    status          VARCHAR2(30) NOT NULL,
    request_id      INTEGER NOT NULL,
    offer_id        INTEGER NOT NULL,
    FOREIGN KEY (request_id) REFERENCES CareRequest(request_id),
    FOREIGN KEY (offer_id) REFERENCES HelpOffer(offer_id)
);

CREATE TABLE Chat (
    chat_id         INTEGER PRIMARY KEY,
    arrangement_id  INTEGER NOT NULL,
    FOREIGN KEY (arrangement_id) REFERENCES Arrangement(arrangement_id)
);

CREATE TABLE Message (
    message_id  INTEGER PRIMARY KEY,
    content     VARCHAR2(30),
    sent_at     VARCHAR2(30),
    chat_id     INTEGER NOT NULL,
    sender_id   INTEGER NOT NULL,
    FOREIGN KEY (chat_id) REFERENCES Chat(chat_id),
    FOREIGN KEY (sender_id) REFERENCES User(user_id)
);

CREATE TABLE Review (
    review_id       INTEGER PRIMARY KEY,
    score           INTEGER NOT NULL,
    comment         VARCHAR2(30),
    arrangement_id  INTEGER NOT NULL,
    reviewer_id     INTEGER NOT NULL,
    FOREIGN KEY (arrangement_id) REFERENCES Arrangement(arrangement_id),
    FOREIGN KEY (reviewer_id) REFERENCES User(user_id)
);
