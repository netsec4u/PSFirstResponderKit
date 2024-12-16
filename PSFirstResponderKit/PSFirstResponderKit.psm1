Set-StrictMode -Version Latest

#Region Enumerations
enum BlitzCacheSortOrder {
	all
	cpu
	reads
	writes
	duration
	executions
	MemoryGrant
	spills
}

enum BlitzFirstOutputResultSets {
	BlitzWho_Start;
	Findings;
	FileStats;
	PerfmonStats;
	WaitStats;
	BlitzCache;
	BlitzWho_End
}

enum BlitzProcedureCacheFilter {
	CPU
	Duration
	ExecCount
	Reads
}

enum BlitzWhoSortOrder {
	session_id
	query_cost
	database_name
	open_transaction_count
	is_implicit_transaction
	login_name
	program_name
	client_interface_name
	request_cpu_time
	request_logical_reads
	request_writes
	request_physical_reads
	session_cpu
	session_logical_reads
	session_physical_reads
	session_writes
	tempdb_allocations_mb
	memory_usage
	deadlock_priority
	transaction_isolation_level
	requested_memory_kb
	grant_memory_kb
	grant
	query_memory_grant_used_memory_kb
	ideal_memory_kb
	workload_group_name
	resource_pool_name
}
#EndRegion

#Region Type Definitions
$TypeDefinition = @'
using System;
using System.Collections.Generic;

namespace FirstResponderKit
{
	public class Blitz
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;
		public byte Priority;
		public string FindingsGroup;
		public string Finding;
		public string DatabaseName;
		public string URL;
		public string Details;
		public System.Xml.XmlDocument QueryPlan;
		public System.Xml.XmlDocument QueryPlanFiltered;
		public int CheckID;

		public Blitz(string ServerInstance)
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class BlitzAdvanced
	{
		public Blitz[] Blitz;
		public ProcedureCache[] ProcedureCache;

		public BlitzAdvanced(Blitz[] Blitz, ProcedureCache[] ProcedureCache)
		{
			this.Blitz = Blitz;
			this.ProcedureCache = ProcedureCache;
		}
	}

	public class BlitzAnalysis
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;
		public string ServerToReportOn;
		public string PrioritesToInclude;
		public DateTimeOffset StartDateTime;
		public DateTimeOffset EndDateTime;
		public BlitzAnalysisFirstSummary[] BlitzFirstSummary;
		public BlitzAnalysisFirst[] BlitzFirst;
		public BlitzAnalysisWaitStats[] WaitStats;
		public BlitzAnalysisFileStats[] FileStats;
		public BlitzAnalysisPerfmonStats[] PerfmonStats;
		public BlitzAnalysisCache[] BlitzCache;
		public BlitzAnalysisWho[] BlitzWho;

		public BlitzAnalysis(string ServerInstance)
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class  BlitzAnalysisCache
	{
		public string ServerName;
		public DateTimeOffset CheckDate;
		public string SortOrder;
		public Int64 TimeFrameRank;
		public Int64 OverallRank;
		public string QueryType;
		public string QueryText;
		public string DatabaseName;
		public Int64 AverageCPU;
		public Int64 TotalCPU;
		public Decimal PercentCPUByType;
		public Int64 AverageDuration;
		public Int64 TotalDuration;
		public Decimal PercentDurationByType;
		public Int64 AverageReads;
		public Int64 TotalReads;
		public Decimal PercentReadsByType;
		public Int64 AverageWrites;
		public Int64 TotalWrites;
		public Decimal PercentWritesByType;
		public Int64 ExecutionCount;
		public Decimal? ExecutionWeight;
		public Decimal PercentExecutionsByType;
		public Decimal ExecutionsPerMinute;
		public DateTime PlanCreationTime;
		public int PlanCreationTimeHours;
		public DateTime LastExecutionTime;
		public Byte[] PlanHandle;
		public Byte[] SqlHandle;
		public string SQLHandleMoreInfo;
		public Byte[] QueryHash;
		public string QueryHashMoreInfo;
		public Byte[] QueryPlanHash;
		public int? StatementStartOffset;
		public int? StatementEndOffset;
		public Int64? MinReturnedRows;
		public Int64? MaxReturnedRows;
		public Decimal? AverageReturnedRows;
		public Int64 TotalReturnedRows;
		public System.Xml.XmlDocument QueryPlan;
		public int? NumberOfPlans;
		public int? NumberOfDistinctPlans;
		public Int64? MinGrantKB;
		public Int64? MaxGrantKB;
		public Int64? MinUsedGrantKB;
		public Int64? MaxUsedGrantKB;
		public Decimal? PercentMemoryGrantUsed;
		public Decimal? AvgMaxMemoryGrant;
		public Int64 MinSpills;
		public Int64 MaxSpills;
		public Int64 TotalSpills;
		public Decimal AvgSpills;
		public Double? QueryPlanCost;
	}

	public class BlitzAnalysisFileStats
	{
		public string ServerName;
		public DateTimeOffset CheckDate;
		public string io_stall_ms_breached;
		public string PhysicalPath;
		public Int64 SizeOnDiskMB;
		public Int64 SizeOnDiskMBgrowth;
		public Int64 max_io_stall_read_ms;
		public Int64 max_io_stall_read_ms_average;
		public int is_stall_read_ms_threshold;
		public Int64 num_of_reads;
		public Decimal megabytes_read;
		public Int64 max_io_stall_write_ms;
		public Int64 max_io_stall_write_ms_average;
		public int io_stall_write_ms_average;
		public Int64 num_of_writes;
		public Decimal megabytes_written;
	}

	public class BlitzAnalysisFirst
	{
		public string ServerName;
		public DateTimeOffset CheckDate;
		public int CheckID;
		public Byte Priority;
		public string Finding;
		public string URL;
		public string Details;
		public string HowToStopIt;
		public System.Xml.XmlDocument QueryPlan;
		public string QueryText;
	}

	public class BlitzAnalysisFirstSummary
	{
		public Byte Priority;
		public string FindingsGroup;
		public string Finding;
		public int TotalOccurrences;
		public DateTimeOffset FirstOccurrence;
		public DateTimeOffset LastOccurrence;
	}

	public class BlitzAnalysisPerfmonStats
	{
		public string ServerName;
		public DateTimeOffset CheckDate;
		public string counter_name;
		public string object_name;
		public string instance_name;
		public Decimal cntr_value;
	}

	public class BlitzAnalysisWaitStats
	{
		public string ServerName;
		public DateTimeOffset CheckDate;
		public string wait_type;
		public Int64 WaitsRank;
		public string WaitCategory;
		public int Ignorable;
		public int ElapsedSeconds;
		public Int64 wait_time_ms_delta;
		public Decimal wait_time_minutes_delta;
		public Decimal wait_time_minutes_per_minute;
		public Int64 signal_wait_time_ms_delta;
		public Int64 waiting_tasks_count_delta;
		public Decimal wait_time_ms_per_wait;
	}

	public class BlitzAnalysisWho
	{
		public string ServerName;
		public DateTimeOffset CheckDate;
		public string elapsed_time;
		public Int16 session_id;
		public string database_name;
		public string query_text_snippet;
		public System.Xml.XmlDocument query_plan;
		public System.Xml.XmlDocument live_query_plan;
		public Double query_cost;
		public string status;
		public string wait_info;
		public string top_session_waits;
		public Int16 blocking_session_id;
		public int open_transaction_count;
		public int is_implicit_transaction;
		public string nt_domain;
		public string host_name;
		public string login_name;
		public string nt_user_name;
		public string program_name;
		public string fix_parameter_sniffing;
		public string client_interface_name;
		public DateTime login_time;
		public DateTime start_time;
		public DateTime request_time;
		public int request_cpu_time;
		public Int16 degree_of_parallelism;
		public Int64 request_logical_reads;
		public Decimal Logical_Reads_MB;
		public Int64 request_writes;
		public Decimal Logical_Writes_MB;
		public Int64 request_physical_reads;
		public Decimal Physical_reads_MB;
		public int session_cpu;
		public Int64 session_logical_reads;
		public Decimal session_logical_reads_MB;
		public Int64 session_physical_reads;
		public Decimal session_physical_reads_MB;
		public Int64 session_writes;
		public Decimal session_writes_MB;
		public Decimal tempdb_allocations_mb;
		public int memory_usage;
		public Int64 estimated_completion_time;
		public Single percent_complete;
		public int deadlock_priority;
		public string transaction_isolation_level;
		public Int64 last_dop;
		public Int64 min_dop;
		public Int64 max_dop;
		public Int64 last_grant_kb;
		public Int64 min_grant_kb;
		public Int64 max_grant_kb;
		public Int64 last_used_grant_kb;
		public Int64 min_used_grant_kb;
		public Int64 max_used_grant_kb;
		public Int64 last_ideal_grant_kb;
		public Int64 min_ideal_grant_kb;
		public Int64 max_ideal_grant_kb;
		public Int64 last_reserved_threads;
		public Int64 min_reserved_threads;
		public Int64 max_reserved_threads;
		public Int64 last_used_threads;
		public Int64 min_used_threads;
		public Int64 max_used_threads;
		public string grant_time;
		public Int64 requested_memory_kb;
		public Int64 grant_memory_kb;
		public string is_request_granted;
		public Int64 required_memory_kb;
		public Int64 query_memory_grant_used_memory_kb;
		public Int64 ideal_memory_kb;
		public Boolean is_small;
		public int timeout_sec;
		public Int16 resource_semaphore_id;
		public string wait_order;
		public string wait_time_ms;
		public string next_candidate_for_memory_grant;
		public Int64 target_memory_kb;
		public string max_target_memory_kb;
		public Int64 total_memory_kb;
		public Int64 available_memory_kb;
		public Int64 granted_memory_kb;
		public Int64 query_resource_semaphore_used_memory_kb;
		public int grantee_count;
		public int waiter_count;
		public Int64 timeout_error_count;
		public string forced_grant_count;
		public string workload_group_name;
		public string resource_pool_name;
		public string context_info;
		public Byte[] query_hash;
		public Byte[] query_plan_hash;
		public Byte[] sql_handle;
		public Byte[] plan_handle;
		public int statement_start_offset;
		public int statement_end_offset;
	}

	public class BlitzCache
	{
		public int ID;
		public int Pass;
		public DateTimeOffset SampleTime;
		public Byte[] sql_handle;
		public int statement_start_offset;
		public int statement_end_offset;
		public Int64 plan_generation_num;
		public Byte[] plan_handle;
		public Int64 execution_count;
		public Int64 total_worker_time;
		public Int64 total_physical_reads;
		public Int64 total_logical_writes;
		public Int64 total_logical_reads;
		public Int64 total_clr_time;
		public Int64 total_elapsed_time;
		public DateTimeOffset creation_time;
		public Byte[] query_hash;
		public Byte[] query_plan_hash;
		public Byte Points;
	}

	public class BlitzFirst : BlitzFirstResult
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;

		public BlitzFirst(string ServerInstance) : base()
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class BlitzFirstExpert
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;
		public BlitzWhoResult[] BlitzWho_Start;
		public BlitzFirstExpertResult[] BlitzFirst;
		public WaitStats[] WaitStats;
		public FileStats[] FileStats;
		public PerfmonStats[] PerfmonStats;
		public BlitzCache[] BlitzCache;
		public BlitzWhoResult[] BlitzWho_End;

		public BlitzFirstExpert(string ServerInstance)
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class BlitzFirstExpertResult : BlitzFirstResult
	{
		public int? CheckID;
		public DateTimeOffset? StartTime;
		public string LoginName;
		public string NTUserName;
		public string OriginalLoginName;
		public string ProgramName;
		public string HostName;
		public int? DatabaseID;
		public string DatabaseName;
		public int? OpenTransactionCount;
		public byte[] PlanHandle;
		public byte[] SqlHandle;
		public int? StatementStartOffset;
		public int? StatementEndOffset;
		public Int64? Executions;
		public decimal? ExecutionsPercent;
		public Int64? Duration;
		public decimal? DurationPercent;
		public Int64? CPU;
		public decimal? CPUPercent;
		public Int64? Reads;
		public decimal? ReadsPercent;
		public DateTimeOffset? PlanCreationTime;
		public Int64? TotalExecutions;
		public decimal? TotalExecutionsPercent;
		public Int64? TotalDuration;
		public decimal? TotalDurationPercent;
		public Int64? TotalCPU;
		public decimal? TotalCPUPercent;
		public Int64? TotalReads;
		public decimal? TotalReadsPercent;
		public int? DetailsInt;
	}

	public class BlitzFirstResult
	{
		public byte Priority;
		public string FindingsGroup;
		public string Finding;
		public string URL;
		public string Details;
		public string HowToStopIt;
		public string QueryText;
		public System.Xml.XmlDocument QueryPlan;
	}

	public class BlitzFirstSchema
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;
		public string FieldList;

		public BlitzFirstSchema(string ServerInstance)
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class BlitzFirstSinceStartup
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;
		public WaitStatsSinceStartup[] WaitStats;
		public FileStats[] FileStats;
		public PerfmonStats[] PerfmonStats;
		public BlitzCache[] BlitzCache;

		public BlitzFirstSinceStartup(string ServerInstance)
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class BlitzFirstTop10
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;
		public decimal HoursSample;
		public decimal ThreadTime;
		public string wait_type;
		public string wait_category;
		public decimal WaitTime;
		public decimal PerCorePerHour;
		public Int64 NumberOfWaits;
		public decimal AvgMsPerWait;

		public BlitzFirstTop10(string ServerInstance)
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class BlitzVersion
	{
		public string Version;
		public DateTime VersionDate;

		public BlitzVersion(string Version, DateTime VersionDate)
		{
			this.Version = Version;
			this.VersionDate = VersionDate;
		}
	}

	public class BlitzWhoResult
	{
		public DateTime run_date;
		public string elapsed_time;
		public Int16 session_id;
		public Int16? blocking_session_id;
		public string database_name;
		public string query_text;
		public System.Xml.XmlDocument query_plan;
		public string live_query_plan;
		public string Cached_Parameter_Info;
		public double? query_cost;
		public string status;
		public string wait_info;
		public string wait_resource;
		public string top_session_waits;
		public int? open_transaction_count;
		public int is_implicit_transaction;
		public string nt_domain;
		public string host_name;
		public string login_name;
		public string nt_user_name;
		public string program_name;
	}

	public class BlitzWho : BlitzWhoResult
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;

		public BlitzWho(string ServerInstance) : base()
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class BlitzWhoExpert : BlitzWhoResult
	{
		public string ServerInstance;
		public BlitzVersion BlitzVersion;
		public string fix_parameter_sniffing;
		public string client_interface_name;
		public DateTime login_time;
		public DateTime? start_time;
		public DateTime? request_time;
		public int request_cpu_time;
		public Int64 request_logical_reads;
		public Int64 request_writes;
		public Int64 request_physical_reads;
		public int session_cpu;
		public Int64 session_logical_reads;
		public Int64 session_physical_reads;
		public Int64 session_writes;
		public decimal? tempdb_allocations_mb;
		public int memory_usage;
		public Int64? estimated_completion_time;
		public Single? percent_complete;
		public int? deadlock_priority;
		public string transaction_isolation_level;
		public Int16? degree_of_parallelism;
		public Int64? last_dop;
		public Int64? min_dop;
		public Int64? max_dop;
		public Int64? last_grant_kb;
		public Int64? min_grant_kb;
		public Int64? max_grant_kb;
		public Int64? last_used_grant_kb;
		public Int64? min_used_grant_kb;
		public Int64? max_used_grant_kb;
		public Int64? last_ideal_grant_kb;
		public Int64? min_ideal_grant_kb;
		public Int64? max_ideal_grant_kb;
		public Int64? last_reserved_threads;
		public Int64? min_reserved_threads;
		public Int64? max_reserved_threads;
		public Int64? last_used_threads;
		public Int64? min_used_threads;
		public Int64? max_used_threads;
		public string grant_time;
		public Int64? requested_memory_kb;
		public Int64? grant_memory_kb;
		public string is_request_granted;
		public Int64? required_memory_kb;
		public Int64? query_memory_grant_used_memory_kb;
		public Int64? ideal_memory_kb;
		public Boolean? is_small;
		public int? timeout_sec;
		public Int16? resource_semaphore_id;
		public string wait_order;
		public string wait_time_ms;
		public string next_candidate_for_memory_grant;
		public Int64? target_memory_kb;
		public string max_target_memory_kb;
		public Int64? total_memory_kb;
		public Int64? available_memory_kb;
		public Int64? granted_memory_kb;
		public Int64? query_resource_semaphore_used_memory_kb;
		public int? grantee_count;
		public int? waiter_count;
		public Int64? timeout_error_count;
		public string forced_grant_count;
		public string workload_group_name;
		public string resource_pool_name;
		public string context_info;
		public Byte[] query_hash;
		public Byte[] query_plan_hash;
		public Byte[] sql_handle;
		public Byte[] plan_handle;
		public int? statement_start_offset;
		public int? statement_end_offset;

		public BlitzWhoExpert(string ServerInstance) : base()
		{
			this.ServerInstance = ServerInstance;
		}
	}

	public class FileStats
	{
		public string Pattern;
		public DateTimeOffset SampleTime;
		public int Sample;
		public string FileName;
		public string Drive;
		public Int64 NoReadsWrites;
		public decimal MBReadWritten;
		public int AvgStall;
		public string FilePhysicalName;
		public string DatabaseName;
		public Int64 StallRank;
	}

	public class PerfmonStats
	{
		public string Pattern;
		public string object_name;
		public string counter_name;
		public string instance_name;
		public DateTimeOffset FirstSampleTime;
		public Int64 FirstSampleValue;
		public DateTimeOffset LastSampleTime;
		public Int64 LastSampleValue;
		public Int64 ValueDelta;
		public decimal ValuePerSecond;
	}

	public class ProcedureCache
	{
		public Int64 AvgCPU;
		public Int64 TotalCPU;
		public decimal PercentCPU;
		public Int64 AvgDuration;
		public Int64 TotalDuration;
		public decimal PercentDuration;
		public Int64 AvgReads;
		public Int64 TotalReads;
		public decimal PercentReads;
		public Int64 execution_count;
		public decimal PercentExecutions;
		public decimal executions_per_minute;
		public DateTime plan_creation_time;
		public DateTime last_execution_time;
		public string text;
		public string text_filtered;
		public System.Xml.XmlDocument query_plan;
		public System.Xml.XmlDocument query_plan_filtered;
		public Byte[] sql_handle;
		public Byte[] query_hash;
		public Byte[] plan_handle;
		public Byte[] query_plan_hash;
	}

	public class WaitStats
	{
		public string Pattern;
		public DateTimeOffset SampleEnded;
		public int SecondsSample;
		public decimal TotalThreadTime;
		public string wait_type;
		public string wait_category;
		public decimal WaitTime;
		public decimal PerCorePerSecond;
		public decimal SignalWaitTime;
		public decimal PercentSignalWaits;
		public Int64 NumberOfWaits;
		public decimal AvgMsPerWait;
		public string URL;
	}

	public class WaitStatsSinceStartup
	{
		public string Pattern;
		public DateTimeOffset SampleEnded;
		public decimal HoursSample;
		public decimal ThreadTime;
		public string wait_type;
		public string wait_category;
		public decimal WaitTime;
		public decimal PerCorePerHour;
		public decimal SignalWaitTime;
		public decimal PercentSignalWaits;
		public Int64 NumberOfWaits;
		public decimal AvgMsPerWait;
		public string URL;
	}
}
'@

$ReferencedAssemblies = @(
	[System.Xml.XmlDocument].Assembly.Location
)

Add-Type -TypeDefinition $TypeDefinition -ReferencedAssemblies $ReferencedAssemblies

Remove-Variable -Name TypeDefinition
#EndRegion


function Invoke-Blitz {
	<#
	.EXTERNALHELP
	PSFirstResponderKit-help.xml
	#>

	[System.Diagnostics.DebuggerStepThrough()]

	[CmdletBinding(
		PositionalBinding = $false,
		SupportsShouldProcess = $true,
		ConfirmImpact = 'Low',
		DefaultParameterSetName = 'DatabaseName'
	)]

	[OutputType(
		[FirstResponderKit.Blitz],
		[FirstResponderKit.BlitzAdvanced],
		[FirstResponderKit.BlitzVersion],
		[System.Void]
	)]

	param (
		#Region Parameter ServerInstance
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[Alias('SqlServer')]
		[string]$ServerInstance,
		#EndRegion

		#Region Parameter DatabaseName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[string]$DatabaseName,
		#EndRegion

		#Region Parameter SqlConnection
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[Microsoft.Data.SqlClient.SqlConnection]$SqlConnection,
		#EndRegion

		#Region Parameter BlitzHelp
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[switch]$BlitzHelp,
		#EndRegion

		#Region Parameter SkipCheckUserDatabaseObjects
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[switch]$SkipCheckUserDatabaseObjects,
		#EndRegion

		#Region Parameter CheckProcedureCache
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[switch]$CheckProcedureCache,
		#EndRegion

		#Region Parameter OutputProcedureCache
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[switch]$OutputProcedureCache,
		#EndRegion

		#Region Parameter CheckProcedureCacheFilter
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[BlitzProcedureCacheFilter]$CheckProcedureCacheFilter,
		#EndRegion

		#Region Parameter CheckServerInfo
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[switch]$CheckServerInfo,
		#EndRegion

		#Region Parameter SkipChecksServer
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$SkipChecksServer,
		#EndRegion

		#Region Parameter SkipChecksDatabase
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		$SkipChecksDatabase,
		#EndRegion

		#Region Parameter SkipChecksSchema
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		$SkipChecksSchema,
		#EndRegion

		#Region Parameter SkipChecksTable
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		$SkipChecksTable,
		#EndRegion

		#Region Parameter IgnorePrioritiesBelow
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$IgnorePrioritiesBelow,
		#EndRegion

		#Region Parameter IgnorePrioritiesAbove
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$IgnorePrioritiesAbove,
		#EndRegion

		#Region Parameter VersionCheckMode
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[switch]$VersionCheckMode,
		#EndRegion

		#Region Parameter OutputDatabaseName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputDatabaseName,
		#EndRegion

		#Region Parameter OutputSchemaName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputSchemaName,
		#EndRegion

		#Region Parameter OutputTableName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableName,
		#EndRegion


<#
		@EmailRecipients VARCHAR(MAX) = NULL ,
		@EmailProfile sysname = NULL ,
#>


		#Region Parameter SummaryMode
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[switch]$SummaryMode,
		#EndRegion

		#Region Parameter BringThePain
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[switch]$BringThePain,
		#EndRegion

		#Region Parameter UsualDBOwner
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$UsualDBOwner,
		#EndRegion

		#Region Parameter BlockingChecks
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[switch]$BlockingChecks,
		#EndRegion

		#Region Parameter BlitzDebugLevel
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SkipChecks_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ProcedureCache'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SkipChecks_LogToTable'
		)]
		[ValidateRange(0, 2)]
		[int]$BlitzDebugLevel
		#EndRegion
	)

	BEGIN {
		try {
			$DatabaseParameterSets = @(
				'DatabaseName',
				'DatabaseName_Help',
				'DatabaseName_LogToTable',
				'DatabaseName_ProcedureCache',
				'DatabaseName_SkipChecks',
				'DatabaseName_SkipChecks_LogToTable',
				'DatabaseName_Version'
			)

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				$SqlServerParameters = @{
					'ServerInstance' = $ServerInstance
					'DatabaseName' = $DatabaseName
				}

				$SqlConnection = Connect-SqlServerInstance @SqlServerParameters
			}

			if ($SqlConnection.DataSource -in @('.', '(local)')) {
				$SqlInstanceName = [Environment]::MachineName
			} else {
				$SqlInstanceName = $SqlConnection.DataSource
			}

			if ($BlitzHelp -or ($PSBoundParameters.ContainsKey('BlitzDebugLevel') -and $BlitzDebugLevel -gt 0)) {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Host $SqlEvent.Message
				}
			} else {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Verbose $SqlEvent.Message
				}
			}

			$SqlConnection.add_InfoMessage($SqlInfoMessageEventHandler)

			$SqlCommandText = '[dbo].[sp_Blitz]'
			$DataSetName = 'sp_Blitz'
			$DataTableName = 'sp_Blitz'
		}
		catch {
			throw $_
		}

		$CommonParameters = @(
			'Debug',
			'ErrorAction',
			'ErrorVariable',
			'InformationAction',
			'InformationVariable',
			'OutVariable',
			'OutBuffer',
			'PipelineVariable',
			'ProgressAction',
			'Verbose',
			'WarningAction',
			'WarningVariable',
			'WhatIf'
		)

		$ConvertFromDataRowScriptBlock = {
			param($DataRow, $ColumnNames, $Object)

			foreach ($ColumnName in $ColumnNames) {
				if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
					$Object.$ColumnName = $DataRow.$ColumnName
				}
			}

			$Object
		}
	}

	PROCESS {
		try {
			$SqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Version", [System.Data.SqlDbType]::VarChar, 30)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionDate", [System.Data.SqlDbType]::DateTime)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			#Region Procedure Parameter Binding
			switch ($PSBoundParameters.Keys) {
				'BlitzDebugLevel' {
					if ($BlitzDebugLevel) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Debug", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = $BlitzDebugLevel

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlitzHelp' {
					if ($BlitzHelp) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Help", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlockingChecks' {
					if ($BlockingChecks) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SkipBlockingChecks", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 0

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BringThePain' {
					if ($BringThePain) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@BringThePain", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'CheckProcedureCache' {
					if ($CheckProcedureCache) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@CheckProcedureCache", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'CheckProcedureCacheFilter' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@CheckProcedureCacheFilter", [System.Data.SqlDbType]::VarChar, 10)
					$SqlParameter.Value = $CheckProcedureCacheFilter

					$SqlParameterList.Add($SqlParameter)
				}
				'CheckServerInfo' {
					if ($CheckServerInfo) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@CheckServerInfo", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'IgnorePrioritiesAbove' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@IgnorePrioritiesAbove", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $IgnorePrioritiesAbove

					$SqlParameterList.Add($SqlParameter)
				}
				'IgnorePrioritiesBelow' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@IgnorePrioritiesBelow", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $IgnorePrioritiesBelow

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputDatabaseName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputType", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = 'None'

					$SqlParameterList.Add($SqlParameter)

					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputDatabaseName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputDatabaseName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputProcedureCache' {
					if ($OutputProcedureCache) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputProcedureCache", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'OutputSchemaName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputSchemaName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputSchemaName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableName

					$SqlParameterList.Add($SqlParameter)
				}
				'SkipChecksDatabase' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SkipChecksDatabase", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $SkipChecksDatabase

					$SqlParameterList.Add($SqlParameter)
				}
				'SkipChecksSchema' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SkipChecksSchema", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $SkipChecksSchema

					$SqlParameterList.Add($SqlParameter)
				}
				'SkipChecksServer' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SkipChecksServer", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $SkipChecksServer

					$SqlParameterList.Add($SqlParameter)
				}
				'SkipChecksTable' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SkipChecksTable", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $SkipChecksTable

					$SqlParameterList.Add($SqlParameter)
				}
				'SkipCheckUserDatabaseObjects' {
					if ($SummaryMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@CheckUserDatabaseObjects", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 0

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'SummaryMode' {
					if ($SummaryMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SummaryMode", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'UsualDBOwner' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@UsualDBOwner", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $UsualDBOwner

					$SqlParameterList.Add($SqlParameter)
				}
				'VersionCheckMode' {
					if ($VersionCheckMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionCheckMode", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				Default {
					$Parameter = $_

					if ($Parameter -NotIn @('ServerInstance', 'DatabaseName', 'SqlConnection') -and $Parameter -NotIn $CommonParameters) {
						throw [System.Management.Automation.ErrorRecord]::New(
							[Exception]::New('Unknown parameter.'),
							'1',
							[System.Management.Automation.ErrorCategory]::InvalidType,
							$Parameter
						)
					}
				}
			}
			#EndRegion

			$OutSqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlClientDataSetParameters = @{
				'SqlConnection' = $SqlConnection
				'SqlCommandText' = $SqlCommandText
				'CommandType' = [System.Data.CommandType]::StoredProcedure
				'SqlParameter' = $SqlParameterList
				'OutSqlParameter' = $OutSqlParameterList
				'CommandTimeout' = 0
				'DataSetName' = $DataSetName
				'DataTableName' = $DataTableName
				'OutputAs' = 'DataSet'
			}

			if ($PSCmdlet.ShouldProcess($DataSetName, 'Get SQL dataset')) {
				$OutputDataset = Get-SqlClientDataSet @SqlClientDataSetParameters

				if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
					Disconnect-SqlServerInstance -SqlConnection $SqlConnection
				}
			}

			$BlitzVersion = [FirstResponderKit.BlitzVersion]::New($OutSqlParameterList.Where({$_.ParameterName -eq '@Version'}).Value, $OutSqlParameterList.Where({$_.ParameterName -eq '@VersionDate'}).Value)

			if ($OutputDataset.Tables.Count -gt 0) {
				$DataTableNumber = 0

				#Region Blitz Results
				if ($OutputProcedureCache) {
					$FindingsList = [System.Collections.Generic.List[FirstResponderKit.Blitz]]::New()
				}

				$DataTable = $OutputDataset.Tables[$DataTableNumber]

				$ColumnNames = $DataTable.Columns.ColumnName

				foreach ($DataRow in $DataTable.Rows) {
					$FindingsObject = [FirstResponderKit.Blitz]::New($SqlInstanceName)

					$FindingsObject.BlitzVersion = $BlitzVersion

					$FindingsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $FindingsObject)[0]

					if ($OutputProcedureCache) {
						$FindingsList.Add($FindingsObject)
					} else {
						$FindingsObject
					}
				}

				$DataTableNumber++
				#EndRegion

				if ($OutputProcedureCache) {
					#Region OutputProcedureCache
					$ProcedureCacheList = [System.Collections.Generic.List[FirstResponderKit.ProcedureCache]]::New()

					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					$ColumnNames = $DataTable.Columns.ColumnName

					foreach ($DataRow in $DataTable.Rows) {
						$ProcedureCacheObject = [FirstResponderKit.ProcedureCache]::New()

						$ProcedureCacheObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $ProcedureCacheObject)[0]

						$ProcedureCacheList.Add($ProcedureCacheObject)
					}
					#EndRegion

					$BlitzAdvancedObject = [FirstResponderKit.BlitzAdvanced]::New($FindingsList, $ProcedureCacheList)

					$BlitzAdvancedObject
				}
			} else {
				if ($VersionCheckMode) {
					$BlitzVersion
				}
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
		catch {
			throw $_
		}
		finally {
			if (Test-Path -Path variable:\SqlCommand) {
				$SqlCommand.Dispose()
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
	}

	END {
	}
}

function Invoke-BlitzAnalysis {
	<#
	.EXTERNALHELP
	PSFirstResponderKit-help.xml
	#>

	[System.Diagnostics.DebuggerStepThrough()]

	[CmdletBinding(
		PositionalBinding = $false,
		SupportsShouldProcess = $true,
		ConfirmImpact = 'Low',
		DefaultParameterSetName = 'DatabaseName'
	)]

	[OutputType(
		[FirstResponderKit.BlitzAnalysis],
		[FirstResponderKit.BlitzVersion],
		[System.Void]
	)]

	param (
		#Region Parameter ServerInstance
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[Alias('SqlServer')]
		[string]$ServerInstance,
		#EndRegion

		#Region Parameter DatabaseName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[string]$DatabaseName,
		#EndRegion

		#Region Parameter SqlConnection
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[Microsoft.Data.SqlClient.SqlConnection]$SqlConnection,
		#EndRegion

		#Region Parameter BlitzHelp
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[switch]$BlitzHelp,
		#EndRegion

		#Region Parameter StartDate
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[System.DateTimeOffset]$StartDate,
		#EndRegion

		#Region Parameter EndDate
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[System.DateTimeOffset]$EndDate,
		#EndRegion

		#Region Parameter VersionCheckMode
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[switch]$VersionCheckMode,
		#EndRegion

		#Region Parameter OutputDatabaseName
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputDatabaseName,
		#EndRegion

		#Region Parameter OutputSchemaName
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputSchemaName,
		#EndRegion

		#Region Parameter OutputTableNameBlitzFirst
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(0, 128)]
		[string]$OutputTableNameBlitzFirst,
		#EndRegion

		#Region Parameter OutputTableNameFileStats
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(0, 128)]
		[string]$OutputTableNameFileStats,
		#Endregion

		#Region Parameter OutputTableNamePerfmonStats
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(0, 128)]
		[string]$OutputTableNamePerfmonStats,
		#EndRegion

		#Region Parameter OutputTableNameWaitStats
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(0, 128)]
		[string]$OutputTableNameWaitStats,
		#EndRegion

		#Region Parameter OutputTableNameBlitzCache
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(0, 128)]
		[string]$OutputTableNameBlitzCache,
		#EndRegion

		#Region Parameter OutputTableNameBlitzWho
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(0, 128)]
		[string]$OutputTableNameBlitzWho,
		#EndRegion

		#Region Parameter ServerName
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(1, 128)]
		[string]$ServerName,
		#EndRegion

		#Region Parameter DatabaseNameFilter
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateLength(1, 128)]
		[string]$DatabaseNameFilter,
		#EndRegion

		#Region Parameter BlitzCacheSortOrder
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[BlitzCacheSortOrder]$BlitzCacheSortOrder,
		#EndRegion

		#Region Parameter MaxBlitzFirstPriority
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[int]$MaxBlitzFirstPriority,
		#EndRegion

		#Region Parameter ReadLatencyThreshold
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[int]$ReadLatencyThreshold,
		#EndRegion

		#Region Parameter WriteLatencyThreshold
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[int]$WriteLatencyThreshold,
		#EndRegion

		#Region Parameter WaitStatsTop
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[ValidateRange(0, 255)]
		[int]$WaitStatsTop,
		#EndRegion

		#Region Parameter BringThePain
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[switch]$BringThePain,
		#EndRegion

		#Region Parameter MaxDOP
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[int]$MaxDOP,
		#EndRegion

		#Region Parameter BlitzDebug
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[switch]$BlitzDebug
		#EndRegion
	)

	BEGIN {
		try {
			$DatabaseParameterSets = @(
				'DatabaseName',
				'DatabaseName_Help',
				'DatabaseName_Version'
			)

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				$SqlServerParameters = @{
					'ServerInstance' = $ServerInstance
					'DatabaseName' = $DatabaseName
				}

				$SqlConnection = Connect-SqlServerInstance @SqlServerParameters
			}

			if ($SqlConnection.DataSource -in @('.', '(local)')) {
				$SqlInstanceName = [Environment]::MachineName
			} else {
				$SqlInstanceName = $SqlConnection.DataSource
			}

			if ($BlitzHelp -or $BlitzDebug) {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Host $SqlEvent.Message
				}
			} else {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Verbose $SqlEvent.Message
				}
			}

			$SqlConnection.add_InfoMessage($SqlInfoMessageEventHandler)

			$SqlCommandText = '[dbo].[sp_BlitzAnalysis]'
			$DataSetName = 'sp_BlitzAnalysis'
			$DataTableName = 'sp_BlitzAnalysis'
		}
		catch {
			throw $_
		}

		$CommonParameters = @(
			'Debug',
			'ErrorAction',
			'ErrorVariable',
			'InformationAction',
			'InformationVariable',
			'OutVariable',
			'OutBuffer',
			'PipelineVariable',
			'ProgressAction',
			'Verbose',
			'WarningAction',
			'WarningVariable',
			'WhatIf'
		)

		$ConvertFromDataRowScriptBlock = {
			param($DataRow, $ColumnNames, $Object)

			foreach ($ColumnName in $ColumnNames) {
				if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
					$Object.$ColumnName = $DataRow.$ColumnName
				}
			}

			$Object
		}
	}

	PROCESS {
		try {
			$SqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Version", [System.Data.SqlDbType]::VarChar, 30)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionDate", [System.Data.SqlDbType]::DateTime)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			#Region Procedure Parameter Binding
			switch ($PSBoundParameters.Keys) {
				'BlitzCacheSortOrder' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@BlitzCacheSortOrder", [System.Data.SqlDbType]::NVarChar, 256)

					if ($BlitzCacheSortOrder -eq 'MemoryGrant') {
						$SqlParameter.Value = 'Memory Grant'
					} else {
						$SqlParameter.Value = $BlitzCacheSortOrder
					}

					$SqlParameterList.Add($SqlParameter)
				}
				'BlitzDebug' {
					if ($BlitzDebug) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Debug", [System.Data.SqlDbType]::Bit)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlitzHelp' {
					if ($BlitzHelp) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Help", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BringThePain' {
					if ($BringThePain) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@BringThePain", [System.Data.SqlDbType]::Bit)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'DatabaseNameFilter' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@DatabaseName", [System.Data.SqlDbType]::NVarChar, 128)
					$SqlParameter.Value = $DatabaseNameFilter

					$SqlParameterList.Add($SqlParameter)
				}
				'EndDate' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@EndDate", [System.Data.SqlDbType]::DateTimeOffset, 7)
					$SqlParameter.Value = $EndDate

					$SqlParameterList.Add($SqlParameter)
				}
				'MaxBlitzFirstPriority' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MaxBlitzFirstPriority", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MaxBlitzFirstPriority

					$SqlParameterList.Add($SqlParameter)
				}
				'MaxDOP' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MaxDOP", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MaxDOP

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputDatabaseName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputDatabaseName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputDatabaseName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputSchemaName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputSchemaName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputSchemaName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameBlitzCache' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameBlitzCache", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableNameBlitzCache

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameBlitzFirst' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameBlitzFirst", [System.Data.SqlDbType]::NVarChar, 256)

					if ([string]::Empty -eq $OutputTableNameBlitzFirst) {
						$SqlParameter.Value = [System.DBNull]::Value
					} else {
						$SqlParameter.Value = $OutputTableNameBlitzFirst
					}

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameBlitzWho' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameBlitzWho", [System.Data.SqlDbType]::NVarChar, 256)

					if ([string]::Empty -eq $OutputTableNameBlitzWho) {
						$SqlParameter.Value = [System.DBNull]::Value
					} else {
						$SqlParameter.Value = $OutputTableNameBlitzWho
					}

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameFileStats' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameFileStats", [System.Data.SqlDbType]::NVarChar, 256)

					if ([string]::Empty -eq $OutputTableNameFileStats) {
						$SqlParameter.Value = [System.DBNull]::Value
					} else {
						$SqlParameter.Value = $OutputTableNameFileStats
					}

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNamePerfmonStats' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNamePerfmonStats", [System.Data.SqlDbType]::NVarChar, 256)

					if ([string]::Empty -eq $OutputTableNamePerfmonStats) {
						$SqlParameter.Value = [System.DBNull]::Value
					} else {
						$SqlParameter.Value = $OutputTableNamePerfmonStats
					}

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameWaitStats' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameWaitStats", [System.Data.SqlDbType]::NVarChar, 256)

					if ([string]::Empty -eq $OutputTableNameWaitStats) {
						$SqlParameter.Value = [System.DBNull]::Value
					} else {
						$SqlParameter.Value = $OutputTableNameWaitStats
					}

					$SqlParameterList.Add($SqlParameter)
				}
				'ReadLatencyThreshold' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@ReadLatencyThreshold", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $ReadLatencyThreshold

					$SqlParameterList.Add($SqlParameter)
				}
				'ServerName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@ServerName", [System.Data.SqlDbType]::NVarChar, 128)
					$SqlParameter.Value = $ServerName

					$SqlParameterList.Add($SqlParameter)
				}
				'StartDate' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@StartDate", [System.Data.SqlDbType]::DateTimeOffset, 7)
					$SqlParameter.Value = $StartDate

					$SqlParameterList.Add($SqlParameter)
				}
				'VersionCheckMode' {
					if ($VersionCheckMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionCheckMode", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'WaitStatsTop' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@WaitStatsTop", [System.Data.SqlDbType]::TinyInt)
					$SqlParameter.Value = $WaitStatsTop

					$SqlParameterList.Add($SqlParameter)
				}
				'WriteLatencyThreshold' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@WriteLatencyThreshold", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $WriteLatencyThreshold

					$SqlParameterList.Add($SqlParameter)
				}
				Default {
					$Parameter = $_

					if ($Parameter -NotIn @('ServerInstance', 'DatabaseName', 'SqlConnection') -and $Parameter -NotIn $CommonParameters) {
						throw [System.Management.Automation.ErrorRecord]::New(
							[Exception]::New('Unknown parameter.'),
							'1',
							[System.Management.Automation.ErrorCategory]::InvalidType,
							$Parameter
						)
					}
				}
			}
			#EndRegion

			$OutSqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlClientDataSetParameters = @{
				'SqlConnection' = $SqlConnection
				'SqlCommandText' = $SqlCommandText
				'CommandType' = [System.Data.CommandType]::StoredProcedure
				'SqlParameter' = $SqlParameterList
				'OutSqlParameter' = $OutSqlParameterList
				'CommandTimeout' = 0
				'DataSetName' = $DataSetName
				'DataTableName' = $DataTableName
				'OutputAs' = 'DataSet'
			}

			if ($PSCmdlet.ShouldProcess($DataSetName, 'Get SQL dataset')) {
				$OutputDataset = Get-SqlClientDataSet @SqlClientDataSetParameters

				if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
					Disconnect-SqlServerInstance -SqlConnection $SqlConnection
				}
			}

			$BlitzVersion = [FirstResponderKit.BlitzVersion]::New($OutSqlParameterList.Where({$_.ParameterName -eq '@Version'}).Value, $OutSqlParameterList.Where({$_.ParameterName -eq '@VersionDate'}).Value)

			if ($OutputDataset.Tables.Count -gt 0) {
				$BlitzAnalysisObject = [FirstResponderKit.BlitzAnalysis]::New($SqlInstanceName)

				$BlitzAnalysisObject.BlitzVersion = $BlitzVersion

				$DataTableNumber = 0

				$DataTable = $OutputDataset.Tables[$DataTableNumber]

				$BlitzAnalysisObject = $ConvertFromDataRowScriptBlock.Invoke($DataTable.Rows[0], $DataTable.Columns.ColumnName, $BlitzAnalysisObject)[0]

				$DataTableNumber++

				#Region BlitzFirst
				if (-not $PSBoundParameters.ContainsKey('OutputTableNameBlitzFirst') -or ($PSBoundParameters.ContainsKey('OutputTableNameBlitzFirst') -and [string]::Empty -ne $OutputTableNameBlitzFirst)) {
					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					if ($DataTable.Rows.Count -gt 0) {
						$ColumnNames = $DataTable.Columns.ColumnName

						$BlitzFirstList = [System.Collections.Generic.List[FirstResponderKit.BlitzAnalysisFirstSummary]]::New()

						foreach ($DataRow in $DataTable.Rows) {
							$BlitzFirstObject = [FirstResponderKit.BlitzAnalysisFirstSummary]::New()

							$BlitzFirstObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $BlitzFirstObject)[0]

							$BlitzFirstList.Add($BlitzFirstObject)
						}

						$BlitzAnalysisObject.BlitzFirstSummary = $BlitzFirstList
					}

					$DataTableNumber++

					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					if ($DataTable.Rows.Count -gt 0) {
						$ColumnNames = $DataTable.Columns.ColumnName

						$BlitzFirstList = [System.Collections.Generic.List[FirstResponderKit.BlitzAnalysisFirst]]::New()

						foreach ($DataRow in $DataTable.Rows) {
							$BlitzFirstObject = [FirstResponderKit.BlitzAnalysisFirst]::New()

							$BlitzFirstObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $BlitzFirstObject)[0]

							$BlitzFirstList.Add($BlitzFirstObject)
						}

						$BlitzAnalysisObject.BlitzFirst = $BlitzFirstList
					}

					$DataTableNumber++
				} else {
					$DataTableNumber++
				}
				#EndRegion

				#Region WaitStates
				if (-not $PSBoundParameters.ContainsKey('OutputTableNameWaitStats') -or ($PSBoundParameters.ContainsKey('OutputTableNameWaitStats') -and [string]::Empty -ne $OutputTableNameWaitStats)) {
					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					if ($DataTable.Rows.Count -gt 0) {
						$ColumnNames = $DataTable.Columns.ColumnName

						$WaitStatsList = [System.Collections.Generic.List[FirstResponderKit.BlitzAnalysisWaitStats]]::New()

						foreach ($DataRow in $DataTable.Rows) {
							$WaitStatesObject = [FirstResponderKit.BlitzAnalysisWaitStats]::New()

							$WaitStatsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $WaitStatesObject)[0]

							$WaitStatsList.Add($WaitStatsObject)
						}

						$BlitzAnalysisObject.WaitStats = $WaitStatsList
					}

					$DataTableNumber++
				} else {
					$DataTableNumber++
				}
				#EndRegion

				#Region FileStats
				if (-not $PSBoundParameters.ContainsKey('OutputTableNameFileStats') -or ($PSBoundParameters.ContainsKey('OutputTableNameFileStats') -and [string]::Empty -ne $OutputTableNameFileStats)) {
					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					if ($DataTable.Rows.Count -gt 0) {
						$ColumnNames = $DataTable.Columns.ColumnName

						$FileStatsList = [System.Collections.Generic.List[FirstResponderKit.BlitzAnalysisFileStats]]::New()

						foreach ($DataRow in $DataTable.Rows) {
							$FileStatsObject = [FirstResponderKit.BlitzAnalysisFileStats]::New()

							$FileStatsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $FileStatsObject)[0]

							$FileStatsList.Add($FileStatsObject)
						}

						$BlitzAnalysisObject.FileStats = $FileStatsList
					}

					$DataTableNumber++
				} else {
					$DataTableNumber++
				}
				#EndRegion

				#Region PerfmonStats
				if (-not $PSBoundParameters.ContainsKey('OutputTableNamePerfmonStats') -or ($PSBoundParameters.ContainsKey('OutputTableNamePerfmonStats') -and [string]::Empty -ne $OutputTableNamePerfmonStats)) {
					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					if ($DataTable.Rows.Count -gt 0) {
						$ColumnNames = $DataTable.Columns.ColumnName

						$PerfmonStatsList = [System.Collections.Generic.List[FirstResponderKit.BlitzAnalysisPerfmonStats]]::New()

						foreach ($DataRow in $DataTable.Rows) {
							$PerfmonStatsObject = [FirstResponderKit.BlitzAnalysisPerfmonStats]::New()

							$PerfmonStatsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $PerfmonStatsObject)[0]

							$PerfmonStatsList.Add($PerfmonStatsObject)
						}

						$BlitzAnalysisObject.PerfmonStats = $PerfmonStatsList
					}

					$DataTableNumber++
				} else {
					$DataTableNumber++
				}
				#EndRegion

				#Region BlitzCache
				if (-not $PSBoundParameters.ContainsKey('OutputTableNameBlitzCache') -or ($PSBoundParameters.ContainsKey('OutputTableNameBlitzCache') -and [string]::Empty -ne $OutputTableNameBlitzCache)) {
					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					if ($DataTable.Rows.Count -gt 0) {
						$ColumnNames = $DataTable.Columns.ColumnName

						$BlitzCacheList = [System.Collections.Generic.List[FirstResponderKit.BlitzAnalysisCache]]::New()

						foreach ($DataRow in $DataTable.Rows) {
							$BlitzCacheObject = [FirstResponderKit.BlitzAnalysisCache]::New()

							switch ($ColumnNames) {
								'Query Hash More Info' {
									$ColumnName = $_

									if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
										$BlitzCacheObject.QueryHashMoreInfo = $DataRow.$ColumnName
									}
								}
								'SQL Handle More Info' {
									$ColumnName = $_

									if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
										$BlitzCacheObject.SQLHandleMoreInfo = $DataRow.$ColumnName
									}
								}
								Default {
									$ColumnName = $_

									if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
										$BlitzCacheObject.$ColumnName = $DataRow.$ColumnName
									}
								}
							}

							$BlitzCacheList.Add($BlitzCacheObject)
						}

						$BlitzAnalysisObject.BlitzCache = $BlitzCacheList
					}

					$DataTableNumber++
				} else {
					$DataTableNumber++
				}
				#EndRegion

				#Region BlitzWho
				if (-not $PSBoundParameters.ContainsKey('OutputTableNameBlitzWho') -or ($PSBoundParameters.ContainsKey('OutputTableNameBlitzWho') -and [string]::Empty -ne $OutputTableNameBlitzWho)) {
					$DataTable = $OutputDataset.Tables[$DataTableNumber]

					if ($DataTable.Rows.Count -gt 0) {
						$ColumnNames = $DataTable.Columns.ColumnName

						$BlitzWhoList = [System.Collections.Generic.List[FirstResponderKit.BlitzAnalysisWho]]::New()

						foreach ($DataRow in $DataTable.Rows) {
							$BlitzWhoObject = [FirstResponderKit.BlitzAnalysisWho]::New()

							$BlitzWhoObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $BlitzWhoObject)[0]

							$BlitzWhoList.Add($BlitzWhoObject)
						}

						$BlitzAnalysisObject.BlitzWho = $BlitzWhoList
					}

					$DataTableNumber++
				} else {
					$DataTableNumber++
				}
				#EndRegion

				$BlitzAnalysisObject
			} else {
				if ($VersionCheckMode) {
					$BlitzVersion
				}
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
		catch {
			throw $_
		}
		finally {
			if (Test-Path -Path variable:\SqlCommand) {
				$SqlCommand.Dispose()
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
	}

	END {
	}
}

function Invoke-BlitzFirst {
	<#
	.EXTERNALHELP
	PSFirstResponderKit-help.xml
	#>

	[System.Diagnostics.DebuggerStepThrough()]

	[CmdletBinding(
		PositionalBinding = $false,
		SupportsShouldProcess = $true,
		ConfirmImpact = 'Low',
		DefaultParameterSetName = 'DatabaseName'
	)]

	[OutputType(
		[FirstResponderKit.BlitzFirst],
		[FirstResponderKit.BlitzFirstExpert],
		[FirstResponderKit.BlitzFirstSinceStartup],
		[FirstResponderKit.BlitzFirstSchema],
		[FirstResponderKit.BlitzFirstTop10],
		[FirstResponderKit.BlitzVersion],
		[System.Void]
	)]

	param (
		#Region Parameter ServerInstance
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Schema'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SinceStartup'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Top10'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[Alias('SqlServer')]
		[string]$ServerInstance,
		#EndRegion

		#Region Parameter DatabaseName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Schema'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SinceStartup'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Top10'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[string]$DatabaseName,
		#EndRegion

		#Region Parameter SqlConnection
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Schema'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SinceStartup'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Top10'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[Microsoft.Data.SqlClient.SqlConnection]$SqlConnection,
		#EndRegion

		#Region Parameter BlitzHelp
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[switch]$BlitzHelp,
		#EndRegion

		#Region Parameter BlitzFirstSchema
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Schema'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Schema'
		)]
		[switch]$BlitzFirstSchema,
		#EndRegion

		#Region Parameter BlitzFirstTop10
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Top10'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Top10'
		)]
		[switch]$BlitzFirstTop10,
		#EndRegion

		#Region Parameter VersionCheckMode
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[switch]$VersionCheckMode,
		#EndRegion

		#Region Parameter SkipCheckServerInfo
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[switch]$SkipCheckServerInfo,
		#EndRegion

		#Region Parameter Seconds
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$Seconds = 5,
		#EndRegion

		#Region Parameter FileLatencyThresholdMS
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$FileLatencyThresholdMS = 100,
		#EndRegion

		#Region Parameter MemoryGrantThresholdPct
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, 100)]
		[decimal]$MemoryGrantThresholdPct = 15.00,
		#EndRegion

		#Region Parameter ExpertMode
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[switch]$ExpertMode,
		#EndRegion

		#Region Parameter OutputResultSets
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[BlitzFirstOutputResultSets[]]$OutputResultSets = @('BlitzWho_Start', 'Findings', 'FileStats', 'PerfmonStats', 'WaitStats', 'BlitzCache', 'BlitzWho_End'),
		#EndRegion

		#Region Parameter SinceStartup
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SinceStartup'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SinceStartup'
		)]
		[switch]$SinceStartup,
		#EndRegion

		#Region Parameter AsOf
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_AsOf'
		)]
		[System.DateTimeOffset]$AsOf,
		#EndRegion

		#Region Parameter OutputDatabaseName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputDatabaseName,
		#EndRegion

		#Region Parameter OutputSchemaName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputSchemaName,
		#EndRegion

		#Region Parameter OutputTableName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_AsOf'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableName,
		#EndRegion

		#Region Parameter OutputTableNameFileStats
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableNameFileStats,
		#Endregion

		#Region Parameter OutputTableNamePerfmonStats
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableNamePerfmonStats,
		#EndRegion

		#Region Parameter OutputTableNameWaitStats
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableNameWaitStats,
		#EndRegion

		#Region Parameter OutputTableNameBlitzCache
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableNameBlitzCache,
		#EndRegion

		#Region Parameter OutputTableNameBlitzWho
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableNameBlitzWho,
		#EndRegion

		#Region Parameter OutputTableRetentionDays
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, 255)]
		[int]$OutputTableRetentionDays = 7,
		#EndRegion

		#Region Parameter LogMessage
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[string]$LogMessage,
		#EndRegion

		#Region Parameter LogMessageCheckID
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$LogMessageCheckID = 38,
		#EndRegion

		#Region Parameter LogMessagePriority
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[ValidateRange(0, 255)]
		[int]$LogMessagePriority = 1,
		#EndRegion

		#Region Parameter LogMessageFindingsGroup
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[string]$LogMessageFindingsGroup = 'Logged Message',
		#EndRegion

		#Region Parameter LogMessageFinding
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[string]$LogMessageFinding = 'Logged from sp_BlitzFirst',
		#EndRegion

		#Region Parameter LogMessageURL
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[string]$LogMessageURL,
		#EndRegion

		#Region Parameter LogMessageCheckDate
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[System.DateTimeOffset]$LogMessageCheckDate = $(Get-Date),
		#EndRegion

		#Region Parameter CheckProcedureCache
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SinceStartup'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SinceStartup'
		)]
		[switch]$CheckProcedureCache,
		#EndRegion

		#Region Parameter BlitzCacheAnalysis
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SinceStartup'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SinceStartup'
		)]
		[switch]$BlitzCacheAnalysis,
		#EndRegion

		#Region Parameter FilterPlansByDatabase
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SinceStartup'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SinceStartup'
		)]
		[string[]]$FilterPlansByDatabase,
		#EndRegion

		#Region Parameter ShowSleepingSPIDs
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[switch]$ShowSleepingSPIDs,
		#EndRegion

		#Region Parameter BlitzDebug
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_AsOf'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_SinceStartup'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Top10'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_AsOf'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogMessage'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_SinceStartup'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Top10'
		)]
		[switch]$BlitzDebug
		#EndRegion
	)

	BEGIN {
		try {
			$DatabaseParameterSets = @(
				'DatabaseName',
				'DatabaseName_AsOf',
				'DatabaseName_ExpertMode',
				'DatabaseName_Help',
				'DatabaseName_LogMessage',
				'DatabaseName_LogToTable',
				'DatabaseName_Schema',
				'DatabaseName_SinceStartup',
				'DatabaseName_Top10',
				'DatabaseName_Version'
			)

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				$SqlServerParameters = @{
					'ServerInstance' = $ServerInstance
					'DatabaseName' = $DatabaseName
				}

				$SqlConnection = Connect-SqlServerInstance @SqlServerParameters
			}

			if ($SqlConnection.DataSource -in @('.', '(local)')) {
				$SqlInstanceName = [Environment]::MachineName
			} else {
				$SqlInstanceName = $SqlConnection.DataSource
			}

			if ($BlitzHelp -or $BlitzDebug) {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Host $SqlEvent.Message
				}
			} else {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Verbose $SqlEvent.Message
				}
			}

			$SqlConnection.add_InfoMessage($SqlInfoMessageEventHandler)

			$SqlCommandText = '[dbo].[sp_BlitzFirst]'
			$DataSetName = 'sp_BlitzFirst'
			$DataTableName = 'sp_BlitzFirst'
		}
		catch {
			throw $_
		}

		$CommonParameters = @(
			'Debug',
			'ErrorAction',
			'ErrorVariable',
			'InformationAction',
			'InformationVariable',
			'OutVariable',
			'OutBuffer',
			'PipelineVariable',
			'ProgressAction',
			'Verbose',
			'WarningAction',
			'WarningVariable',
			'WhatIf'
		)

		$ConvertFromDataRowScriptBlock = {
			param($DataRow, $ColumnNames, $Object)

			foreach ($ColumnName in $ColumnNames) {
				if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
					$Object.$ColumnName = $DataRow.$ColumnName
				}
			}

			$Object
		}
	}

	PROCESS {
		try {
			$SqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Version", [System.Data.SqlDbType]::VarChar, 30)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionDate", [System.Data.SqlDbType]::DateTime)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			#Region Procedure Parameter Binding
			switch ($PSBoundParameters.Keys) {
				'AsOf' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@AsOf", [System.Data.SqlDbType]::DateTime)
					$SqlParameter.Value = $AsOf

					$SqlParameterList.Add($SqlParameter)
				}
				'BlitzCacheAnalysis' {
					if ($BlitzCacheAnalysis) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@BlitzCacheSkipAnalysis", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 0

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlitzDebug' {
					if ($BlitzDebug) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Debug", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlitzHelp' {
					if ($BlitzHelp) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Help", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlitzFirstSchema' {
					if ($BlitzFirstSchema) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputType", [System.Data.SqlDbType]::VarChar, 20)
						$SqlParameter.Value = 'Schema'

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlitzFirstTop10' {
					if ($BlitzFirstTop10) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputType", [System.Data.SqlDbType]::VarChar, 20)
						$SqlParameter.Value = 'Top10'

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'CheckProcedureCache' {
					if ($CheckProcedureCache) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@CheckProcedureCache", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'ExpertMode' {
					if ($ExpertMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@ExpertMode", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'FileLatencyThresholdMS' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@FileLatencyThresholdMS", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $FileLatencyThresholdMS

					$SqlParameterList.Add($SqlParameter)
				}
				'FilterPlansByDatabase' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@FilterPlansByDatabase", [System.Data.SqlDbType]::NVarChar)
					$SqlParameter.Value = [string]::Join(',', $FilterPlansByDatabase)

					$SqlParameterList.Add($SqlParameter)
				}
				'LogMessage' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@LogMessage", [System.Data.SqlDbType]::NVarChar, 4000)
					$SqlParameter.Value = $LogMessage

					$SqlParameterList.Add($SqlParameter)
				}
				'LogMessageCheckDate' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@LogMessageCheckDate", [System.Data.SqlDbType]::DateTimeOffset)
					$SqlParameter.Value = $LogMessageCheckDate

					$SqlParameterList.Add($SqlParameter)
				}
				'LogMessageCheckID' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@LogMessageCheckID", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $LogMessageCheckID

					$SqlParameterList.Add($SqlParameter)
				}
				'LogMessageFinding' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@LogMessageFinding", [System.Data.SqlDbType]::VarChar, 200)
					$SqlParameter.Value = $LogMessageFinding

					$SqlParameterList.Add($SqlParameter)
				}
				'LogMessageFindingsGroup' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@LogMessageFindingsGroup", [System.Data.SqlDbType]::VarChar, 50)
					$SqlParameter.Value = $LogMessageFindingsGroup

					$SqlParameterList.Add($SqlParameter)
				}
				'LogMessageURL' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@LogMessageURL", [System.Data.SqlDbType]::VarChar, 200)
					$SqlParameter.Value = $LogMessageURL

					$SqlParameterList.Add($SqlParameter)
				}
				'LogMessagePriority' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@LogMessagePriority", [System.Data.SqlDbType]::TinyInt)
					$SqlParameter.Value = $LogMessagePriority

					$SqlParameterList.Add($SqlParameter)
				}
				'MemoryGrantThresholdPct' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MemoryGrantThresholdPct", [System.Data.SqlDbType]::Decimal)
					$SqlParameter.Precision = 5
					$SqlParameter.Scale = 2
					$SqlParameter.Value = $MemoryGrantThresholdPct

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputDatabaseName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputType", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = 'None'

					$SqlParameterList.Add($SqlParameter)

					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputDatabaseName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputDatabaseName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputResultSets' {
					if ($OutputResultSets -NotContains 'Findings') {
						$OutputResultSets += 'Findings'
					}

					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputResultSets", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = [string]::Join('|', $OutputResultSets)

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputSchemaName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputSchemaName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputSchemaName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameBlitzCache' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@BlitzCacheSkipAnalysis", [System.Data.SqlDbType]::TinyInt)
					$SqlParameter.Value = 0

					$SqlParameterList.Add($SqlParameter)

					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameBlitzCache", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableNameBlitzCache

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameBlitzWho' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameBlitzWho", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableNameBlitzWho

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameFileStats' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameFileStats", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableNameFileStats

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNamePerfmonStats' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNamePerfmonStats", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableNamePerfmonStats

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableNameWaitStats' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableNameWaitStats", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableNameWaitStats

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableRetentionDays' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableRetentionDays", [System.Data.SqlDbType]::TinyInt)
					$SqlParameter.Value = $OutputTableRetentionDays

					$SqlParameterList.Add($SqlParameter)
				}
				'Seconds' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Seconds", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $Seconds

					$SqlParameterList.Add($SqlParameter)
				}
				'ShowSleepingSPIDs' {
					if ($ShowSleepingSPIDs) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@ShowSleepingSPIDs", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'SinceStartup' {
					if ($SinceStartup) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SinceStartup", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'SkipCheckServerInfo' {
					if ($SkipCheckServerInfo) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@CheckServerInfo", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 0

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'VersionCheckMode' {
					if ($VersionCheckMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionCheckMode", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				Default {
					$Parameter = $_

					if ($Parameter -NotIn @('ServerInstance', 'DatabaseName', 'SqlConnection') -and $Parameter -NotIn $CommonParameters) {
						throw [System.Management.Automation.ErrorRecord]::New(
							[Exception]::New('Unknown parameter.'),
							'1',
							[System.Management.Automation.ErrorCategory]::InvalidType,
							$Parameter
						)
					}
				}
			}
			#EndRegion

			$OutSqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlClientDataSetParameters = @{
				'SqlConnection' = $SqlConnection
				'SqlCommandText' = $SqlCommandText
				'CommandType' = [System.Data.CommandType]::StoredProcedure
				'SqlParameter' = $SqlParameterList
				'OutSqlParameter' = $OutSqlParameterList
				'CommandTimeout' = 0
				'DataSetName' = $DataSetName
				'DataTableName' = $DataTableName
				'OutputAs' = 'DataSet'
			}

			if ($PSCmdlet.ShouldProcess($DataSetName, 'Get SQL dataset')) {
				$OutputDataset = Get-SqlClientDataSet @SqlClientDataSetParameters

				if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
					Disconnect-SqlServerInstance -SqlConnection $SqlConnection
				}
			}

			$BlitzVersion = [FirstResponderKit.BlitzVersion]::New($OutSqlParameterList.Where({$_.ParameterName -eq '@Version'}).Value, $OutSqlParameterList.Where({$_.ParameterName -eq '@VersionDate'}).Value)

			if ($OutputDataset.Tables.Count -gt 0) {
				if ($BlitzFirstSchema) {
					#Region Schema
					$DataTable = $OutputDataset.Tables

					$ColumnNames = $DataTable.Columns.ColumnName

					foreach ($DataRow in $DataTable.Rows) {
						$SchemaObject = [FirstResponderKit.BlitzFirstSchema]::New($SqlInstanceName)

						$SchemaObject.BlitzVersion = $BlitzVersion

						$SchemaObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $SchemaObject)[0]

						$SchemaObject
					}
					#EndRegion
				} elseif ($BlitzFirstTop10) {
					#Region Top 10
					$DataTable = $OutputDataset.Tables

					$ColumnNames = $DataTable.Columns.ColumnName

					foreach ($DataRow in $DataTable.Rows) {
						$BlitzFirstTop10Object = [FirstResponderKit.BlitzFirstTop10]::New($SqlInstanceName)

						$BlitzFirstTop10Object.BlitzVersion = $BlitzVersion

						switch ($ColumnNames) {
							'Avg ms Per Wait' {
								$ColumnName = $_

								if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
									$BlitzFirstTop10Object.AvgMsPerWait = $DataRow.$ColumnName
								}
							}
							'Hours Sample' {
								$ColumnName = $_

								if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
									$BlitzFirstTop10Object.HoursSample = $DataRow.$ColumnName
								}
							}
							'Number of Waits' {
								$ColumnName = $_

								if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
									$BlitzFirstTop10Object.NumberOfWaits = $DataRow.$ColumnName
								}
							}
							'Per Core Per Hour' {
								$ColumnName = $_

								if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
									$BlitzFirstTop10Object.PerCorePerHour = $DataRow.$ColumnName
								}
							}
							'Thread Time (Hours)' {
								$ColumnName = $_

								if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
									$BlitzFirstTop10Object.ThreadTime = $DataRow.$ColumnName
								}
							}
							'Wait Time (Hours)' {
								$ColumnName = $_

								if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
									$BlitzFirstTop10Object.WaitTime = $DataRow.$ColumnName
								}
							}
							Default {
								$ColumnName = $_

								if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
									$BlitzFirstTop10Object.$ColumnName = $DataRow.$ColumnName
								}
							}
						}

						$BlitzFirstTop10Object
					}
					#EndRegion
				} elseif ($ExpertMode -or $SinceStartup) {
					if ($ExpertMode) {
						$BlitzFirstObject = [FirstResponderKit.BlitzFirstExpert]::New($SqlInstanceName)
					} else {
						$BlitzFirstObject = [FirstResponderKit.BlitzFirstSinceStartup]::New($SqlInstanceName)
					}

					$BlitzFirstObject.BlitzVersion = $BlitzVersion

					$DataTableNumber = 0

					#Region BlitzWho_Start
					if ($ExpertMode -and $OutputResultSets -contains 'BlitzWho_Start') {
						$DataTable = $OutputDataset.Tables[$DataTableNumber]

						$ColumnNames = $DataTable.Columns.ColumnName

						if ($DataTable.Rows.Count -gt 0) {
							$BlitzWhoList = [System.Collections.Generic.List[FirstResponderKit.BlitzWhoResult]]::New()

							foreach ($DataRow in $DataTable.Rows) {
								$BlitzWhoObject = [FirstResponderKit.BlitzWhoResult]::New()

								$BlitzWhoObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $BlitzWhoObject)[0]

								$BlitzWhoList.Add($BlitzWhoObject)
							}

							$BlitzFirstObject.BlitzWho_Start = $BlitzWhoList
						}

						$DataTableNumber++
					}
					#EndRegion

					#Region Findings
					if ($ExpertMode -and $OutputResultSets -contains 'Findings') {
						$DataTable = $OutputDataset.Tables[$DataTableNumber]

						$ColumnNames = $DataTable.Columns.ColumnName

						if ($DataTable.Rows.Count -gt 0) {
							$BlitzFirstExpertList = [System.Collections.Generic.List[FirstResponderKit.BlitzFirstExpertResult]]::New()

							foreach ($DataRow in $DataTable.Rows) {
								$FindingsObject = [FirstResponderKit.BlitzFirstExpertResult]::New()

								$FindingsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $FindingsObject)[0]

								$BlitzFirstExpertList.Add($FindingsObject)
							}

							$BlitzFirstObject.BlitzFirst = $BlitzFirstExpertList
						}

						$DataTableNumber++
					}
					#EndRegion

					#Region WaitStats
					if ($OutputResultSets -contains 'WaitStats') {
						$DataTable = $OutputDataset.Tables[$DataTableNumber]

						$ColumnNames = $DataTable.Columns.ColumnName

						if ($DataTable.Rows.Count -gt 0) {
							if ($ExpertMode) {
								$WaitStatsList = [System.Collections.Generic.List[FirstResponderKit.WaitStats]]::New()
							} else {
								$WaitStatsList = [System.Collections.Generic.List[FirstResponderKit.WaitStatsSinceStartup]]::New()
							}

							foreach ($DataRow in $DataTable.Rows) {
								if ($ExpertMode) {
									$WaitStatsObject = [FirstResponderKit.WaitStats]::New()
								} else {
									$WaitStatsObject = [FirstResponderKit.WaitStatsSinceStartup]::New()
								}

								switch ($ColumnNames) {
									'Avg ms Per Wait' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.AvgMsPerWait = $DataRow.$ColumnName
										}
									}
									'Hours Sample' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.HoursSample = $DataRow.$ColumnName
										}
									}
									'Number of Waits' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.NumberOfWaits = $DataRow.$ColumnName
										}
									}
									'Per Core Per Hour' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.PerCorePerHour = $DataRow.$ColumnName
										}
									}
									'Per Core Per Second' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.PerCorePerSecond = $DataRow.$ColumnName
										}
									}
									'Percent Signal Waits' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.PercentSignalWaits = $DataRow.$ColumnName
										}
									}
									'Sample Ended' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.SampleEnded = $DataRow.$ColumnName
										}
									}
									'Seconds Sample' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.SecondsSample = $DataRow.$ColumnName
										}
									}
									'Signal Wait Time (Hours)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.SignalWaitTime = $DataRow.$ColumnName
										}
									}
									'Signal Wait Time (Seconds)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.SignalWaitTime = $DataRow.$ColumnName
										}
									}
									'Thread Time (Hours)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.ThreadTime = $DataRow.$ColumnName
										}
									}
									'Total Thread Time (Seconds)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.TotalThreadTime = $DataRow.$ColumnName
										}
									}
									'Wait Time (Hours)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.WaitTime = $DataRow.$ColumnName
										}
									}
									'Wait Time (Seconds)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.WaitTime = $DataRow.$ColumnName
										}
									}
									Default {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$WaitStatsObject.$ColumnName = $DataRow.$ColumnName
										}
									}
								}

								$WaitStatsList.Add($WaitStatsObject)
							}

							$BlitzFirstObject.WaitStats = $WaitStatsList
						}

						$DataTableNumber++
					}
					#EndRegion

					#Region FileStats
					if ($OutputResultSets -contains 'FileStats') {
						$DataTable = $OutputDataset.Tables[$DataTableNumber]

						$ColumnNames = $DataTable.Columns.ColumnName

						if ($DataTable.Rows.Count -gt 0) {
							$FileStatsList = [System.Collections.Generic.List[FirstResponderKit.FileStats]]::New()

							foreach ($DataRow in $DataTable.Rows) {
								$FileStatsObject = [FirstResponderKit.FileStats]::New()

								switch ($ColumnNames) {
									'# Reads/Writes' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.NoReadsWrites = $DataRow.$ColumnName
										}
									}
									'Avg Stall (ms)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.AvgStall = $DataRow.$ColumnName
										}
									}
									'File Name' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.FileName = $DataRow.$ColumnName
										}
									}
									'file physical name' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.FilePhysicalName = $DataRow.$ColumnName
										}
									}
									'MB Read/Written' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.MBReadWritten = $DataRow.$ColumnName
										}
									}
									'Sample (seconds)' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.Sample = $DataRow.$ColumnName
										}
									}
									'Sample Time' {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.SampleTime = $DataRow.$ColumnName
										}
									}
									Default {
										$ColumnName = $_

										if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
											$FileStatsObject.$ColumnName = $DataRow.$ColumnName
										}
									}
								}

								$FileStatsList.Add($FileStatsObject)
							}

							$BlitzFirstObject.FileStats = $FileStatsList
						}

						$DataTableNumber++
					}
					#EndRegion

					#Region PerfmonStats
					if ($OutputResultSets -contains 'PerfmonStats') {
						$DataTable = $OutputDataset.Tables[$DataTableNumber]

						$ColumnNames = $DataTable.Columns.ColumnName

						if ($DataTable.Rows.Count -gt 0) {
							$PerfmonStatsList = [System.Collections.Generic.List[FirstResponderKit.PerfmonStats]]::New()

							foreach ($DataRow in $DataTable.Rows) {
								$PerfmonStatsObject = [FirstResponderKit.PerfmonStats]::New()

								$PerfmonStatsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $PerfmonStatsObject)[0]

								$PerfmonStatsList.Add($PerfmonStatsObject)
							}

							$BlitzFirstObject.PerfmonStats = $PerfmonStatsList
						}

						$DataTableNumber++
					}
					#EndRegion

					#Region BlitzCache
					if ($OutputResultSets -contains 'BlitzCache') {
						if ($CheckProcedureCache) {
							$DataTable = $OutputDataset.Tables[$DataTableNumber]

							$ColumnNames = $DataTable.Columns.ColumnName

							if ($DataTable.Rows.Count -gt 0) {
								$BlitzCacheList = [System.Collections.Generic.List[FirstResponderKit.BlitzCache]]::New()

								foreach ($DataRow in $DataTable.Rows) {
									$BlitzCacheObject = [FirstResponderKit.BlitzCache]::New()

									$BlitzCacheObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $BlitzCacheObject)[0]

									$BlitzCacheList.Add($BlitzCacheObject)
								}

								$BlitzFirstObject.BlitzCache = $BlitzCacheList
							}
						}

						$DataTableNumber++
					}
					#EndRegion

					#Region BlitzWho_End
					if ($ExpertMode -and $OutputResultSets -contains 'BlitzWho_End') {
						$DataTable = $OutputDataset.Tables[$DataTableNumber]

						$ColumnNames = $DataTable.Columns.ColumnName

						if ($DataTable.Rows.Count -gt 0) {
							$BlitzWhoList = [System.Collections.Generic.List[FirstResponderKit.BlitzWhoResult]]::New()

							foreach ($DataRow in $DataTable.Rows) {
								$BlitzWhoObject = [FirstResponderKit.BlitzWhoResult]::New()

								$BlitzWhoObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $BlitzWhoObject)[0]

								$BlitzWhoList.Add($BlitzWhoObject)
							}

							$BlitzFirstObject.BlitzWho_End = $BlitzWhoList
						}

						$DataTableNumber++
					}
					#EndRegion

					$BlitzFirstObject
				} else {
					#Region BlitzFirst Default
					$DataTable = $OutputDataset.Tables

					$ColumnNames = $DataTable.Columns.ColumnName

					foreach ($DataRow in $DataTable.Rows) {
						$FindingsObject = [FirstResponderKit.BlitzFirst]::New($SqlInstanceName)

						$FindingsObject.BlitzVersion = $BlitzVersion

						$FindingsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $FindingsObject)[0]

						$FindingsObject
					}
					#EndRegion
				}
			} else {
				if ($VersionCheckMode) {
					$BlitzVersion
				}
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
		catch {
			throw $_
		}
		finally {
			if (Test-Path -Path variable:\SqlCommand) {
				$SqlCommand.Dispose()
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
	}

	END {
	}
}

function Invoke-BlitzWho {
	<#
	.EXTERNALHELP
	PSFirstResponderKit-help.xml
	#>

	[System.Diagnostics.DebuggerStepThrough()]

	[CmdletBinding(
		PositionalBinding = $false,
		SupportsShouldProcess = $true,
		ConfirmImpact = 'Low',
		DefaultParameterSetName = 'DatabaseName'
	)]

	[OutputType(
		[FirstResponderKit.BlitzVersion],
		[FirstResponderKit.BlitzWho],
		[FirstResponderKit.BlitzWhoExpert],
		[System.Void]
	)]

	param (
		#Region Parameter ServerInstance
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[Alias('SqlServer')]
		[string]$ServerInstance,
		#EndRegion

		#Region Parameter DatabaseName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[ValidateLength(1, 128)]
		[string]$DatabaseName,
		#EndRegion

		#Region Parameter SqlConnection
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[Microsoft.Data.SqlClient.SqlConnection]$SqlConnection,
		#EndRegion

		#Region Parameter BlitzHelp
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Help'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Help'
		)]
		[switch]$BlitzHelp,
		#EndRegion

		#Region Parameter VersionCheckMode
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_Version'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_Version'
		)]
		[switch]$VersionCheckMode,
		#EndRegion

		#Region Parameter ExpertMode
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[switch]$ExpertMode,
		#EndRegion

		#Region Parameter OutputDatabaseName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputDatabaseName,
		#EndRegion

		#Region Parameter OutputSchemaName
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $true,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputSchemaName,
		#EndRegion

		#Region Parameter OutputTableName
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[string]$OutputTableName,
		#EndRegion

		#Region Parameter OutputTableRetentionDays
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, 255)]
		[int]$OutputTableRetentionDays = 7,
		#EndRegion

		#Region Parameter CheckDateOverride
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateLength(1, 128)]
		[System.DateTimeOffset]$CheckDateOverride,
		#EndRegion

		#Region Parameter ShowSleepingSPIDs
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[switch]$ShowSleepingSPIDs,
		#EndRegion

		#Region Parameter MinElapsedSeconds
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinElapsedSeconds,
		#EndRegion

		#Region Parameter MinCPUTime
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinCPUTime,
		#EndRegion

		#Region Parameter MinLogicalReads
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinLogicalReads,
		#EndRegion

		#Region Parameter MinPhysicalReads
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinPhysicalReads,
		#EndRegion

		#Region Parameter MinWrites
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinWrites,
		#EndRegion

		#Region Parameter MinTempdbMB
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinTempdbMB,
		#EndRegion

		#Region Parameter MinRequestedMemoryKB
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinRequestedMemoryKB,
		#EndRegion

		#Region Parameter MinBlockingSeconds
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[ValidateRange(0, [int]::MaxValue)]
		[int]$MinBlockingSeconds,
		#EndRegion

		#Region Parameter ShowActualParameters
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[switch]$ShowActualParameters,
		#EndRegion

		#Region Parameter GetOuterCommand
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[switch]$GetOuterCommand,
		#EndRegion

		#Region Parameter GetLiveQueryPlan
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[switch]$GetLiveQueryPlan,

		#EndRegion

		#Region Parameter SortOrder
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[BlitzWhoSortOrder]$SortOrder,
		#EndRegion

		#Region Parameter BlitzDebug
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'DatabaseName_LogToTable'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_ExpertMode'
		)]
		[Parameter(
			Mandatory = $false,
			ValueFromPipeline = $false,
			ValueFromPipelineByPropertyName = $false,
			ParameterSetName = 'SqlConnection_LogToTable'
		)]
		[switch]$BlitzDebug
		#EndRegion
	)

	BEGIN {
		try {
			$DatabaseParameterSets = @(
				'DatabaseName',
				'DatabaseName_AsOf',
				'DatabaseName_ExpertMode',
				'DatabaseName_Help',
				'DatabaseName_LogToTable',
				'DatabaseName_Version'
			)

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				$SqlServerParameters = @{
					'ServerInstance' = $ServerInstance
					'DatabaseName' = $DatabaseName
				}

				$SqlConnection = Connect-SqlServerInstance @SqlServerParameters
			}

			if ($SqlConnection.DataSource -in @('.', '(local)')) {
				$SqlInstanceName = [Environment]::MachineName
			} else {
				$SqlInstanceName = $SqlConnection.DataSource
			}

			if ($BlitzHelp -or $BlitzDebug) {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Host $SqlEvent.Message
				}
			} else {
				$SqlInfoMessageEventHandler = [Microsoft.Data.SqlClient.SqlInfoMessageEventHandler]{
					param([Object]$SqlSender, [Microsoft.Data.SqlClient.SqlInfoMessageEventArgs]$SqlEvent)

					[void]$SqlSender
					Write-Verbose $SqlEvent.Message
				}
			}

			$SqlConnection.add_InfoMessage($SqlInfoMessageEventHandler)

			$SqlCommandText = '[dbo].[sp_BlitzWho]'
			$DataSetName = 'sp_BlitzWho'
			$DataTableName = 'sp_BlitzWho'
		}
		catch {
			throw $_
		}

		$CommonParameters = @(
			'Debug',
			'ErrorAction',
			'ErrorVariable',
			'InformationAction',
			'InformationVariable',
			'OutVariable',
			'OutBuffer',
			'PipelineVariable',
			'ProgressAction',
			'Verbose',
			'WarningAction',
			'WarningVariable',
			'WhatIf'
		)

		$ConvertFromDataRowScriptBlock = {
			param($DataRow, $ColumnNames, $Object)

			foreach ($ColumnName in $ColumnNames) {
				if ($DataRow.$ColumnName -IsNot [System.DBNull]) {
					$Object.$ColumnName = $DataRow.$ColumnName
				}
			}

			$Object
		}
	}

	PROCESS {
		try {
			$SqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Version", [System.Data.SqlDbType]::VarChar, 30)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionDate", [System.Data.SqlDbType]::DateTime)
			$SqlParameter.Direction = [System.Data.ParameterDirection]::Output

			$SqlParameterList.Add($SqlParameter)

			#Region Procedure Parameter Binding
			switch ($PSBoundParameters.Keys) {
				'BlitzDebug' {
					if ($BlitzDebug) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Debug", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'BlitzHelp' {
					if ($BlitzHelp) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@Help", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'CheckDateOverride' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@CheckDateOverride", [System.Data.SqlDbType]::DateTimeOffset, 7)
					$SqlParameter.Value = $CheckDateOverride

					$SqlParameterList.Add($SqlParameter)
				}
				'ExpertMode' {
					if ($ExpertMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@ExpertMode", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'GetLiveQueryPlan' {
					if ($GetLiveQueryPlan) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@GetLiveQueryPlan", [System.Data.SqlDbType]::Bit)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'GetOuterCommand' {
					if ($GetOuterCommand) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@GetOuterCommand", [System.Data.SqlDbType]::Bit)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'MinBlockingSeconds' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinBlockingSeconds", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinBlockingSeconds

					$SqlParameterList.Add($SqlParameter)
				}
				'MinCPUTime' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinCPUTime", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinCPUTime

					$SqlParameterList.Add($SqlParameter)
				}
				'MinElapsedSeconds' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinElapsedSeconds", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinElapsedSeconds

					$SqlParameterList.Add($SqlParameter)
				}
				'MinLogicalReads' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinLogicalReads", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinLogicalReads

					$SqlParameterList.Add($SqlParameter)
				}
				'MinPhysicalReads' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinPhysicalReads", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinPhysicalReads

					$SqlParameterList.Add($SqlParameter)
				}
				'MinRequestedMemoryKB' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinRequestedMemoryKB", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinRequestedMemoryKB

					$SqlParameterList.Add($SqlParameter)
				}
				'MinTempDbMB' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinTempDbMB", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinTempdbMB

					$SqlParameterList.Add($SqlParameter)
				}
				'MinWrites' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@MinWrites", [System.Data.SqlDbType]::Int)
					$SqlParameter.Value = $MinWrites

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputDatabaseName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputDatabaseName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputDatabaseName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputSchemaName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputSchemaName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputSchemaName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableName' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableName", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $OutputTableName

					$SqlParameterList.Add($SqlParameter)
				}
				'OutputTableRetentionDays' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@OutputTableRetentionDays", [System.Data.SqlDbType]::TinyInt)
					$SqlParameter.Value = $OutputTableRetentionDays

					$SqlParameterList.Add($SqlParameter)
				}
				'ShowActualParameters' {
					if ($ShowActualParameters) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@ShowActualParameters", [System.Data.SqlDbType]::Bit)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'ShowSleepingSPIDs' {
					if ($ShowSleepingSPIDs) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@ShowSleepingSPIDs", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				'SortOrder' {
					$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@SortOrder", [System.Data.SqlDbType]::NVarChar, 256)
					$SqlParameter.Value = $SortOrder

					$SqlParameterList.Add($SqlParameter)
				}
				'VersionCheckMode' {
					if ($VersionCheckMode) {
						$SqlParameter = [Microsoft.Data.SqlClient.SqlParameter]::New("@VersionCheckMode", [System.Data.SqlDbType]::TinyInt)
						$SqlParameter.Value = 1

						$SqlParameterList.Add($SqlParameter)
					}
				}
				Default {
					$Parameter = $_

					if ($Parameter -NotIn @('ServerInstance', 'DatabaseName', 'SqlConnection') -and $Parameter -NotIn $CommonParameters) {
						throw [System.Management.Automation.ErrorRecord]::New(
							[Exception]::New('Unknown parameter.'),
							'1',
							[System.Management.Automation.ErrorCategory]::InvalidType,
							$Parameter
						)
					}
				}
			}
			#EndRegion

			$OutSqlParameterList = [System.Collections.Generic.List[Microsoft.Data.SqlClient.SqlParameter]]::New()

			$SqlClientDataSetParameters = @{
				'SqlConnection' = $SqlConnection
				'SqlCommandText' = $SqlCommandText
				'CommandType' = [System.Data.CommandType]::StoredProcedure
				'SqlParameter' = $SqlParameterList
				'OutSqlParameter' = $OutSqlParameterList
				'CommandTimeout' = 0
				'DataSetName' = $DataSetName
				'DataTableName' = $DataTableName
				'OutputAs' = 'DataSet'
			}

			if ($PSCmdlet.ShouldProcess($DataSetName, 'Get SQL dataset')) {
				$OutputDataset = Get-SqlClientDataSet @SqlClientDataSetParameters

				if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
					Disconnect-SqlServerInstance -SqlConnection $SqlConnection
				}
			}

			$BlitzVersion = [FirstResponderKit.BlitzVersion]::New($OutSqlParameterList.Where({$_.ParameterName -eq '@Version'}).Value, $OutSqlParameterList.Where({$_.ParameterName -eq '@VersionDate'}).Value)

			if ($OutputDataset.Tables.Count -gt 0) {
				$DataTable = $OutputDataset.Tables[0]

				$ColumnNames = $DataTable.Columns.ColumnName

				if ($DataTable.Rows.Count -gt 0) {
					foreach ($DataRow in $DataTable.Rows) {
						if ($ExpertMode) {
							$FindingsObject = [FirstResponderKit.BlitzWhoExpert]::New($SqlInstanceName)
						} else {
							$FindingsObject = [FirstResponderKit.BlitzWho]::New($SqlInstanceName)
						}

						$FindingsObject.BlitzVersion = $BlitzVersion

						$FindingsObject = $ConvertFromDataRowScriptBlock.Invoke($DataRow, $ColumnNames, $FindingsObject)[0]

						$FindingsObject
					}
				}
			} else {
				if ($VersionCheckMode) {
					$BlitzVersion
				}
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
		catch {
			throw $_
		}
		finally {
			if (Test-Path -Path variable:\SqlCommand) {
				$SqlCommand.Dispose()
			}

			if ($PSCmdlet.ParameterSetName -in $DatabaseParameterSets) {
				Disconnect-SqlServerInstance -SqlConnection $SqlConnection
			}
		}
	}

	END {
	}
}


<#
$DataSet = Get-SqlClientDataSet -ServerInstance AZ-SQL-P01-N01 -DatabaseName Admin -SqlCommandText 'EXEC sp_Blitz @CheckProcedureCache = 1, @OutputProcedureCache = 1;' -OutputAs DataTable
$DataSet[1].Columns | Select ColumnName, DataType
#>
