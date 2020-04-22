***Settings***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     psycopg2    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

***Variables***
${DBName}   dguk4ocl55e5i
${DBUser}   mtymwvcvmzjodg
${DBPass}   4e9d68bd3ff9d4b512188a14783ef0f889ec070aa8293b8990f7e910101580e6
${DBHost}   ec2-107-20-173-2.compute-1.amazonaws.com
${DBPort}   5432

***Test Cases***
#Create person table
#    ${output}=  Execute SQL String      Create table person(id integer,first_name varchar(20),last_name varchar(20))
#    Log To Console  ${output}
#    Should Be Equal As Strings  ${output}   None

#Inserting Data in Person table
    #Single Record
    #${output}=      Execute SQL String      Insert into person (id,first_name,last_name) values (101,'John','Canady');

    #Multiple Records
    #${output}=      Execute SQL Script      ./testdata/mydb_person_insertdata.sql 
    #Log To Console      ${output}
    #Should Be Equal As Strings      ${output}   None

#Check Michael Scott record present in Person Table
#    check if exists in database     select id from person where first_name='Michael';

#Check Kelly Kapoor record isn'tpresent in Person Table
#    check if not exists in database     select id from person where first_name='Kelly';

#Check Person Table exists in database
#    table must exist   person

#Verify Row Count is Zero
#    row count is 0  select * from person where first_name='Kelly';

#Verify Row Count is Equal to Some Value
#    row count is equal to x     select * from person where first_name='Michael';    1

#Verify Row Count is Greather than Some Value
#    row count is greater than x        select * from person where first_name='Michael';        0

#Verify Row Count is Less than Some Value
#    row count is less than x        select * from person where first_name='Michael';        5

#Update record in person table
#    ${output}=      Execute SQL String      Update person set first_name='Andy',last_name='Bernard' where id=101
#    Log To Console  ${output}
#    should be equal as strings      ${output}   None

#Retrieve Records from Person Table
#    @{queryResults}=   query   Select * from person;
#    log to console  many @{queryResults}

Delete Records from person table
    ${output}=  Execute SQL String      Delete from person;
    Should Be Equal As Strings  ${output}   None