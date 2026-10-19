# Assignment 5 — Electronic Gradebook

I made three tables: `students` for the students, `subjects` for the school subjects, and `grades` for individual grades. Each table has a primary key, and `grades` uses foreign keys to connect each grade to an existing student and subject. I used `DATE` for the grade date, `INTEGER` for grades, and a `CHECK` constraint to allow only grades from 2 to 6. I do not store student names or subject names again in the `grades` table because their IDs already identify them, and I do not store averages because they can be calculated from the grades.

**Invalid grade test:** An attempt to insert a grade of 7 is rejected by the database because it violates the `CHECK` constraint.
