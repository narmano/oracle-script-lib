select rownum id, column_value abstract 
from (
	table(
		sys.odcivarchar2list(
q'[buffer header]',
q'[checkpoint buffer (queue)]',
q'[debug alert extented]',
q'[debug log extended]',
q'[debug repository (Automatic Diagnostic Repository) incident]',
q'[debug kernel error, critical error]',
q'[debug kernel error, fatal error flood control]',
q'[data guard logical parameters]',
q'[diagnostics alert extended]',
q'[diagnostics health monitor runs]',
q'[diagnostics incident packaging service configuration]',
q'[dNFS metadata]',
q'[data recovery advisor failures]',
q'[dynamic remastering history, stats]',
q'[ipc core topology domain|name device]',
q'[job scheduling, job queue]',
q'[kernel 2-phase commit, global transaction entry]',
q'[kernel backup recovery process(?) statistics]',
q'[kernel cache, buffer ?]',
q'[kernel cache, buffer buffer_handles]',
q'[kernel cache, buffer file wait]',
q'[kernel cache, buffer ckpt prefetch statistics]',
q'[kernel cache, buffer write list]',
q'[kernel cache, buffer load direct read history]',
q'[kernel cache, buffer, objectqueue buffer header]',
q'[kernel cache, buffer, object queue header]',
q'[kernel cache, buffer, PDB resource metric]',
q'[kernel cache, buffer statistics]',
q'[kernel cache, buffer why]',
q'[kernel cache, buffer workingset buffer pool descriptor]',
q'[kernel cache, buffer workingset descriptors]',
q'[kernel cache, buffer where/why]',
q'[kernel cache, controlfilemanagement control file]',
q'[kernel cache, controlfile checkpoint progress]',
q'[kernel cache, controlfilemanagement database information]',
q'[kernel cache, controlfile logfile entry]',
q'[kernel cache, controlfile non-guaranteed restorepoint; kernel cache,]',
q'[kernel cache, file intelligent scan]',
q'[kernel cache, (RAC) lock, consistent read statistics]',
q'[kernel cache, (RAC) lock file hashtable]',
q'[kernel cache, (RAC) lock file index]',
q'[kernel cache, (RAC) lock (element) freelist statistics]',
q'[kernel cache, (RAC) lock undo header]',
q'[kernel cache, (RAC) lock undo index]',
q'[kernel cache, maximum SCN]',
q'[kernel cache, nologging transaction]',
q'[kernel cache, redo file strand]',
q'[kernel cache, redo file context]',
q'[kernel cache, recovery process LNS]',
q'[kernel data, column statistics]',
q'[kernel data, index status]',
q'[kernel data, index histogram]',
q'[kernel server (manageability), workload repository tables]',
q'[kernel file, disk allocation table?]',
q'[kernel file, file extent map]',
q'[kernel file, ? library]',
q'[kernel generic, heap LRUs]',
q'[kernel generic, librarycache cursor]',
q'[kernel generic, librarycache lock]',
q'[kernel generic, librarycache object]',
q'[kernel generic, librarycache pin]',
q'[kernel generic, librarycache readonly dependency]',
q'[kernel generic, librarycache statistics]',
q'[kernel generic, librarycache translation]',
q'[kernel generic, service, ?(resource manager) ? fixed table]',
q'[kernel RAC cross-instance messaging]',
q'[kernel RAC diag node hang session]',
q'[kernel compilation shared (cursor) parse cursor ??]',
q'[kernel memory, sga space ??]',
q'[kernel memory, sga space transfer ??]',
q'[kernel replication, statistics materialized view refresh]',
q'[kernel programmatic oracle, ? fixed table]',
q'[kernel query, dictionary PGA]',
q'[kernel query, fixed table columns]',
q'[kernel query, fixed derived table]',
q'[kernel query, fixed package]',
q'[kernel query, fixed size (size of fixed objects in current version of]',
q'[kernel query, fixed table]',
q'[kernel query, fixed view]',
q'[kernel query, librarycache fixedtable sql cursor environment]',
q'[kernel query, rowcache parent definition]',
q'[kernel query, rowcache subordinate definition]',
q'[kernel recovery backuprecovery, miscellaneous search file ?]',
q'[kernel recovery, changetracking file, header, descriptor, bitmap header,]',
q'[kernel recovery, changetracking statistics]',
q'[kernel service, background detached (process) definition]',
q'[kernel service, background server detached (process)]',
q'[kernel service, background ? action]',
q'[kernel service, background ? CPU wait time]',
q'[kernel service, file disk (I/O) statistics, ? outlier]',
q'[kernel service, instance management serial (and) instance (numbers)]',
q'[kernel service IPC info and process stats]',
q'[kernel service, instance, reuse stats]',
q'[kernel service, lock, event descriptors, events for instance, events for]',
q'[kernel service, lock, event map]',
q'[kernel service, lock, hot (blocks)]',
q'[kernel service, lock,, latch class]',
q'[kernel service, lock,, latch ?]',
q'[kernel service, lock, latch where]',
q'[kernel service, latch]',
q'[kernel service,]',
q'[kernel service, memory segmented (array) definition]',
q'[kernel service, memory fixed SGA]',
q'[kernel service, memory fixed SGA variables]',
q'[kernel service, memory heap]',
q'[kernel service, memory, java chunks, java (pool) statistics]',
q'[kernel service, memory LRU]',
q'[kernel service, memory large (pool) statistics]',
q'[kernel service, memory]',
q'[kernel service, memory numa (pool) statistics]',
q'[kernel service, memory PGA detailed statistics]',
q'[kernel service, memory pga heap]',
q'[kernel service, memory SGA map]',
q'[kernel service, memory sga heap]',
q'[kernel service, memory shared pool reserved]',
q'[kernel service, memory shared pool, ? statistics new]',
q'[kernel service, memory shared pool ?]',
q'[kernel service, memory sga statistics]',
q'[kernel service, memory, sga streams (pool), streams (pool) statistics]',
q'[kernel service, memory sga OS (level) info]',
q'[kernel service, memory uga heap]',
q'[kernel service, object level statistics, fts?]',
q'[kernel service, parameter, current (session) value]',
q'[kernel service, parameter, parameter info]',
q'[kernel service, parameter, system value]',
q'[kernel service, parameter, reset value]',
q'[kernel service, parameter spfile header]',
q'[kernel service, (intra-instance) broadcast, channel context, channel]',
q'[kernel service, (intra-instance) broadcast, channel ?]',
q'[kernel service, trace execution]',
q'[kernel service, user, global network stats (AWR)]',
q'[kernel service, user long operation]',
q'[kernel service, user locale value]',
q'[kernel service, user, process group, process group sniped]',
q'[kernel service, user, process (resource) limit, resource usage]',
q'[kernel service, user process latch]',
q'[kernel service, user session]',
q'[kernel service, user session connection]',
q'[kernel service, user session migration]',
q'[kernel service, user virtual memory statistics]',
q'[kernel service, workgroup services, service table]',
q'[kernel service, execution, (parallel) affinity ?]',
q'[kernel service, execution, modification dml frequency tracking]',
q'[kernel service, execution, modification dml ?]',
q'[kernel service, ipc, client]',
q'[kernel service, ipc, interface]',
q'[kernel service, ipc, ping]',
q'[kernel service, ipc, stats]',
q'[kernel transaction, change notification *]',
q'[kernel transaction, control, transaction object]',
q'[kernel tablespace, file bitmap free extent]',
q'[kernel tablespace, file bitmap header control]',
q'[kernel tablespace, file bigfile ? stat]',
q'[kernel tablespace, file bitmap used extent]',
q'[kernel transaction, in-memory flush, ?]',
q'[kernel transaction, parallel (transaction) recovery history]',
q'[kernel transaction, resumable session ?]',
q'[kernel transaction, ? in-memory pool]',
q'[kernel transaction, space job(?)]',
q'[kernel transaction/tablespace, segment shrink statistics]',
q'[kernel transaction/tablespace, space LOB chunk]',
q'[kernel tablespace, space statistics]',
q'[kernel transaction, sort segment]',
q'[kernel transaction, undo global data]',
q'[kernel transaction, undo minimum active SCN]',
q'[kernel transaction, undo ? query]',
q'[kernel transaction, undo recovery history]',
q'[kernel transaction, undo system managed, statistics]',
q'[kernel transaction, undo transaction entry]',
q'[kernel (performance) view, instance, initialization, transitory]',
q'[kernel OLTP queue ?]',
q'[kernel Exadata, block (level) intelligent operations stats, callback for]',
q'[kernel execution, fast (parallel process) black box]',
q'[kernel execution, fast (parallel) process batch size]',
q'[kernel execution, fast (parallel) process, coordinator, dequeue stats,]',
q'[kernel execution, fast (parallel) process instance load]',
q'[kernel execution, fast (parallel) process, slave, dequeue stats, message]',
q'[kernel execution, SQL bind data]',
q'[kernel execution, temporary table stats, column stats, histograms, index]',
q'[kernel ? workload management]',
q'[kernel security, session, privilege, role]',
q'[lock element]',
q'[LOB (segment) stats, history]',
q'[Log buffer read]',
q'[(background process) messages]',
q'[(sql) module action length (limit)]',
q'[query execution, sql memory management ? workarea ?]',
q'[query execution, sql memory management sga]',
q'[query compilation, sql fine-grained invalidation(?) cursor]',
q'[query compilation service, bug session or system]',
q'[query compilation service, compilation environment, session or system]',
q'[shadow datafile]',
q'[OS kernel generic interface IPC, connections, ports]',
q'[target RBA]',
q'[trace]',
q'[user global area, network connection]',
q'[explain plan sql trace(?) operation name,]',
q'[? sessions]'
		)
	)
)
