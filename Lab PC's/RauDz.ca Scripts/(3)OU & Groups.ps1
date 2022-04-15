#.AUTHOR: Dominic Vienneau
#.CREATED: Saturday, March 5
#.MODIFID: Saturday, Match 16
<#
.SYNOPSIS
Creates a folder structure in Active directory for Raudz.ca
Creates all of the needed Active Directory Groups that are needed

.DESCRIPTION
AFTER!!! Deploying Active Directory
Creates OU folders and then Makes the Groups that belong to those folders
#>

New-ADOrganizationalUnit -Name 'RauDZ' -ProtectedFromAccidentalDeletion $False -Path 'DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'IT' -ProtectedFromAccidentalDeletion $False -Path 'OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'IT Admin' -ProtectedFromAccidentalDeletion $False -Path 'OU=IT,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'IT Staff' -ProtectedFromAccidentalDeletion $False -Path 'OU=IT,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Staff' -ProtectedFromAccidentalDeletion $False -Path 'OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Head Office' -ProtectedFromAccidentalDeletion $False -Path 'OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Executives' -ProtectedFromAccidentalDeletion $False -Path 'OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Finance' -ProtectedFromAccidentalDeletion $False -Path 'OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'HR' -ProtectedFromAccidentalDeletion $False -Path 'OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Marketing' -ProtectedFromAccidentalDeletion $False -Path 'OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Restaurant Staff' -ProtectedFromAccidentalDeletion $False -Path 'OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Back of House' -ProtectedFromAccidentalDeletion $False -Path 'OU=Restaurant Staff,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADOrganizationalUnit -Name 'Front of House' -ProtectedFromAccidentalDeletion $False -Path 'OU=Restaurant Staff,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'

New-ADGroup -Name 'IT Admin' -GroupScope Global -Path 'OU=IT Admin,OU=IT,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADGroup -Name 'IT Staff' -GroupScope Global -Path 'OU=IT Staff,OU=IT,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADGroup -Name 'Executives' -GroupScope Global -Path 'OU=Executives,OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADGroup -Name 'Finance' -GroupScope Global -Path 'OU=Finance,OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADGroup -Name 'HR' -GroupScope Global -Path 'OU=HR,OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADGroup -Name 'Marketing' -GroupScope Global -Path 'OU=Marketing,OU=Head Office,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADGroup -Name 'Back of House' -GroupScope Global -Path 'OU=Back of House,OU=Restaurant Staff,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'
New-ADGroup -Name 'Front of House' -GroupScope Global -Path 'OU=Front of House,OU=Restaurant Staff,OU=Staff,OU=RauDZ,DC=int,DC=raudz,DC=ca'