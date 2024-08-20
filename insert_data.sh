#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# The tests have a 20 second limit, so try to make your script efficient. 

echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

# insert team table data
do
  # get winning team names first
  if [[ $WINNER != winner ]]
    then
      # get winning team_id IF EXIST
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    
      # if winning team_id NOT FOUND
      if [[ -z $TEAM_ID ]]
      then
        # insert winning team name
        INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
          if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
            then
            echo "Inserted into team name, $WINNER"
          fi
      fi
  fi

  # get opponent team names second
  if [[ $OPPONENT != "opponent" ]]
    then
      # get opponenet team_id IF EXIST
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

      # if opponenet team_id NOT FOUND
      if [[ -z $TEAM_ID ]]
      then
        #insert opponent team name
        INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
          if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
            then
            echo "Inserted into team name, $OPPONENT"
          fi
      fi
  fi    


  # insert game table data
  if [[ $YEAR != year ]]
    then
    # get winning team_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # get opponent team_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # insert game data
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR,'$ROUND',$WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID)")
      if [[ $INSERT_GAMES == "INSERT 0 1" ]]
      then
        echo "Inserted game data: $YEAR, $ROUND, $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID"
      fi
  fi    
done
