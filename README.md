# Azure Active Directory Account Script

## Requierments: 
#### Use PowerShell to develop a script that does the following:

•	Creates 20 Azure Active Directory User accounts with the name of “Test User Counter”.
  
•	Creates an Azure Active Directory Security group with the name of “Varonis Assignment2 Group”.

•	Adds each of the user accounts created in the previous step to the “Varonis Assignment2 Group”, the accounts should be added 	    separately, and not as a bulk.
All the users must be added successfully at the end of the script execution and errors should be handled efficiently.
  
•	The script should generate a customized log that includes the following details for each attempt to add the user account to the security group:

  o	User Name

  o	Timestep of the attempt to add the user to the group.

  o	Result of the attempt (success\failure)
  
## Error Handling:
• Connecting to Azure account: 

    - if user name or password are wrong, an exception will be caught
    - user will get 3 attempts to re-connect
    - message will be printed: "Too many attempts to connect to Azure Active Directory Account. exiting .."
• Creating new Azure Active Directory account:

    - if account with same user name is already exist, an exception will be caught
    - exception details will be printed in red
    - and exception handling method will be invoked: getting user response of exception decision (retry\skip\quit)
    
• Creating log file:

    - if log file does not exist (not yet generated), a new file will be created
• Creating new Azure Active Directory Security group:

    - if group is already exist, a message will be shown and continue with executing
    - code will continue executing
• Adding group members:

    - if user is already in group, message will be shown and details will be attached to log file
    - Exception will be caught, an exception details will be printed in red
    - content of reason of failure will be attached to log file
    
## Simulation Video:
https://youtu.be/4ijO28EcdiM

## Flowchart
![Varonis](https://user-images.githubusercontent.com/30575967/60546558-3d0b9c80-9d26-11e9-80b0-8078c0ee2026.png)

## Log File Screentshot
<img width="439" alt="logFileResultExample" src="https://user-images.githubusercontent.com/30575967/60547015-5234fb00-9d27-11e9-97e5-d37ba9df24cf.png">
