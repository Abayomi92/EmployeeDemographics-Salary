
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Gender, JobTitle, Salary,
Case
	When JobTitle = 'Manager' then Salary +(Salary*0.5)
	When JobTitle = 'DataAnalyst' then Salary +(Salary*0.9)
	When JobTitle = 'Engineer' then Salary +(Salary*0.4)
	Else Salary+(Salary*0.03)
	End As SalaryIncrease
FROM SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Gender, JobTitle, Salary,
Case
	When Salary <= 40000 then 'Poor'
	When Salary>=40000 then 'High'
	Else 'Low'
	End As SalaryGrade
FROM SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 



