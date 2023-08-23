select d.name as Department, e.name as Employee, e.salary as Salary from Employee as e left outer join Department as d on e.departmentId=d.id WHERE e.salary = (SELECT MAX(r.salary) FROM Employee r 
WHERE d.Id = r.departmentId);
