#Version:        2.0
#Author:         Shai Gotlieb
#Creation Date:  02/07/2019
Description:    creating 20 AzureAD user accounts with the name of “Test User <Counter>”.
                Creating an Azure Active Directory Security group with the name of “Varonis Assignment2 Group”.
	              Each of the user accounts will be added as a group member to “Varonis Assignment2 Group”.
                The script generates a customized log file including: 
                User Name | Timestep of creation | Result of the attempt (success\failure)
Notes:          The log file will be generated at the current work directory 
                In order to create user accounts properly, Azure User Name and Password is necessary 
                (according to my private account - will be given if asked)    
