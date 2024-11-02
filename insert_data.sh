#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo $($PSQL "TRUNCATE games, teams")
# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
   
  if [[ $WINNER != winner ]]
  then
    CHECK=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'") 
    echo $CHECK != $WINNER
    if [[ $CHECK != $WINNER ]]
    then 
      INSERT_TEAMS1_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAMS1_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into Teams, $WINNER"
      fi
    else
      continue
    fi 

  fi
done


cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
   
  if [[ $WINNER != winner ]]
  then
    CHECK=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    echo $CHECK != $OPPONENT
    if [[ $CHECK != $OPPONENT ]]
    then 
      INSERT_TEAMS2_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_TEAMS2_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into Teams, $OPPONENT"
      fi
    else
      continue
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, winner_goals, opponent_id, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $WINNER_GOALS, $OPPONENT_ID, $OPPONENT_GOALS)")
done