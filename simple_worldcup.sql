-- Tabel Teams
CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

-- Tabel Games
CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    round VARCHAR(255) NOT NULL,
    winner_goals INTEGER NOT NULL,
    opponent_goals INTEGER NOT NULL
    winner_id INTEGER REFERENCES teams(teams_id),
    opponent_id INTEGER REFERENCES teams(teams_id),
);
