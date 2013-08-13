.class public Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$DbMetaData;,
        Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;,
        Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;,
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEGIN_SQL:Ljava/lang/String; = "BEGIN;"

.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String; = null

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final DEFAULT_SQL_CACHE_SIZE:I = 0x19

.field private static final DELAYED_DURATION:I = 0x3e8

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ENABLE_DB_SAMPLE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_SERVO:Z = false

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final JOURNAL_SIZE_LIMIT_UNLIMIT:I = -0x1

.field private static final JOURNAL_SIZE_LIMIT_UNSET:I = -0x2

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WAIT_PERIOD:J = 0x1eL

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field private static final MEMORY_DB_PATH:Ljava/lang/String; = ":memory:"

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final PROP_DEFAULT_JOURNAL_MODE:Ljava/lang/String; = "htc.fw.db.default_journal_mode"

.field private static final PROP_DEFAULT_JOURNAL_SIZE_LIMIT:Ljava/lang/String; = "htc.fw.db.default_journal_size"

.field private static final PROP_SOFT_HEAP_LIMIT:Ljava/lang/String; = "htc.fw.db.soft_heap_limit"

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SEND_INTENT:I = -0x1

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field private static final SQLITE_DELETE:I = 0x9

.field private static final SQLITE_DELETE_ALL:I = 0x1

.field private static final SQLITE_INSERT:I = 0x12

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final SQLITE_UPDATE:I = 0x17

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static mActiveDatabases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

.field private static volatile mSearchableDB:Ljava/util/Properties;

.field private static mThreshold:I

.field private static package_name:Ljava/lang/String;

.field private static receiver:Ljava/lang/String;

.field private static final records:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlockSize:I

.field private static sDefaultJournalMode:Ljava/lang/String;

.field private static sDefaultJournalSizeLimit:I

.field private static sMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase$DbMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryLogTimeInMillis:I

.field private static sSoftHeapLimitSize:I


# instance fields
.field private mCacheFullWarning:Z

.field mCanDumpMonitoredSql:Z

.field private final mClosedStatementIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompiledQueries:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectionNum:S

.field volatile mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

.field private final mCustomFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mFlags:I

.field private volatile mHasAttachedDbs:Z

.field private volatile mHookChecked:Z

.field private mHookTable:[Ljava/lang/String;

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field volatile mNativeHandle:I

.field mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private volatile mPathPattern:Ljava/lang/String;

.field private final mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mStackTrace:Ljava/lang/Throwable;

.field private mTransStartTime:J

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private mTransactionUsingExecSql:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->sMetaData:Ljava/util/HashMap;

    .line 110
    const-string v1, "PERSIST"

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalMode:Ljava/lang/String;

    .line 111
    const/4 v1, -0x2

    sput v1, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalSizeLimit:I

    .line 172
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v3

    const-string v4, " OR ROLLBACK "

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, " OR ABORT "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, " OR FAIL "

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, " OR IGNORE "

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, " OR REPLACE "

    aput-object v4, v1, v2

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 260
    const-string v1, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 273
    sput v3, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 304
    sput v3, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    .line 2861
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isSevroEnable()Z

    move-result v1

    sput-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    .line 2872
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/database/sqlite/SQLiteDatabase;->records:Ljava/util/HashMap;

    .line 2878
    const/16 v1, 0xb

    sput v1, Landroid/database/sqlite/SQLiteDatabase;->mThreshold:I

    .line 2879
    sput-object v5, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    .line 2880
    sput-object v5, Landroid/database/sqlite/SQLiteDatabase;->receiver:Ljava/lang/String;

    .line 3173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    .line 3174
    .local v0, defaultLimitSizeInKb:I
    const-string v1, "htc.fw.db.soft_heap_limit"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    sput v1, Landroid/database/sqlite/SQLiteDatabase;->sSoftHeapLimitSize:I

    .line 3186
    return-void

    .end local v0           #defaultLimitSizeInKb:I
    :cond_0
    move v1, v3

    .line 91
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V
    .locals 6
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"
    .parameter "connectionNum"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2077
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 100
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 243
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    .line 245
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 246
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 262
    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 277
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 280
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 298
    iput v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 310
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    .line 363
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 375
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 380
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 427
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 1347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    .line 2875
    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathPattern:Ljava/lang/String;

    .line 2877
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookChecked:Z

    .line 2078
    if-nez p1, :cond_0

    .line 2079
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2081
    :cond_0
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 2082
    iput p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    .line 2083
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 2084
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 2085
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 2086
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 2089
    if-nez p4, :cond_1

    new-instance p4, Landroid/database/DefaultDatabaseErrorHandler;

    .end local p4
    invoke-direct {p4}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    :cond_1
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 2090
    iput-short p5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    .line 2101
    sget v0, Landroid/database/sqlite/SQLiteDatabase;->sSoftHeapLimitSize:I

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->native_setSqliteSoftHeapLimit(I)V

    .line 2103
    return-void
.end method

.method static synthetic access$002(Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;)Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Landroid/database/sqlite/SQLiteDatabase;->mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->records:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 91
    sget v0, Landroid/database/sqlite/SQLiteDatabase;->mThreshold:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .locals 5
    .parameter "transactionListener"
    .parameter "exclusive"

    .prologue
    const/4 v4, 0x1

    .line 702
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 703
    const-string v3, "BEGIN;"

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->lockForced(Ljava/lang/String;)V

    .line 704
    const/4 v2, 0x0

    .line 707
    .local v2, ok:Z
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 708
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_1

    .line 709
    const-string v1, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 711
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "SQLiteDatabase"

    const-string v4, "beginTransaction() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-nez v2, :cond_0

    .line 743
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 740
    :cond_0
    throw v3

    .line 715
    :cond_1
    const/4 v2, 0x1

    .line 740
    if-nez v2, :cond_2

    .line 743
    :goto_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 746
    :cond_2
    return-void

    .line 721
    :cond_3
    if-eqz p2, :cond_5

    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v3, :cond_5

    .line 722
    const-string v3, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 726
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransStartTime:J

    .line 727
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 728
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 729
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    if-eqz p1, :cond_4

    .line 732
    :try_start_2
    invoke-interface {p1}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 738
    :cond_4
    const/4 v2, 0x1

    .line 740
    if-nez v2, :cond_2

    goto :goto_0

    .line 724
    :cond_5
    :try_start_3
    const-string v3, "BEGIN IMMEDIATE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 735
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private checkLockHoldTime()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x7d0

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 570
    .local v0, elapsedTime:J
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v6

    .line 571
    .local v2, lockedTime:J
    cmp-long v6, v2, v10

    if-gez v6, :cond_1

    const-string v6, "SQLiteDatabase"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 577
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 579
    .local v5, threadTime:I
    const/16 v6, 0x64

    if-gt v5, v6, :cond_2

    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    .line 581
    :cond_2
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lock held on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms. Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, msg:Ljava/lang/String;
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v6, :cond_3

    .line 585
    const-string v6, "SQLiteDatabase"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6, v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 587
    :cond_3
    const-string v6, "SQLiteDatabase"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeClosable()V
    .locals 4

    .prologue
    .line 1230
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 1232
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1233
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1235
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteClosable;

    .line 1236
    .local v2, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v2, :cond_0

    .line 1237
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_0

    .line 1240
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    .end local v2           #program:Landroid/database/sqlite/SQLiteClosable;
    :cond_1
    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "factory"

    .prologue
    .line 1184
    const-string v0, ":memory:"

    const/high16 v1, 0x1000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private native enableSqlProfiling(Ljava/lang/String;S)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;S)V
.end method

.method private native enableUpdateHook()V
.end method

.method private static ensureReceiverInited()V
    .locals 9

    .prologue
    .line 2895
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    if-nez v7, :cond_1

    .line 2896
    const/4 v1, 0x0

    .line 2897
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 2899
    .local v3, fis2:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v7, "/system/etc/searchabledb.conf"

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2901
    .local v5, props:Ljava/util/Properties;
    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2902
    sput-object v5, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    .line 2903
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    const-string/jumbo v8, "package"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    .line 2904
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    const-string/jumbo v8, "receiver"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/database/sqlite/SQLiteDatabase;->receiver:Ljava/lang/String;

    .line 2905
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    const-string/jumbo v8, "threshold"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    .line 2907
    .local v6, thresholdStr:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/database/sqlite/SQLiteDatabase;->mThreshold:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 2911
    :goto_0
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/database/sqlite/SQLiteDatabase;->package_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/searchabledb.conf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2914
    .local v0, customized_conf:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2915
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 2916
    .end local v3           #fis2:Ljava/io/FileInputStream;
    .local v4, fis2:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/util/Properties;

    .end local v5           #props:Ljava/util/Properties;
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2917
    .restart local v5       #props:Ljava/util/Properties;
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2918
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    invoke-virtual {v7, v5}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v3, v4

    .line 2924
    .end local v4           #fis2:Ljava/io/FileInputStream;
    .restart local v3       #fis2:Ljava/io/FileInputStream;
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 2929
    :goto_1
    if-eqz v3, :cond_1

    .line 2930
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 2937
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v5           #props:Ljava/util/Properties;
    .end local v6           #thresholdStr:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 2923
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    .line 2924
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2929
    :goto_4
    if-eqz v3, :cond_2

    .line 2930
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 2923
    :cond_2
    :goto_5
    throw v7

    .line 2920
    :catch_0
    move-exception v7

    .line 2924
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 2929
    :goto_7
    if-eqz v3, :cond_1

    .line 2930
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 2932
    .end local v1           #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 2925
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_7

    :catch_3
    move-exception v8

    goto :goto_4

    .line 2932
    :catch_4
    move-exception v8

    goto :goto_5

    .line 2925
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #customized_conf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #props:Ljava/util/Properties;
    .restart local v6       #thresholdStr:Ljava/lang/String;
    :catch_5
    move-exception v7

    goto :goto_1

    .line 2923
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v5           #props:Ljava/util/Properties;
    .end local v6           #thresholdStr:Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #fis2:Ljava/io/FileInputStream;
    .restart local v0       #customized_conf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis2:Ljava/io/FileInputStream;
    .restart local v6       #thresholdStr:Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4           #fis2:Ljava/io/FileInputStream;
    .restart local v3       #fis2:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2920
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v6           #thresholdStr:Ljava/lang/String;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v7

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #fis2:Ljava/io/FileInputStream;
    .restart local v0       #customized_conf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis2:Ljava/io/FileInputStream;
    .restart local v6       #thresholdStr:Ljava/lang/String;
    :catch_7
    move-exception v7

    move-object v3, v4

    .end local v4           #fis2:Ljava/io/FileInputStream;
    .restart local v3       #fis2:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 2908
    .end local v0           #customized_conf:Ljava/io/File;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v5       #props:Ljava/util/Properties;
    :catch_8
    move-exception v7

    goto :goto_0
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2034
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2035
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 2036
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    .line 2038
    :cond_0
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2040
    .local v1, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2045
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2040
    return v2

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 2043
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2045
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tables"

    .prologue
    const/4 v3, 0x0

    .line 1459
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1461
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1462
    .local v1, spacepos:I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1464
    .local v0, commapos:I
    if-lez v1, :cond_2

    if-lt v1, v0, :cond_0

    if-gez v0, :cond_2

    .line 1465
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1469
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 1466
    .restart local p0
    :cond_2
    if-lez v0, :cond_1

    if-lt v0, v1, :cond_3

    if-gez v1, :cond_1

    .line 1467
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1471
    .end local v0           #commapos:I
    .end local v1           #spacepos:I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized getCacheHitNum()I
    .locals 1

    .prologue
    .line 2355
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->hitCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCacheMissNum()I
    .locals 1

    .prologue
    .line 2359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->missCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCachesize()I
    .locals 1

    .prologue
    .line 2363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2638
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2642
    .local v22, dbStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    sget-object v6, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2643
    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 2644
    .local v32, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/ref/WeakReference;

    .line 2646
    .local v33, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/database/sqlite/SQLiteDatabase;

    .line 2647
    .local v21, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2653
    :try_start_1
    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->native_getDbLookaside()I

    move-result v8

    .line 2656
    .local v8, lookasideUsed:I
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v31

    .line 2657
    .local v31, path:Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    .line 2658
    .local v27, indx:I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_3

    add-int/lit8 v27, v27, 0x1

    move/from16 v2, v27

    :goto_1
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 2661
    .local v28, lastnode:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v19

    .line 2662
    .local v19, attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v19, :cond_0

    .line 2665
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_6

    .line 2666
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/util/Pair;

    .line 2667
    .local v29, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".page_count;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 2673
    .local v4, pageCount:J
    if-nez v23, :cond_4

    .line 2674
    move-object/from16 v3, v28

    .line 2685
    .local v3, dbName:Ljava/lang/String;
    :cond_1
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 2686
    new-instance v2, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v6

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v9

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v10

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v11

    invoke-direct/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2665
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2644
    .end local v3           #dbName:Ljava/lang/String;
    .end local v4           #pageCount:J
    .end local v8           #lookasideUsed:I
    .end local v19           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #i:I
    .end local v27           #indx:I
    .end local v28           #lastnode:Ljava/lang/String;
    .end local v29           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31           #path:Ljava/lang/String;
    .end local v32           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .end local v33           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2658
    .restart local v8       #lookasideUsed:I
    .restart local v21       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27       #indx:I
    .restart local v31       #path:Ljava/lang/String;
    .restart local v32       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;>;"
    .restart local v33       #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2677
    .restart local v4       #pageCount:J
    .restart local v19       #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v23       #i:I
    .restart local v28       #lastnode:Ljava/lang/String;
    .restart local v29       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v8, 0x0

    .line 2678
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  (attached) "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2680
    .restart local v3       #dbName:Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2681
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 2682
    .local v26, idx:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v6, -0x1

    move/from16 v0, v26

    if-eq v0, v6, :cond_5

    add-int/lit8 v26, v26, 0x1

    move/from16 v6, v26

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 2694
    .end local v3           #dbName:Ljava/lang/String;
    .end local v4           #pageCount:J
    .end local v26           #idx:I
    .end local v29           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    move-object/from16 v20, v0

    .line 2695
    .local v20, connPool:Landroid/database/sqlite/DatabaseConnectionPool;
    if-eqz v20, :cond_0

    .line 2696
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/DatabaseConnectionPool;->getConnectionList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/database/sqlite/SQLiteDatabase;

    .line 2697
    .local v30, pDb:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/database/sqlite/SQLiteDebug$DbStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(pooled # "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget-short v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheHitNum()I

    move-result v16

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCacheMissNum()I

    move-result v17

    invoke-direct/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->getCachesize()I

    move-result v18

    invoke-direct/range {v9 .. v18}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 2702
    .end local v8           #lookasideUsed:I
    .end local v19           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20           #connPool:Landroid/database/sqlite/DatabaseConnectionPool;
    .end local v23           #i:I
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v27           #indx:I
    .end local v28           #lastnode:Ljava/lang/String;
    .end local v30           #pDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v31           #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 2707
    .end local v21           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v33           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    :cond_7
    return-object v22
.end method

.method private declared-synchronized getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 2582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPathForLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2194
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2205
    :goto_0
    return-object v0

    .line 2197
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2198
    const/4 v0, 0x0

    goto :goto_0

    .line 2200
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2201
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2205
    :goto_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_0

    .line 2203
    :cond_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1
.end method

.method private hookDBIfNecessary()V
    .locals 9

    .prologue
    .line 3127
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    if-nez v7, :cond_1

    .line 3162
    :cond_0
    :goto_0
    return-void

    .line 3130
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookChecked:Z

    .line 3132
    const/4 v5, 0x0

    .line 3133
    .local v5, tables:Ljava/lang/String;
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3134
    if-nez v5, :cond_4

    .line 3136
    sget-object v7, Landroid/database/sqlite/SQLiteDatabase;->mSearchableDB:Ljava/util/Properties;

    invoke-virtual {v7}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3137
    .local v4, searchableDbs:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3138
    .local v2, item:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3139
    .local v3, pattern:Ljava/lang/String;
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v3, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tables:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 3141
    .restart local v5       #tables:Ljava/lang/String;
    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathPattern:Ljava/lang/String;

    .line 3148
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/util/Map$Entry;
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #searchableDbs:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 3150
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    .local v6, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    .line 3152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_5

    .line 3153
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 3152
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3146
    .end local v0           #i:I
    .end local v6           #tokens:Ljava/util/StringTokenizer;
    :cond_4
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathPattern:Ljava/lang/String;

    goto :goto_1

    .line 3156
    .restart local v0       #i:I
    .restart local v6       #tokens:Ljava/util/StringTokenizer;
    :cond_5
    new-instance v7, Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;-><init>(Landroid/database/sqlite/SQLiteDatabase$1;)V

    .line 3157
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->enableUpdateHook()V

    goto :goto_0
.end method

.method private isHookableTable(Ljava/lang/String;)Z
    .locals 2
    .parameter "tableName"

    .prologue
    .line 3095
    const/4 v0, 0x0

    .line 3096
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3097
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3101
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 3096
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3101
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isPooledConnection()Z
    .locals 1

    .prologue
    .line 2586
    iget-short v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSevroEnable()Z
    .locals 2

    .prologue
    .line 2859
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lock(Ljava/lang/String;Z)V
    .locals 9
    .parameter "sql"
    .parameter "forced"

    .prologue
    .line 453
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 454
    const-string v5, "SQLiteDatabase"

    const-string v6, "don\'t lock() while in a synchronized method"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 457
    if-nez p2, :cond_2

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v5, :cond_2

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    const/4 v0, 0x0

    .line 459
    .local v0, done:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 460
    .local v3, timeStart:J
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 463
    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 464
    if-nez v0, :cond_3

    .line 467
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "database lock has not been available for 30 sec. Current Owner of the lock is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getOwnerDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Continuing to wait in thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 471
    :catch_0
    move-exception v5

    goto :goto_1

    .line 475
    :cond_4
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v5, :cond_5

    .line 476
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 479
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 483
    :cond_5
    const/4 v2, 0x0

    .line 484
    .local v2, sb:Ljava/lang/StringBuilder;
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_THREAD_LOCK_POINT:Z

    if-eqz v5, :cond_6

    .line 485
    if-nez p1, :cond_7

    const/16 v1, 0x32

    .line 486
    .local v1, len:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Acquire: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handle:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sql:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 490
    const-string v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v1           #len:I
    :cond_6
    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 485
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, 0x32

    goto :goto_2
.end method

.method private lockForced()V
    .locals 2

    .prologue
    .line 522
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 523
    return-void
.end method

.method private lockForced(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 527
    return-void
.end method

.method private logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10
    .parameter "sql"
    .parameter "beginMillis"
    .parameter "prefix"

    .prologue
    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 2145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 2146
    .local v1, durationMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    const-string v4, "GETLOCK:"

    if-ne p4, v4, :cond_0

    .line 2186
    :goto_0
    return-void

    .line 2151
    :cond_0
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v4, :cond_1

    .line 2152
    const-string v4, "db.db_operation.threshold_ms"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 2154
    :cond_1
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_6

    .line 2155
    const/16 v3, 0x64

    .line 2163
    .local v3, samplePercent:I
    :cond_2
    if-eqz p4, :cond_3

    .line 2164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2166
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_4

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2176
    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v0

    .line 2177
    .local v0, blockingPackage:Ljava/lang/String;
    if-nez v0, :cond_5

    const-string v0, ""

    .line 2179
    :cond_5
    const v4, 0xcb20

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPathForLogs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 2157
    .end local v0           #blockingPackage:Ljava/lang/String;
    .end local v3           #samplePercent:I
    :cond_6
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    sget v6, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 2158
    .restart local v3       #samplePercent:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_2

    goto :goto_0
.end method

.method private native native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I
.end method

.method private final native native_finalize(I)V
.end method

.method private native native_getDbLookaside()I
.end method

.method private native native_releaseCustomFunction(I)V
.end method

.method private native native_setLocale(Ljava/lang/String;I)V
.end method

.method private native native_setSqliteSoftHeapLimit(I)V
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "path"
    .parameter "factory"
    .parameter "flags"

    .prologue
    .line 1034
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"

    .prologue
    const/4 v4, 0x0

    .line 1058
    invoke-static {p0, p1, p2, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1062
    .local v1, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    sget v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    if-nez v2, :cond_0

    .line 1065
    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    sput v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    .line 1068
    :cond_0
    iput-boolean v4, v1, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 1069
    sget v2, Landroid/database/sqlite/SQLiteDatabase;->sBlockSize:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setPageSize(J)V

    .line 1070
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 1075
    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalMode:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    sget-object v3, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1091
    :try_start_1
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mActiveDatabases:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    return-object v1

    .line 1077
    :catch_0
    move-exception v0

    .line 1085
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1086
    throw v0

    .line 1092
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7
    .parameter "path"
    .parameter "factory"
    .parameter "flags"
    .parameter "errorHandler"
    .parameter "connectionNum"

    .prologue
    .line 1099
    sget-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    if-eqz v1, :cond_0

    .line 1100
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->ensureReceiverInited()V

    .line 1103
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)V

    .line 1105
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "opening the db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_1
    invoke-direct {v0, p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 1111
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_2

    .line 1112
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;S)V

    .line 1114
    :cond_2
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_3

    .line 1115
    invoke-direct {v0, p0, p4}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;S)V

    .line 1118
    :cond_3
    sget-boolean v1, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    if-eqz v1, :cond_4

    .line 1119
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->hookDBIfNecessary()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1125
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_0
    return-object v0

    .line 1123
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v6

    .line 1124
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v1, v0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1125
    invoke-static {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 1126
    .end local v6           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v6

    .line 1127
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLiteDatabase"

    const-string v2, "Failed to open the database. closing it."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1129
    throw v6
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "file"
    .parameter "factory"

    .prologue
    .line 1137
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "path"
    .parameter "factory"

    .prologue
    .line 1144
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "path"
    .parameter "factory"
    .parameter "errorHandler"

    .prologue
    .line 1152
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private releaseCustomFunctions()V
    .locals 4

    .prologue
    .line 1337
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1338
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1339
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1340
    .local v0, function:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->native_releaseCustomFunction(I)V

    .line 1338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1342
    .end local v0           #function:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1343
    monitor-exit v3

    .line 1344
    return-void

    .line 1343
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2621
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_1

    .line 2631
    :cond_0
    :goto_0
    return-void

    .line 2624
    :cond_1
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2625
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2626
    :cond_2
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2627
    :cond_3
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseDbConnection threadid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", releasing # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_4
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->release(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public static native releaseMemory()I
.end method

.method private setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "dbPath"
    .parameter "mode"

    .prologue
    .line 1158
    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA journal_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1166
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting journal_mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed for db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (on pragma set journal_mode, sqlite returned:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setJournalSizeLimit(Ljava/lang/String;J)V
    .locals 5
    .parameter "dbPath"
    .parameter "size"

    .prologue
    .line 3200
    const-wide/16 v2, -0x2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_1

    .line 3212
    :cond_0
    :goto_0
    return-void

    .line 3203
    :cond_1
    const-string v2, ":memory:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_size_limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)J

    move-result-wide v0

    .line 3208
    .local v0, result:J
    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 3209
    const-string v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting journal_size_limit to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed for db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (on pragma set journal_size_limit, sqlite returned:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unlockForced()V
    .locals 2

    .prologue
    .line 559
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 561
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 564
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    .line 565
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 10
    .parameter "checkFullyYielded"
    .parameter "sleepAfterYieldDelay"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 960
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_0

    .line 963
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 964
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 965
    const/4 v4, 0x0

    .line 995
    :goto_0
    return v4

    .line 967
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 968
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 969
    .local v3, transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 970
    if-eqz p1, :cond_1

    .line 971
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 972
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 976
    :cond_1
    cmp-long v4, p2, v8

    if-lez v4, :cond_3

    .line 980
    move-wide v1, p2

    .line 981
    .local v1, remainingDelay:J
    :cond_2
    cmp-long v4, v1, v8

    if-lez v4, :cond_3

    .line 983
    cmp-long v4, v1, v6

    if-gez v4, :cond_4

    move-wide v4, v1

    :goto_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_2
    sub-long/2addr v1, v6

    .line 989
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_2

    .line 994
    .end local v1           #remainingDelay:J
    :cond_3
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 995
    const/4 v4, 0x1

    goto :goto_0

    .restart local v1       #remainingDelay:J
    :cond_4
    move-wide v4, v6

    .line 983
    goto :goto_1

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_2
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 5
    .parameter "name"
    .parameter "numArgs"
    .parameter "function"

    .prologue
    .line 1324
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1325
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1326
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->native_addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)I

    move-result v0

    .line 1327
    .local v0, ref:I
    if-eqz v0, :cond_0

    .line 1329
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCustomFunctions:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    monitor-exit v2

    .line 1334
    return-void

    .line 1331
    :cond_0
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to add custom function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1333
    .end local v0           #ref:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .locals 2
    .parameter "closable"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .locals 7
    .parameter "sql"
    .parameter "compiledStatement"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2249
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2280
    :goto_0
    monitor-exit p0

    return-void

    .line 2253
    :cond_0
    :try_start_1
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    .line 2256
    .local v1, maxCacheSz:I
    :goto_1
    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v5, :cond_6

    .line 2257
    iget-short v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 2261
    .local v2, printWarning:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_6

    .line 2266
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached MAX size for compiled-sql statement cache for database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Use setMaxSqlCacheSize() to increase cachesize. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    .line 2269
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Here are the SQL statements in Cache of database: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2271
    .local v3, s:Ljava/lang/String;
    const-string v4, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sql statement in Cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2249
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #maxCacheSz:I
    .end local v2           #printWarning:Z
    .end local v3           #s:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2253
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    goto/16 :goto_1

    .restart local v1       #maxCacheSz:I
    :cond_3
    move v2, v4

    .line 2257
    goto/16 :goto_2

    :cond_4
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarning:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    if-eq v5, v1, :cond_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    .line 2279
    :cond_6
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v4, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized amIInTransaction()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 888
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 889
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_3

    .line 891
    .local v0, b:Z
    :cond_0
    :goto_1
    const-string v2, "SQLiteDatabase"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    const-string v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amIinTransaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    :cond_1
    monitor-exit p0

    return v0

    .end local v0           #b:Z
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    move-object v1, p0

    .line 888
    goto :goto_0

    .line 889
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_1
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 888
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 615
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 616
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    .prologue
    .line 639
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 640
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .parameter "transactionListener"

    .prologue
    .line 668
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 669
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .parameter "transactionListener"

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 698
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 1191
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1194
    :cond_0
    const-string v0, "SQLiteDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (connection # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1201
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1218
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 1204
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1206
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1207
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V

    .line 1209
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    .line 1210
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_2

    .line 1211
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1212
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    .line 1213
    :cond_4
    :try_start_2
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method closeDatabase()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 1247
    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 1250
    .local v4, handle:I
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteUnfinalizedObjectsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1251
    :catch_0
    move-exception v1

    .line 1252
    .local v1, e:Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 1253
    .local v6, msg:Ljava/lang/String;
    const-string v10, ","

    const/4 v11, 0x2

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 1254
    .local v9, tokens:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1256
    .local v8, stmtId:I
    iget-object v10, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1257
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1258
    .local v3, found:Z
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1259
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1260
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteClosable;

    .line 1261
    .local v7, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v7, :cond_1

    instance-of v10, v7, Landroid/database/sqlite/SQLiteProgram;

    if-eqz v10, :cond_1

    .line 1262
    check-cast v7, Landroid/database/sqlite/SQLiteProgram;

    .end local v7           #program:Landroid/database/sqlite/SQLiteClosable;
    iget-object v0, v7, Landroid/database/sqlite/SQLiteProgram;->mCompiledSql:Landroid/database/sqlite/SQLiteCompiledSql;

    .line 1263
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    iget v10, v0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-ne v10, v8, :cond_1

    .line 1264
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1265
    const/4 v3, 0x1

    goto :goto_1

    .line 1269
    .end local v0           #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    :cond_2
    if-nez v3, :cond_3

    .line 1272
    iget-object v10, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1273
    const-string v10, "SQLiteDatabase"

    const-string/jumbo v11, "this shouldn\'t happen. finalizing the statement now: "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 1276
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeDatabase()V

    goto :goto_0

    .line 1280
    :cond_3
    new-instance v10, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "close() on database: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed due to un-close()d SQL statements: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/sqlite/SQLiteUnfinalizedObjectsException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method closePendingStatements()V
    .locals 5

    .prologue
    .line 2392
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2394
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2409
    :cond_0
    return-void

    .line 2397
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 2399
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2400
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2401
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2402
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2403
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2405
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2406
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2407
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->native_finalize(I)V

    .line 2406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2403
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1491
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method createPoolConnection(S)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .parameter "connectionNum"

    .prologue
    .line 2574
    const-string v1, "SQLiteDatabase"

    const-string v2, "Create pool connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    or-int/lit8 v3, v3, 0x1

    const v4, -0x10000001

    and-int/2addr v3, v4

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v1, v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;S)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2577
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iput-object p0, v0, Landroid/database/sqlite/SQLiteDatabase;->mParentConnObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 2578
    return-object v0
.end method

.method declared-synchronized deallocCachedSqlStatements()V
    .locals 3

    .prologue
    .line 2284
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    .line 2285
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2284
    .end local v0           #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2287
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2288
    monitor-exit p0

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1861
    new-instance v3, Landroid/database/sqlite/SQLiteStatement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WHERE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1869
    .local v3, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 1870
    .local v2, ret:I
    sget-boolean v4, Landroid/database/sqlite/SQLiteDatabase;->ENABLE_SERVO:Z

    if-eqz v4, :cond_0

    .line 1871
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mHookTable:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1873
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->isHookableTable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1874
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1875
    .local v1, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1877
    sget-object v4, Landroid/database/sqlite/SQLiteDatabase;->mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendIntent(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1887
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1881
    return v2

    .line 1861
    .end local v2           #ret:I
    .end local v3           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 1883
    .restart local v3       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_0
    move-exception v0

    .line 1884
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1885
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1887
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v4
.end method

.method public disableWriteAheadLogging()V
    .locals 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2522
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2545
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2547
    return-void

    .line 2525
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseConnectionPool;->close()V

    .line 2528
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sDefaultJournalMode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2545
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public enableWriteAheadLogging()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2462
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2464
    const-string v1, "SQLiteDatabase"

    const-string v2, "Can not to set journal mode for in memory database or read only database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :goto_0
    return v0

    .line 2469
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2471
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2509
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    .line 2473
    goto :goto_0

    .line 2475
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v3, ":memory:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2476
    const-string v1, "SQLiteDatabase"

    const-string v2, "can\'t enable WAL for memory databases."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2509
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 2482
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-eqz v2, :cond_4

    .line 2483
    const-string v1, "SQLiteDatabase"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2484
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has attached databases. can\'t  enable WAL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2509
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0

    .line 2489
    :cond_4
    :try_start_3
    new-instance v0, Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-direct {v0, p0}, Landroid/database/sqlite/DatabaseConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    .line 2490
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, "WAL"

    invoke-direct {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setJournalMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2509
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v1

    .line 2507
    goto :goto_0
.end method

.method public endTransaction()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 753
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 755
    :try_start_0
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_0

    .line 756
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 760
    :goto_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 817
    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 818
    :goto_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 824
    return-void

    .line 758
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 817
    :catchall_0
    move-exception v3

    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 818
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 817
    throw v3

    .line 763
    :cond_1
    const/4 v2, 0x0

    .line 764
    .local v2, savedException:Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 766
    :try_start_3
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v3, :cond_4

    .line 767
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v3}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 776
    :cond_2
    :goto_2
    :try_start_4
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v3, :cond_5

    .line 777
    const-string v3, "COMMIT;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 784
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v3, :cond_3

    .line 787
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 789
    .local v0, canDumpSql:Z
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 790
    const-string v3, "PRAGMA wal_checkpoint;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 792
    :try_start_6
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    .line 795
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v3, :cond_3

    .line 796
    const-string v3, "SQLiteDatabase"

    const-string v4, "PRAGMA wal_Checkpoint done"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 817
    .end local v0           #canDumpSql:Z
    :cond_3
    :goto_3
    iput-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    goto :goto_1

    .line 769
    :cond_4
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v3}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 771
    :catch_0
    move-exception v1

    .line 772
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    .line 773
    const/4 v3, 0x0

    :try_start_8
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    goto :goto_2

    .line 792
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #canDumpSql:Z
    :catchall_1
    move-exception v3

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCanDumpMonitoredSql:Z

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 805
    .end local v0           #canDumpSql:Z
    :cond_5
    :try_start_9
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 806
    if-eqz v2, :cond_3

    .line 807
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_1

    .line 809
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1980
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1981
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2027
    if-nez p2, :cond_0

    .line 2028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2031
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2052
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    const-string v0, "SQLiteDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() was never explicitly called on database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2055
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 2056
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V

    .line 2057
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseCustomFunctions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2062
    return-void

    .line 2060
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finalizeStatementLater(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 2367
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2378
    :goto_0
    return-void

    .line 2371
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2372
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2374
    monitor-exit v1

    goto :goto_0

    .line 2377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2376
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2718
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2752
    :cond_0
    :goto_0
    return-object v0

    .line 2721
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2722
    .local v0, attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbs:Z

    if-nez v2, :cond_2

    .line 2732
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "main"

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2736
    :cond_2
    const/4 v1, 0x0

    .line 2738
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "pragma database_list;"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2739
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2745
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2748
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 2749
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2748
    :cond_3
    throw v2

    :cond_4
    if-eqz v1, :cond_0

    .line 2749
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method declared-synchronized getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;
    .locals 1
    .parameter "sql"

    .prologue
    .line 2295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDatabaseHandle(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "sql"

    .prologue
    .line 2550
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2553
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2567
    .end local p0
    :goto_0
    return-object p0

    .line 2563
    .restart local p0
    :cond_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getParentDbConnObj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_0

    .line 2567
    :cond_1
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_0
.end method

.method getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "sql"

    .prologue
    .line 2590
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2595
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2610
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2602
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->amIInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-eqz v0, :cond_0

    .line 2606
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2607
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2608
    :cond_2
    const-string v0, "SQLiteDatabase"

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseConnectionPool;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPool:Landroid/database/sqlite/DatabaseConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/DatabaseConnectionPool;->get(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_0
.end method

.method declared-synchronized getLastSqlStatement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 4

    .prologue
    .line 1380
    const-string v2, "PRAGMA max_page_count;"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1381
    .local v0, pageCount:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .locals 2

    .prologue
    .line 1409
    const-string v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method getQueuedUpStmtList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2415
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 1361
    const-string v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 1714
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1717
    :goto_0
    return-wide v1

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 11
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1813
    .local v7, sql:Ljava/lang/StringBuilder;
    const-string v9, "INSERT"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    sget-object v9, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v9, v9, p4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    const-string v9, " INTO "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    const/16 v9, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, bindArgs:[Ljava/lang/Object;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v6

    .line 1821
    .local v6, size:I
    :goto_0
    if-lez v6, :cond_4

    .line 1822
    new-array v0, v6, [Ljava/lang/Object;

    .line 1823
    const/4 v3, 0x0

    .line 1824
    .local v3, i:I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1825
    .local v1, colName:Ljava/lang/String;
    if-lez v3, :cond_1

    const-string v9, ","

    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v0, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 1820
    .end local v1           #colName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #size:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1825
    .restart local v1       #colName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #size:I
    :cond_1
    const-string v9, ""

    goto :goto_2

    .line 1829
    .end local v1           #colName:Ljava/lang/String;
    :cond_2
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1830
    const-string v9, " VALUES ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_5

    .line 1832
    if-lez v3, :cond_3

    const-string v9, ",?"

    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1832
    :cond_3
    const-string v9, "?"

    goto :goto_4

    .line 1835
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") VALUES (NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    :cond_5
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1839
    new-instance v8, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1841
    .local v8, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 1846
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1841
    return-wide v9

    .line 1842
    :catch_0
    move-exception v2

    .line 1843
    .local v2, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1844
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    .end local v2           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v9
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 9

    .prologue
    .line 2769
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2770
    const/4 v0, 0x0

    .line 2772
    .local v0, attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 2773
    if-nez v0, :cond_0

    .line 2774
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "databaselist for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " couldn\'t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "be retrieved. probably because the database is closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2777
    :catch_0
    move-exception v1

    .line 2779
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    .restart local v0       #attachedDbs:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "main"

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2782
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 2783
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2784
    .local v3, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2786
    .local v4, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".integrity_check(1);"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 2787
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v5

    .line 2788
    .local v5, rslt:Ljava/lang/String;
    const-string/jumbo v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2790
    const-string v7, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA integrity_check on "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " returned: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2791
    const/4 v6, 0x0

    .line 2794
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2797
    .end local v3           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v5           #rslt:Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .line 2794
    .restart local v3       #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #prog:Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v6

    .restart local v5       #rslt:Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2782
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2797
    .end local v3           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #prog:Landroid/database/sqlite/SQLiteStatement;
    .end local v5           #rslt:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInQueueOfStatementsToBeFinalized(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 2381
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2384
    const/4 v0, 0x1

    .line 2387
    :goto_0
    return v0

    .line 2386
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2387
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mClosedStatementIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized isInStatementCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "sql"

    .prologue
    .line 2340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 2117
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2110
    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lock()V
    .locals 2

    .prologue
    .line 447
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 448
    return-void
.end method

.method lock(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;Z)V

    .line 444
    return-void
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .locals 0
    .parameter "sql"
    .parameter "beginMillis"

    .prologue
    .line 2137
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "table"
    .parameter "deletedTable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1434
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "table"
    .parameter "foreignKey"
    .parameter "updateTable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1450
    return-void
.end method

.method public needUpgrade(I)Z
    .locals 1
    .parameter "newVersion"

    .prologue
    .line 2121
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 402
    :cond_0
    return-void
.end method

.method onCorruption()V
    .locals 2

    .prologue
    .line 430
    const v0, 0x124fc

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 431
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    return-void
.end method

.method onUpdate(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "opcode"
    .parameter "dbName"
    .parameter "tableName"
    .parameter "rowId"

    .prologue
    .line 3109
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteDatabase;->isHookableTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3119
    :goto_0
    return-void

    .line 3113
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3114
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3116
    long-to-int v1, p4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3118
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->mHandler:Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 1608
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1646
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1528
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "cursorFactory"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1568
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1569
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1572
    .local v8, sql:Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v8, p6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 1661
    invoke-virtual {p0, v0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursorFactory"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "editTable"

    .prologue
    .line 1679
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 1680
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1682
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->getDbConnection(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1683
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v2, v1, p2, p4}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    .local v2, driver:Landroid/database/sqlite/SQLiteCursorDriver;
    const/4 v0, 0x0

    .line 1687
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    :try_start_0
    invoke-interface {v2, p1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1691
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1693
    return-object v0

    .line 1687
    .restart local p1
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1691
    .end local p1
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->releaseDbConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method declared-synchronized releaseCompiledSqlObj(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .locals 1
    .parameter "sql"
    .parameter "compiledSql"

    .prologue
    .line 2345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2347
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    :goto_0
    monitor-exit p0

    return-void

    .line 2350
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .locals 1
    .parameter "closable"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"

    .prologue
    .line 1760
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1764
    :goto_0
    return-wide v1

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1786
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized resetTransactionUsingExecSqlFlag()V
    .locals 2

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z

    if-eqz v0, :cond_0

    .line 864
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'commit or end or rollback\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLastSqlStatement(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 2216
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 2218
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 2222
    return-void

    .line 2220
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .parameter "lockingEnabled"

    .prologue
    .line 420
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 421
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 6
    .parameter "cacheSize"

    .prologue
    .line 2313
    monitor-enter p0

    .line 2314
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2315
    .local v2, oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    const/16 v3, 0x64

    if-gt p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 2316
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "expected value between 0 and 100"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2336
    .end local v2           #oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2318
    .restart local v2       #oldCompiledQueries:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/util/LruCache;->maxSize()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 2319
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2322
    :cond_2
    new-instance v3, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v3, p0, p1}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    .line 2330
    if-eqz v2, :cond_3

    .line 2332
    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2333
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Landroid/util/LruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2336
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2337
    return-void
.end method

.method public setMaximumSize(J)J
    .locals 10
    .parameter "numBytes"

    .prologue
    .line 1392
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 1393
    .local v4, pageSize:J
    div-long v2, p1, v4

    .line 1395
    .local v2, numPages:J
    rem-long v6, p1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1396
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 1398
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA max_page_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1400
    .local v0, newPageCount:J
    mul-long v6, v0, v4

    return-wide v6
.end method

.method public setPageSize(J)V
    .locals 2
    .parameter "numBytes"

    .prologue
    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1421
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 836
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 837
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_1

    .line 841
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 845
    return-void
.end method

.method declared-synchronized setTransactionUsingExecSqlFlag()V
    .locals 2

    .prologue
    .line 855
    monitor-enter p0

    :try_start_0
    const-string v0, "SQLiteDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const-string v0, "SQLiteDatabase"

    const-string v1, "found execSQL(\'begin transaction\')"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionUsingExecSql:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    monitor-exit p0

    return-void

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVersion(I)V
    .locals 2
    .parameter "version"

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1372
    return-void
.end method

.method unlock()V
    .locals 4

    .prologue
    .line 535
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 536
    :cond_0
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 538
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 542
    :cond_1
    const/4 v0, 0x0

    .line 543
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_THREAD_LOCK_POINT:Z

    if-eqz v1, :cond_2

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Acquire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handle:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    const-string v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase$DatabaseReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1902
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 13
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1918
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 1919
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Empty values"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1922
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v11, 0x78

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1923
    .local v9, sql:Ljava/lang/StringBuilder;
    const-string v11, "UPDATE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    sget-object v11, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v11, v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    const-string v11, " SET "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v8

    .line 1930
    .local v8, setValuesSize:I
    if-nez p4, :cond_2

    move v2, v8

    .line 1931
    .local v2, bindArgsSize:I
    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 1932
    .local v1, bindArgs:[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1933
    .local v5, i:I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1934
    .local v3, colName:Ljava/lang/String;
    if-lez v5, :cond_3

    const-string v11, ","

    :goto_2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v1, v5

    .line 1937
    const-string v11, "=?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_1

    .line 1930
    .end local v1           #bindArgs:[Ljava/lang/Object;
    .end local v2           #bindArgsSize:I
    .end local v3           #colName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p4

    array-length v11, v0

    add-int v2, v8, v11

    goto :goto_0

    .line 1934
    .restart local v1       #bindArgs:[Ljava/lang/Object;
    .restart local v2       #bindArgsSize:I
    .restart local v3       #colName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_3
    const-string v11, ""

    goto :goto_2

    .line 1939
    .end local v3           #colName:Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_5

    .line 1940
    move v5, v8

    :goto_3
    if-ge v5, v2, :cond_5

    .line 1941
    sub-int v11, v5, v8

    aget-object v11, p4, v11

    aput-object v11, v1, v5

    .line 1940
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1944
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1945
    const-string v11, " WHERE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1946
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    :cond_6
    new-instance v10, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    .local v10, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1956
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1951
    return v11

    .line 1952
    :catch_0
    move-exception v4

    .line 1953
    .local v4, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1954
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1956
    .end local v4           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v11

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v11
.end method

.method verifyDbIsOpen()V
    .locals 3

    .prologue
    .line 2225
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2226
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (conn# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2229
    :cond_0
    return-void
.end method

.method verifyLockOwner()V
    .locals 2

    .prologue
    .line 2232
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 2233
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t have database lock!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_0
    return-void
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 928
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    .prologue
    .line 941
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .parameter "sleepAfterYieldDelay"

    .prologue
    .line 956
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
