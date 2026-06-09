#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo -e "\n---- Number Guess Game ----\n"
echo -e "Enter your username:"
read USERNAME
tocheck=${#USERNAME}
  if [[ ! $tocheck -le 22 ]] || [[ ! $tocheck -gt 0 ]]
  then
  echo -e "Not a correct Name!\nGame ends here!"
  exit
  fi
USERNAME_RESULT=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
USER_ID_RESULT=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
if [[ -z $USERNAME_RESULT ]]
  then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
    INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  else 
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN users USING(user_id) WHERE username='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(best_guess) FROM games LEFT JOIN users USING(user_id) WHERE username='$USERNAME'")
    echo Welcome back, $USERNAME\! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0
echo "Guess the secret number between 1 and 1000:"
read USER_GUESS
until [[ $USER_GUESS == $SECRET_NUMBER ]]
do
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
      read USER_GUESS
      ((GUESS_COUNT++))
    else
      if [[ $USER_GUESS < $SECRET_NUMBER ]]
        then
          echo "It's higher than that, guess again:"
          read USER_GUESS
          ((GUESS_COUNT++))
        else 
          echo "It's lower than that, guess again:"
          read USER_GUESS
          ((GUESS_COUNT++))
      fi  
  fi
done
((GUESS_COUNT++))
USER_ID_RESULT=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, best_guess) VALUES ($USER_ID_RESULT, $GUESS_COUNT)")
echo You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job\!