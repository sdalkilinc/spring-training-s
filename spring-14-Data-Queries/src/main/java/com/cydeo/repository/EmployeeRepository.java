package com.cydeo.repository;

import com.cydeo.entity.Department;
import com.cydeo.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    //Display all employees with email address ""
    List<Employee> findByEmail(String email);

    //Display all employees with firstname "" and last name "",
    //also show all employees with an email address ""
    List<Employee> findByFirstNameAndLastNameOrEmail(String firstname, String lastName, String email);

    //Display all employees that first name is not ""
    List<Employee> findByFirstNameIsNot(String firstname);

    //Display all employees where last name stars with ""
    List<Employee> findByLastNameStartsWith(String pattern);


    //Display all employees with salaries higher than ""
    List<Employee> findBySalaryGreaterThan(Integer salary);

    //Display all employees with salaries less than ""
    List<Employee> findBySalaryLessThan(Integer salary);

    //Display all employees that has been hired between "" and ""
    List<Employee> findByHireDateBetween(LocalDate startDate, LocalDate endDate);

    //Display all employees where salaries greater and equal to "" in order
    List<Employee> findBySalaryGreaterThanEqual(Integer salary);

    //Display top 3 unique 3 employees that is making less than ""
    List<Employee> findDistinctTop3BySalaryLessThan(Integer salary);

    //Display all employees that do not have email address
    List<Employee> findByEmailIsNull();


    @Query("SELECT employee FROM Employee employee WHERE employee.email='amcnee1@google.es'")
    Employee retrieveEmployeeDetail();

    @Query("select e.salary from Employee e WHERE e.email='amcnee1@google.es'")
    Integer retrieveEmployeeSalary();

    //Not equal
    @Query("select e from Employee e where e.salary <> ?1")
    List<Employee> retrieveEmployeeSalaryNotEqual(int salary);

    //Like / Contains / Startswith / Endswith
    @Query("select  e from Employee e where e.firstName like ?1")
    List<Employee> retrieveEmployeeFirstNameLike(String pattern);

    //Less Than
    @Query("select e from Employee e where e.salary < ?1")
    List<Employee> retrieveEmployeeSalaryLessThan(int salary);

    //Greater Than
    @Query("select e.firstName  from Employee e where e.salary > ?1")
    List<String> retrieveEmployeeSalaryGreaterThan(int salary);

    //Between
    @Query("select e from Employee e where e.salary between ?1 and ?2")
    List<Employee> retrieveEmployeeSalaryBetween(int salary, int salary2);

    //Before
    @Query("select e from Employee e where e.hireDate > ?1")
    List<Employee> retrieveEmployeeHireDateBefore(LocalDate date);

    //Null
    @Query("select e from  Employee e where e.email is null ")
    List<Employee> retrieveEmployeeEmailIsNull();

    //Not Null
    @Query("select e from  Employee e where e.email is not null ")
    List<Employee> retrieveEmployeeEmailIsNotNull();

    //Sorting in asc order
    @Query("select e from Employee e order by e.salary")
    List<Employee> retrieveEmployeeSalaryAscOrder();

    //Sorting in desc order
    @Query("select e from Employee e order by e.salary desc ")
    List<Employee> retrieveEmployeeSalaryDesOrder();

    //Native Query
    @Query(value = "select * from employees where salary =?1", nativeQuery = true)
    List<Employee> retrieveEmployeeDetailBySalary(int salary);


}
