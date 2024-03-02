-- Membuat tabel teams
CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

-- Membuat tabel games
CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    year INTEGER NOT NULL,
    round VARCHAR(255) NOT NULL,
    winner_id INTEGER REFERENCES teams(teams_id),
    opponent_id INTEGER REFERENCES teams(teams_id),
    winner_goals INTEGER NOT NULL,
    opponent_goals INTEGER NOT NULL
);
