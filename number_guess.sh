#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME

GET_USERNAME=$($PSQL "SELECT username FROM players WHERE username='$USERNAME'")
GET_PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")

if [[ -z $GET_USERNAME ]]
  then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
    INSERT_USERNAME=$($PSQL "INSERT INTO players(username) VALUES ('$USERNAME')")
  
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN players USING(player_id) WHERE username='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games LEFT JOIN players USING(player_id) WHERE username='$USERNAME'") 
    echo Welcome back, $USERNAME\! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESSES=0

echo "Guess the secret number between 1 and 1000:"
read USER_GUESS

until [[ $USER_GUESS == $SECRET_NUMBER ]]
do

  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
      read USER_GUESS
      ((GUESSES++))

    else
      if [[ $USER_GUESS < $SECRET_NUMBER ]]
        then
          echo "It's higher than that, guess again:"
          read USER_GUESS
          ((GUESSES++))
        else
          echo "It's lower than that, guess again:"
          read USER_GUESS
          ((GUESSES++))
      fi
  fi
done

((GUESSES++))

GET_PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(player_id, secret_number, guesses) VALUES ($GET_PLAYER_ID, $SECRET_NUMBER, $GUESSES)")

echo You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job\!
  