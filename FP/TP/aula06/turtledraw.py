# Exercise 5 on "How to think like a computer scientist", ch. 11.

import turtle

def main():
    screen = turtle.Screen()
    t = turtle.Turtle()
    t.color("green")
    # Use t.up(), t.down() and t.goto(x, y)

    # Put your code here
    with open("drawing.txt", "r") as file:
        for line in file:
            line = line.strip()
            #print(line, type(line))
            if line == "UP":
                t.up()
            elif line == "DOWN":
                t.down()
            else:
                x, y = map(int, line.split())
                t.goto(x, y)

    # Wait until window is closed
    screen.mainloop()


if __name__ == "__main__":
    main()

