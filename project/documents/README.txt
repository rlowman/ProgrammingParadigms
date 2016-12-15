Robert Lowman
12/8/16
Project ReadMe
CS315 Programming Paradigms
  My plan for my project that I will be implementing in Python 2.7 is a program
  that gives a file a mature-content based rating, based on sexual, violent, and adult
  content and language.  This rating will be based off of an algorithm that includes how
  many words in the document could be considered sexual, violent, or adult-themed compared
  to how many total words are in the document. This algorithm is flexible for the user, as
  certain values pertaining to the importance of each category and how much they affect the
  overall rating of the file. A database will be utilized to store threetypes of words that
  could be considered mature, which will be categorized as sexual words,
  violent words, or curse words. Before the document is processed, the user will be prompted
  to select from a list of options on whether they want to rate a file, add a word to the database,
  remove the word from the a, or quit the program. This will allow the user to have a rating more
  individualized for their needs. When the algorithm calculates the maturity rating of the current file,

  October 31st: Shell Work
  November 7th: Database Schema designed
  November 21st: Database interaction complete
  December 8th: Finished Project

  Requirements: Python 2.7
                psycopg2

        To install the necessary modules, use command line sudo apt install python-psycopg2

        To run project, run the Python compiler on main.py and the program will begin

  Looking back on this project, I put it aside more than I should have. As a result,
  it is not what I really expected it to be. I have a lot of bugs that will need to
  be revised before December 15th that I can hopefully fix. This project did teach
  me a lot about Python and the syntax and structure it has.

********************************** BUG FIXES *****************************************
General Corrections:
  - Made the User Interface more readable by incorporating spaces between each prompt.
* - Added a stem column to each table since their was no way to store the stem of each word
      and updated DatabaseCreation.sql accordingly.
  - Factored out the add and remove functions in the main method to improve readability
* - Incorporated the functionality for the user to adjust the degree of each type of word
      to fix the issue of not having a very accurate rating

* (I realize these are stretching the meaning of a "bug" however I felt they were necessary
    for my project to be implemented properly)

(lines are based off of initial submission)
dbModule.py corrections:
    line 12: Changed cur to not be a global variable, instead created a cursor in each method
        so that it could be closed each time properly.
    line 16/26: Modified the execute statement, as the previous method allowed injection attacks
    (Rest of module): After getting the proper format for add/remove/get sexual words, the rest of
        the module was modified accordingly with similar functionality however using different tables.
        Ensured that all get() methods were getting stems rather than the whole string

porterStemmer.py corrections:
    line(s) 5-19 / 93-103 / 263-275 / 285-295: Fixed indentation errors that arose for unknown reasons
    line(s) 5-19: switched 'word' to 'temp' as this method was returning the parameter
    line 117: added missing return statement

fileHandler.py corrections:
    line(s) 26-29: Made these "0's" into "0.0's" as integer division was causing the rating to be off
    line(s) 38, 40, 42: Instead of count, used 'in' instead
    line 46: changed algorithm into more accurate calculation
