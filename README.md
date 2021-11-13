# *Pewlett-Hackard-Analysis*

## *Overview*

*We are helping Bobby an HR Analyst. PH has fallen a bit behind in the database department, so they have to migrate from CSVs to SQL. We are helping him create entity relationship diagrams, perform data modeling, and complete analysis on an employee database using SQL techniques. Pewlett Hackard is preparing for several employee retirements. So they have to prepare for employee retirement benefits and have to determine the departments to hire new employees.*

### *Resources*

*PgAdmin, Postgres*

### *ERD Diagrams*


![EmployeeDB](https://user-images.githubusercontent.com/89530570/141656504-3e5b146a-9fae-4a4a-87c6-cdd8995216dc.png)

### *Results*


1. *Among retiring staff, 29414 are senior engineers.*
2. *Only 2 managers are retiring.*
3. *There are no eligbile Managers in the Mentorship program.Most of the Managers are born before 1965 and are retiring soon.*
4. *The maximum number of staff are eligible for mentorship program.*

### *Summary*

- *7 titles are retiring.*

```
select count(title) from retiring_titles;
```

- *There are not enough employees to mentor new employees.*
- *90398 employees are retiring.*
- *1549 employees are eligible for mentorship.*
```
select count(*) from mentorship_eligibilty ;
select count(*) from unique_titles;
```
