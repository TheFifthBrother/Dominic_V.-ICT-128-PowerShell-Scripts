#Who: Dominic Vienneau
#When: April 10, 2022
<#
.SYNOPSIS
Create new password, Resets user password, Forces them to change the password on there next login
.DESCRIPTION
Resets a password for someone within a domain. 

.EXAMPLE
$NewPassword = ConvertTo-SecureString "P@sswordJMil03" -AsPlainText -Force
Set-ADAccountPassword -Identity Jane Miller -NewPassword $NewPassword -Reset
Set-ADUser -Identity Jane Miller -ChangePasswordAtLogon $True
#>

#Creates the New password that the user will need to use.
$NewPassword = ConvertTo-SecureString "P@ssword$employeeID" -AsPlainText -Force 
#Reset the password and changes it to the new password previously created
Set-ADAccountPassword -Identity $EmployeeName -NewPassword $NewPassword -Reset
#Identity Could include Distingushed name (DN), GUID (ObjectGUID), Security Identifier (ObjectSid), SAM account Name (sAMAccountName).

#Forces the User to Create a new password after they logon
Set-ADUser -Identity $EmployeeName -ChangePasswordAtLogon $True
