﻿# Version:        1.0
# Author:         Shai Gotlieb
# Creation Date:  29/06/2019
#
# Description:    creating 20 AzureAD user accounts with the name of “Test User <Counter>”.
#                 Creating an Azure Active Directory Security group with the name of “Varonis Assignment2 Group”.
#	              Each of the user accounts will be added as a group member to “Varonis Assignment2 Group”.
#                 The script generates a customized log file including: 
#                 User Name | Timestep of creation | Result of the attempt (success\failure)
#
# Notes:          The log file will be generated at the current work directory 
#                 In order to create user accounts properly, Azure User Name and Password is necessary (according to my private account - will be given if asked)      

#-----------------------------[Instances]-----------------------------
$LOG_FILE_DIRECTORY = $PWD
$NUMBER_OF_ACCOUNTS_TO_CREATE = 20
$GROUP_NAME = “Varonis Assignment2 Group”
$LOG_FILE_PATH = "$($LOG_FILE_DIRECTORY)\AzureADSecurityGroupLogFile.log"


#-----------------------------[Declarations]-----------------------------
#generate PasswordProfile
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Aa123456"

$params = @{
    AccountEnabled = $true
    DisplayName = "Test User 1"
    PasswordProfile = $PasswordProfile
    UserPrincipalName = "User1@ggshaigggmail.onmicrosoft.com"
    MailNickName = "User0"
    }


#-----------------------------[Functions]-----------------------------
function CreateLogFile() {
    if (!(Test-Path $LOG_FILE_PATH)) {
        $logFile = New-Item -Path $LOG_FILE_DIRECTORY -Name "AzureADSecurityGroupLogFile.log" -ItemType "file"
    }
    else {
        $logFile = Get-Item -Path $LOG_FILE_PATH 
    }
}

function IsUserAddedCorrectlyToGroup($group, $userObj) {
    $GroupMembers = (Get-AzureADGroupMember -ObjectId $group.ObjectId | Select ObjectId)

    If ($GroupMembers -Match $userObj.ObjectId) {
        return $true;
    }
    return $false;
}

function CreateAccounts($accountsNumber) {
    $IdCounter = 1;
    For ($i = 1; $i -le $accountsNumber; $i++, $IdCounter++) {
       $params.DisplayName = "Test User " + $IdCounter
        $params.MailNickName = "User" + $IdCounter
        $params.UserPrincipalName = $params.MailNickName + "@ggshaigggmail.onmicrosoft.com"
        New-AzureADUser @params
    }
}

function AddGroupMembers($group) {
    For ($i = 1; $i -le $NUMBER_OF_ACCOUNTS_TO_CREATE; $i++) {
        $userName = "User" + $i;
        $userObj = Get-AzureADUser -SearchString $userName
        $logFileContent = ($userName + " | " + $(Get-Date))
        
        Add-AzureADGroupMember -ObjectId $($group.ObjectId) -RefObjectId $($userObj.ObjectId)
       
        If((IsUserAddedCorrectlyToGroup $group $userObj)) {
            Add-content $LOG_FILE_PATH -Value ($logFileContent + " | " + "SUCCESS")
        }
        else {
            Add-content $LOG_FILE_PATH -Value ($logFileContent + " | " + "FAILURE")
        }
    }
}


#-----------------------------[Execution]-----------------------------
#connecting to Azure Active Directory account
$Credential = Get-Credential
Connect-AzureAD -Credential $Credential

#Creating 20 Azure Active Directory User accounts with the name of “Test User <Counter>”
CreateAccounts $NUMBER_OF_ACCOUNTS_TO_CREATE

#creating log file if not exist
CreateLogFile

#creating Azure Active Directory Security group 
New-AzureADGroup -DisplayName $GROUP_NAME -MailEnabled $false -SecurityEnabled $true -MailNickName "VaronisAssignment2Group"

#Adding each of the user accounts created in the previous step to the “Varonis Assignment2 Group”
$group = Get-AzureADGroup -SearchString $GROUP_NAME
AddGroupMembers $group

Disconnect-AzureAD
