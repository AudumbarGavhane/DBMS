
CREATE TABLE dept (
  DEPTNO INT PRIMARY KEY,
  DNAME VARCHAR(50),
  LOC VARCHAR(50)
);

CREATE TABLE grades (
  GRADE INT PRIMARY KEY,
  LOSAL INT,
  HISAL INT
);

CREATE TABLE emp (
  EMPNO INT PRIMARY KEY,
  ENAME VARCHAR(50),
  job VARCHAR(50),
  MGR INT,
  HIREDATE DATE,
  SAL DECIMAL(10, 2),
  COMM DECIMAL(10, 2),
  DEPTNO INT,
  FOREIGN KEY (DEPTNO) REFERENCES dept (DEPTNO)
);


INSERT INTO dept (DEPTNO, DNAME, LOC) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

INSERT INTO grades (GRADE, LOSAL, HISAL)
VALUES (1, 700, 1200),
       (2, 1201, 1400),
       (3, 1401, 2000),
       (4, 2001, 3000),
       (5, 3001, 9999);

INSERT INTO emp (EMPNO, ENAME, job, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES
    (1001, 'ROHAN G', 'MANAGER', NULL, '2022-01-01', 5000.00, NULL, NULL),
    (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800.00, NULL, 20),
    (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30),
    (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30),
    (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20),
    (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30),
    (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30),
    (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10),
    (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000.00, NULL, 20),
    (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000.00, NULL, 10),
    (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30),
    (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100.00, NULL, 20),
    (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, NULL, 30),
    (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, NULL, 20),
    (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, NULL, 10);



