# Azure Active Directory Account Script

## Requierments
#### Use PowerShell to develop a script that does the following:

•	Creates 20 Azure Active Directory User accounts with the name of “Test User Counter”.
  
•	Creates an Azure Active Directory Security group with the name of “Varonis Assignment2 Group”.

•	Adds each of the user accounts created in the previous step to the “Varonis Assignment2 Group”, the accounts should be added 	    separately, and not as a bulk.
All the users must be added successfully at the end of the script execution and errors should be handled efficiently.
  
•	The script should generate a customized log that includes the following details for each attempt to add the user account to the security group:

  o	User Name

  o	Timestep of the attempt to add the user to the group.

  o	Result of the attempt (success\failure)
  
## Error Handling
• Connecting to Azure account: 

    - if user name or password are wrong, an exception will be caught
    - user will get 3 attempts to re-connect
    - message will be printed
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
    
## Cmdlets On Success

• Creating new Azure Active Directory account:

<img width="208" alt="createUserSuccess" src="https://user-images.githubusercontent.com/30575967/60608564-667d0480-9dc8-11e9-980f-819c5fb2b893.png">

• Adding group members:

<img width="330" alt="addUserSuccess" src="https://user-images.githubusercontent.com/30575967/60608697-bf4c9d00-9dc8-11e9-9885-063999f8fda2.png">
    
## Simulation Video
https://youtu.be/4ijO28EcdiM

## Flowchart
![Varonis](https://user-images.githubusercontent.com/30575967/60645707-15a9f200-9e42-11e9-8cdc-920b41750547.png)

## Log File Screentshots
<img width="439" alt="logFileResultExample" src="https://user-images.githubusercontent.com/30575967/60547015-5234fb00-9d27-11e9-97e5-d37ba9df24cf.png">

<img width="219" alt="failureLogFile" src="https://user-images.githubusercontent.com/30575967/60645464-653bee00-9e41-11e9-8f12-65077e86ace5.png">

<img width="445" alt="accountExistInGroup" src="https://user-images.githubusercontent.com/30575967/60645351-2017bc00-9e41-11e9-8001-305facb874a7.png">

<img width="217" alt="accountSuccess" src="https://user-images.githubusercontent.com/30575967/60645354-20b05280-9e41-11e9-9b4d-926ddb18e96d.png">
