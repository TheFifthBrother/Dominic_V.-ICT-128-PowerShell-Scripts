#.CREATER: Dominic Vienneau
#.CREATED: Saturday, April 01
#.MODIFID" Saturday, April 09
<#
.SYNOPSIS
Checks the number of memory faults persecond

.DESCRIPTION
Prints out the number of faults that your Memory gives off every second


.EXAMPLE
Name of your Virtual Machine? : Example_PC
Timestamp                  CounterSamples                                                                    
---------                  --------------                                                                    
4/2/2022 8:16:06 PM        \\ComputerName\memory\page faults/sec :                                          
                           7779.74279356456                                                                  
                                                                                                             
                                                                                                             
4/2/2022 8:16:07 PM        \\ComputerName\memory\page faults/sec :                                          
                           1997.18825276105                                                                  
                                                                                                             
                                                                                                             
4/2/2022 8:16:08 PM        \\CompuerName\memory\page faults/sec :                                          
                           3742.68941031662                         
#>


Get-Counter "\memory\Page Faults/sec" -SampleInterval 1 -Continuous

Get-Counter "\Memory\Standby Cache Reserve Bytes"
Get-Counter -ListSet * | Sort-Object CounterSetName | Format-Table CounterSetName
$foo =Get-Counter "\Memory\Standby Cache Reserve Bytes"
$foo.CounterSamples.CookedValue
