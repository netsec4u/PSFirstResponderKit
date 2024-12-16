---
external help file: PSFirstResponderKit-help.xml
Module Name: PSFirstResponderKit
online version:
schema: 2.0.0
---

# Invoke-BlitzWho

## SYNOPSIS
Executes dbo.sp_BlitzWho and returns results.

## SYNTAX

### DatabaseName (Default)
```
Invoke-BlitzWho
	-ServerInstance <String>
	-DatabaseName <String>
	[-ShowSleepingSPIDs]
	[-MinElapsedSeconds <Int32>]
	[-MinCPUTime <Int32>]
	[-MinLogicalReads <Int32>]
	[-MinPhysicalReads <Int32>]
	[-MinWrites <Int32>]
	[-MinTempdbMB <Int32>]
	[-MinRequestedMemoryKB <Int32>]
	[-MinBlockingSeconds <Int32>]
	[-ShowActualParameters] [-GetOuterCommand]
	[-GetLiveQueryPlan]
	[-SortOrder <BlitzWhoSortOrder>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Version
```
Invoke-BlitzWho
	-ServerInstance <String>
	-DatabaseName <String>
	-VersionCheckMode
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_LogToTable
```
Invoke-BlitzWho
	-ServerInstance <String>
	-DatabaseName <String>
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	[-OutputTableName <String>]
	[-OutputTableRetentionDays <Int32>]
	[-CheckDateOverride <DateTimeOffset>]
	[-ShowSleepingSPIDs]
	[-MinElapsedSeconds <Int32>]
	[-MinCPUTime <Int32>]
	[-MinLogicalReads <Int32>]
	[-MinPhysicalReads <Int32>]
	[-MinWrites <Int32>]
	[-MinTempdbMB <Int32>]
	[-MinRequestedMemoryKB <Int32>]
	[-MinBlockingSeconds <Int32>]
	[-ShowActualParameters]
	[-GetOuterCommand]
	[-GetLiveQueryPlan]
	[-SortOrder <BlitzWhoSortOrder>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Help
```
Invoke-BlitzWho
	-ServerInstance <String>
	-DatabaseName <String>
	-BlitzHelp
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_ExpertMode
```
Invoke-BlitzWho
	-ServerInstance <String>
	-DatabaseName <String>
	-ExpertMode
	[-ShowSleepingSPIDs]
	[-MinElapsedSeconds <Int32>]
	[-MinCPUTime <Int32>]
	[-MinLogicalReads <Int32>]
	[-MinPhysicalReads <Int32>]
	[-MinWrites <Int32>]
	[-MinTempdbMB <Int32>]
	[-MinRequestedMemoryKB <Int32>]
	[-MinBlockingSeconds <Int32>]
	[-ShowActualParameters]
	[-GetOuterCommand]
	[-GetLiveQueryPlan]
	[-SortOrder <BlitzWhoSortOrder>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Version
```
Invoke-BlitzWho
	-SqlConnection <SqlConnection>
	-VersionCheckMode
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_LogToTable
```
Invoke-BlitzWho
	-SqlConnection <SqlConnection>
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	[-OutputTableName <String>]
	[-OutputTableRetentionDays <Int32>]
	[-CheckDateOverride <DateTimeOffset>]
	[-ShowSleepingSPIDs]
	[-MinElapsedSeconds <Int32>]
	[-MinCPUTime <Int32>]
	[-MinLogicalReads <Int32>]
	[-MinPhysicalReads <Int32>]
	[-MinWrites <Int32>]
	[-MinTempdbMB <Int32>]
	[-MinRequestedMemoryKB <Int32>]
	[-MinBlockingSeconds <Int32>]
	[-ShowActualParameters]
	[-GetOuterCommand]
	[-GetLiveQueryPlan]
	[-SortOrder <BlitzWhoSortOrder>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Help
```
Invoke-BlitzWho
	-SqlConnection <SqlConnection>
	-BlitzHelp
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_ExpertMode
```
Invoke-BlitzWho
	-SqlConnection <SqlConnection>
	-ExpertMode
	[-ShowSleepingSPIDs]
	[-MinElapsedSeconds <Int32>]
	[-MinCPUTime <Int32>]
	[-MinLogicalReads <Int32>]
	[-MinPhysicalReads <Int32>]
	[-MinWrites <Int32>]
	[-MinTempdbMB <Int32>]
	[-MinRequestedMemoryKB <Int32>]
	[-MinBlockingSeconds <Int32>]
	[-ShowActualParameters]
	[-GetOuterCommand]
	[-GetLiveQueryPlan]
	[-SortOrder <BlitzWhoSortOrder>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection
```
Invoke-BlitzWho
	-SqlConnection <SqlConnection>
	[-ShowSleepingSPIDs]
	[-MinElapsedSeconds <Int32>]
	[-MinCPUTime <Int32>]
	[-MinLogicalReads <Int32>]
	[-MinPhysicalReads <Int32>]
	[-MinWrites <Int32>]
	[-MinTempdbMB <Int32>]
	[-MinRequestedMemoryKB <Int32>]
	[-MinBlockingSeconds <Int32>]
	[-ShowActualParameters]
	[-GetOuterCommand]
	[-GetLiveQueryPlan]
	[-SortOrder <BlitzWhoSortOrder>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

## DESCRIPTION
Executes dbo.sp_BlitzWho and returns results.  Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin
```

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database.  This will return the default output of the stored procedure.

### Example 2
```powershell
PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection
```

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection.  This will return the default output of stored procedure.

### Example 3
```powershell
PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -BlitzHelp
```

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 4
```powershell
PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode
```

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.

### Example 5
```powershell
PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzWho
```

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the stored procedure results are stored in the specified database and table.

### Example 6
```powershell
PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -ExpertMode
```

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the @ExpertMode parameter set to 1.  This will return extended BlitzWho information.

### Example 7
```powershell
PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -BlitzHelp
```

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 8
```powershell
PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -VersionCheckMode
```

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.

### Example 9
```powershell
PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzWho
```

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the stored procedure results are stored in the specified database and table.

### Example 10
```powershell
PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -ExpertMode
```

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the @ExpertMode parameter set to 1.  This will return extended BlitzWho information.

## PARAMETERS

### -BlitzDebug
Returns Blitz debug information from stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzHelp
Returns Blitz help information from stored procedure.

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

### -CheckDateOverride
Specifies the date and time stored with BlitzWho output.

```yaml
Type: DateTimeOffset
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
Specifies database where sp_BlitzWho is located.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_LogToTable, DatabaseName_Help, DatabaseName_ExpertMode
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpertMode
Specifies to return additional information.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_ExpertMode, SqlConnection_ExpertMode
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetLiveQueryPlan
Specifies to return love query plans available.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GetOuterCommand
Specifies to return the outer commands within a batch.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinBlockingSeconds
Specifies minimum number of seconds of blocking to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinCPUTime
Specifies minimum CPU time to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinElapsedSeconds
Specifies minimum number of seconds of elapsed time to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinLogicalReads
Specifies minimum number of logical reads to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinPhysicalReads
Specifies minimum number of physical reads to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinRequestedMemoryKB
Specifies minimum amount of requested memory to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinTempdbMB
Specifies minimum amount of Tempdb usage to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinWrites
Specifies minimum number of writes to return results.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputDatabaseName
Specifies the database that contains the tables to store BlitzWho information.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputSchemaName
Specifies the schema name where tables are to store BlitzWho information.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableName
Specifies the table name to store BlitzWho information.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableRetentionDays
Specifies the number of days to retain stored information in database tables.

```yaml
Type: Int32
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerInstance
Specifies the SQL instance to execute sp_BlitzWho stored procedure.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_LogToTable, DatabaseName_Help, DatabaseName_ExpertMode
Aliases: SqlServer

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowActualParameters
Specifies to return actual parameters in parameterized query requests.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowSleepingSPIDs
Shows long-running sleeping sessions.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortOrder
Specifies the order to return results.

```yaml
Type: BlitzWhoSortOrder
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:
Accepted values: session_id, query_cost, database_name, open_transaction_count, is_implicit_transaction, login_name, program_name, client_interface_name, request_cpu_time, request_logical_reads, request_writes, request_physical_reads, session_cpu, session_logical_reads, session_physical_reads, session_writes, tempdb_allocations_mb, memory_usage, deadlock_priority, transaction_isolation_level, requested_memory_kb, grant_memory_kb, grant, query_memory_grant_used_memory_kb, ideal_memory_kb, workload_group_name, resource_pool_name

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
Parameter Sets: SqlConnection_Version, SqlConnection_LogToTable, SqlConnection_Help, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VersionCheckMode
Returns only version information of BlitzWho stored procedure.

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

### FirstResponderKit.BlitzWho

### FirstResponderKit.BlitzWhoExpert

### System.Void

## NOTES

## RELATED LINKS
