#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Fungsi untuk memeriksa dan memasukkan tim ke dalam tabel jika belum ada
INSERT_TEAM() {  
  TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name = '$1'")
  if [[ -z $TEAM_NAME ]]
  then
    $($PSQL "INSERT INTO teams(name) VALUES('$1')")
    echo Inserted teams $1
  fi
}

# Membaca file games.csv
tail -n +2 games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
  # Jika tidak ada, Input team ke tabel teams
  INSERT_TEAM "$WINNER"
  INSERT_TEAM "$OPPONENT"

  # Jika ada, ambil ID team dari tabel teams
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

  # Input team ke tabel games
  $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) \
           VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)"
   )

  # Cetak games ke terminal
  echo New game added: $WINNER_ID VS $OPPONENT_ID , score $WINNER_GOALS : $OPPONENT_GOALS
done
