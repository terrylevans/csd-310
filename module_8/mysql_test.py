CREATE TABLE team (
    team_id     INT             NOT NULL        AUTO_INCREMENT,
    team_name   VARCHAR(75)     NOT NULL,
    mascot      VARCHAR(75)     NOT NULL,
    PRIMARY KEY(team_id)
); 

-- create the player table and set the foreign key
CREATE TABLE player (
    player_id   INT             NOT NULL        AUTO_INCREMENT,
    first_name  VARCHAR(75)     NOT NULL,
    last_name   VARCHAR(75)     NOT NULL,
    team_id     INT             NOT NULL,
    PRIMARY KEY(player_id),
    CONSTRAINT fk_team 
    FOREIGN KEY(team_id)
        REFERENCES team(team_id)
);


-- insert team records
INSERT INTO team(team_name, mascot)
    VALUES('Team Gandalf', 'White Wizards');

INSERT INTO team(team_name, mascot)
    VALUES('Team Sauron', 'Orcs');


-- insert player records 
INSERT INTO player(first_name, last_name, team_id) 
    VALUES('Thorin', 'Oakenshield', (SELECT team_id FROM team WHERE team_name = 'Team Gandalf'));

INSERT INTO player(first_name, last_name, team_id)
    VALUES('Bilbo', 'Baggins', (SELECT team_id FROM team WHERE team_name = 'Team Gandalf'));

INSERT INTO player(first_name, last_name, team_id)
    VALUES('Frodo', 'Baggins', (SELECT team_id FROM team WHERE team_name = 'Team Gandalf'));

INSERT INTO player(first_name, last_name, team_id) 
    VALUES('Saruman', 'The White', (SELECT team_id FROM team WHERE team_name = 'Team Sauron'));

INSERT INTO player(first_name, last_name, team_id)
    VALUES('Angmar', 'Witch-king', (SELECT team_id FROM team WHERE team_name = 'Team Sauron'));

INSERT INTO player(first_name, last_name, team_id)
    VALUES('Azog', 'The Defiler', (SELECT team_id FROM team WHERE team_name = 'Team Sauron'));
