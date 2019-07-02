Assignment : Use PowerShell to develop a script that does the following:

•	Creates 20 Azure Active Directory User accounts with the name of “Test User <Counter>”.
  
•	Creates an Azure Active Directory Security group with the name of “Varonis Assignment2 Group”.

•	Adds each of the user accounts created in the previous step to the “Varonis Assignment2 Group”, the accounts should be added 	    separately, and not as a bulk.
All the users must be added successfully at the end of the script execution and errors should be handled efficiently. – what if a user is already exist 
  
•	The script should generate a customized log that includes the following details for each attempt to add the user account to the security group:

o	User Name

o	Timestep of the attempt to add the user to the group.

o	Result of the attempt (success\failure)

