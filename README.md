# PSFirstResponderKit

## Description

The First Responder Kit is a popular tool to asses SQL Server health and to troubleshoot performance issues.  This module brings the First Responder Kit to PowerShell.  It is not a rewrite of this kit, but uses the stored procedures within the kit and returns the results to PowerShell.  Many of the procedures return multiple result sets where each have many rows.  While this works well within SQL Server Management Studio (SSMS), it does not work well for PowerShell.

Where the First Responder Kit returns multiple result sets, the all module functions outputs them into a single object.  This allows for the output to be easily pipelined into another PowerShell command, such as Export-Csv.

All PSFirstResponderKit functions have table and list formatting defined.  Due to limited width of the PowerShell terminal, table views for some functions will not show all columns.  However, the list view will.

## Support

* Supported versions of PowerShell which include
	* Windows PowerShell 5.1
	* PowerShell 7.2
	* PowerShell 7.4
* Operating Systems supported by PowerShell
* Versions of SQL Server supported by the First Responder Kit

While best effort has been made to ensure this module is flexible to various versions of the First Responder Kit, it is not guaranteed that it will work for every version of the First Responder Kit.  Stored Procedure parameters that have been renamed, or result set columns that have been added or renamed will result in errors.  Added stored procedure parameters will not generate errors, but the added functionality of the stored procedure will not exist.  Also any removed columns will not show errors, but will be shown with null values.
