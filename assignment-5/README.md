Build the database of a small electronic gradebook for one class: students, subjects and grades – every grade is a number from 2 to 6, in a given subject, for a given student, on a given date. The database must not allow a grade of 7 or 1.

One student has many grades in one subject. On one date there can be grades in different subjects.

The database must be able to answer
All grades of a given student in a given subject, by date.
The class average grade in each subject (with two decimal places) and the number of grades.
Each question = one SQL query that returns the answer as a table.

Minimum data
at least 5 students and at least 4 subjects
at least 20 grades; at least one student with 3+ grades in one subject
an attempt to INSERT a grade of 7 – write down in the README what the database answers
Your made-up data is good when every query returns at least 2 rows and there is something that could go wrong.
