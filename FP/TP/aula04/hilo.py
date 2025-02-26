# Complete the code to make the HiLo game.

import random

def playHiLo():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101);
    guesses = 0
    print("I picked a number between 1 and 100. Can you guess it?", secret)
    # put your code here
    while True:
        guesses += 1
        guess = int(input("Enter your guess: "))
        if guess == secret:
            print("\nYou guessed it after {} guesses!".format(guesses))
            break
        else:
            if guess > secret:
                reason = "High"
            else:
                reason = "Low"
            print("\nWrong guess, its too",reason,", try again\n")


playHiLo()

