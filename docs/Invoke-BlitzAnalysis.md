---
external help file: PSFirstResponderKit-help.xml
Module Name: PSFirstResponderKit
online version:
schema: 2.0.0
---

# Invoke-BlitzAnalysis

## SYNOPSIS
Executes dbo.sp_BlitzAnalysis and returns results.

## SYNTAX

### DatabaseName (Default)
```
Invoke-BlitzAnalysis
	-ServerInstance <String>
	-DatabaseName <String>
	[-StartDate <DateTimeOffset>]
	[-EndDate <DateTimeOffset>]
	[-OutputDatabaseName <String>]
	[-OutputSchemaName <String>]
	[-OutputTableNameBlitzFirst <String>]
	[-OutputTableNameFileStats <String>]
	[-OutputTableNamePerfmonStats <String>]
	[-OutputTableNameWaitStats <String>]
	[-OutputTableNameBlitzCache <String>]
	[-OutputTableNameBlitzWho <String>]
	[-ServerName <String>]
	[-DatabaseNameFilter <String>]
	[-BlitzCacheSortOrder <BlitzCacheSortOrder>]
	[-MaxBlitzFirstPriority <Int32>]
	[-ReadLatencyThreshold <Int32>]
	[-WriteLatencyThreshold <Int32>]
	[-WaitStatsTop <Int32>]
	[-BringThePain]
	[-MaxDOP <Int32>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Version
```
Invoke-BlitzAnalysis
	-ServerInstance <String>
	-DatabaseName <String>
	-VersionCheckMode
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Help
```
Invoke-BlitzAnalysis
	-ServerInstance <String>
	-DatabaseName <String>
	-BlitzHelp
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Version
```
Invoke-BlitzAnalysis
	-SqlConnection <SqlConnection>
	-VersionCheckMode
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Help
```
Invoke-BlitzAnalysis
	-SqlConnection <SqlConnection>
	-BlitzHelp
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection
```
Invoke-BlitzAnalysis
	-SqlConnection <SqlConnection>
	[-StartDate <DateTimeOffset>]
	[-EndDate <DateTimeOffset>]
	[-OutputDatabaseName <String>]
	[-OutputSchemaName <String>]
	[-OutputTableNameBlitzFirst <String>]
	[-OutputTableNameFileStats <String>]
	[-OutputTableNamePerfmonStats <String>]
	[-OutputTableNameWaitStats <String>]
	[-OutputTableNameBlitzCache <String>]
	[-OutputTableNameBlitzWho <String>]
	[-ServerName <String>]
	[-DatabaseNameFilter <String>]
	[-BlitzCacheSortOrder <BlitzCacheSortOrder>]
	[-MaxBlitzFirstPriority <Int32>]
	[-ReadLatencyThreshold <Int32>]
	[-WriteLatencyThreshold <Int32>]
	[-WaitStatsTop <Int32>]
	[-BringThePain]
	[-MaxDOP <Int32>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

## DESCRIPTION
Executes dbo.sp_BlitzAnalysis and returns results.  Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-BlitzAnalysis -ServerInstance MyServer -DatabaseName Admin
```

Executes stored procedure dbo.sp_BlitzAnalysis on SQL instance MyServer in the Admin database.  This will return the default output of the stored procedure.

### Example 2
```powershell
PS C:\> Invoke-BlitzAnalysis -SqlConnection $MyConnection
```

Executes stored procedure dbo.sp_BlitzAnalysis using the the SqlConnection object in variable $MyConnection.  This will return the default output of stored procedure.

### Example 3
```powershell
PS C:\> Invoke-BlitzAnalysis -ServerInstance MyServer -DatabaseName Admin -BlitzHelp
```

Executes stored procedure dbo.sp_BlitzAnalysis on SQL instance MyServer in the Admin database with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 4
```powershell
PS C:\> Invoke-BlitzAnalysis -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode
```

Executes stored procedure dbo.sp_BlitzAnalysis on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.

### Example 5
```powershell
PS C:\> Invoke-BlitzAnalysis -SqlConnection $MyConnection -BlitzHelp
```

Executes stored procedure dbo.sp_BlitzAnalysis using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 6
```powershell
PS C:\> Invoke-BlitzAnalysis -SqlConnection $MyConnection -VersionCheckMode
```

Executes stored procedure dbo.sp_BlitzAnalysis using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.

## PARAMETERS

### -BlitzCacheSortOrder
Specifies the sort order for stored BlitzCache results.

```yaml
Type: BlitzCacheSortOrder
Parameter Sets: DatabaseName, SqlConnection
Aliases:
Accepted values: all, cpu, reads, writes, duration, executions, MemoryGrant, spills

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzDebug
Returns Blitz debug information from stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzHelp
Returns BlitzFirst schema information from stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_Help, SqlConnection_Help
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BringThePain
Required when retrieving more than 4 hours of data with BlitzCacheSortOrder set to all.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
Specifies database where sp_BlitzAnalysis is located.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_Help
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseNameFilter
Filters results for BlitzCache, FileStats and BlitzWho result sets.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndDate
Specifies the datetime to end analysis.

```yaml
Type: DateTimeOffset
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxBlitzFirstPriority
Specifies the maximum BlitzFirst priority to include in the results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxDOP
Specifies the maximum degree of parallelism that the queries within the stored procedure can use.

```yaml
Type: Int32
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputDatabaseName
Specify the database name where where the blitz data is stored.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputSchemaName
Specifies the schema name where tables are that contains the Blitz information.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameBlitzCache
Specifies the table name where BlitzCache information is stored.  Set parameter to null to skip.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameBlitzFirst
Specifies the table name where BlitzFirst information is stored.  Set parameter to null to skip.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameBlitzWho
Specifies the table name where BlitzWho information is stored.  Set parameter to null to skip.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameFileStats
Specifies the table name where FileStats information is stored.  Set parameter to null to skip.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNamePerfmonStats
Specifies the table name where PerfMonStats information is stored.  Set parameter to null to skip.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameWaitStats
Specifies the table name where WaitStats information is stored.  Set parameter to null to skip.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReadLatencyThreshold
Sets the threshold in milliseconds to compare against io_stall_read_average_ms for the stored FileStats.

```yaml
Type: Int32
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerInstance
Specifies the SQL instance to execute sp_BlitzAnalysis stored procedure.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_Help
Aliases: SqlServer

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName
Specifies the server name to folder results.

```yaml
Type: String
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SqlConnection
Specifies the SqlConnection object.

```yaml
Type: SqlConnection
Parameter Sets: SqlConnection_Version, SqlConnection_Help, SqlConnection
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartDate
Specifies the datetime to start analysis.

```yaml
Type: DateTimeOffset
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VersionCheckMode
Returns only version information of BlitzAnalysis stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_Version, SqlConnection_Version
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WaitStatsTop
Specifies the number of top wait stats.

```yaml
Type: Int32
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WriteLatencyThreshold
Sets the threshold in milliseconds to compare against io_stall_write_average_ms for the stored FileStats.

```yaml
Type: Int32
Parameter Sets: DatabaseName, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### FirstResponderKit.BlitzAnalysis

### System.Void

## NOTES

## RELATED LINKS
