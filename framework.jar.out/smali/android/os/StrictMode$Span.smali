.class public Landroid/os/StrictMode$Span;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field private final mContainerState:Landroid/os/StrictMode$ThreadSpanState;

.field private mCreateMillis:J

.field private mName:Ljava/lang/String;

.field private mNext:Landroid/os/StrictMode$Span;

.field private mPrev:Landroid/os/StrictMode$Span;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 1831
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    .line 1833
    return-void
.end method

.method constructor <init>(Landroid/os/StrictMode$ThreadSpanState;)V
    .locals 0
    .parameter "threadState"

    .prologue
    .line 1826
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1827
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    .line 1828
    return-void
.end method

.method static synthetic access$1900(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1819
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1819
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/os/StrictMode$Span;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1819
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1819
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Landroid/os/StrictMode$Span;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1819
    iput-wide p1, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    return-wide p1
.end method

.method static synthetic access$2202(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1819
    iput-object p1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/os/StrictMode$Span;->mContainerState:Landroid/os/StrictMode$ThreadSpanState;

    .line 1847
    .local v0, state:Landroid/os/StrictMode$ThreadSpanState;
    monitor-enter v0

    .line 1848
    :try_start_0
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1850
    monitor-exit v0

    .line 1881
    :goto_0
    return-void

    .line 1854
    :cond_0
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_1

    .line 1855
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    iget-object v2, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iput-object v2, v1, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 1857
    :cond_1
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 1858
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iget-object v2, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    iput-object v2, v1, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    .line 1860
    :cond_2
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    if-ne v1, p0, :cond_3

    .line 1861
    iget-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    iput-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 1864
    :cond_3
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 1866
    invoke-static {}, Landroid/os/StrictMode;->access$900()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Span finished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_4
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/StrictMode$Span;->mCreateMillis:J

    .line 1869
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;

    .line 1870
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;

    .line 1871
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 1875
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 1876
    iget-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    iput-object v1, p0, Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;

    .line 1877
    iput-object p0, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1878
    iget v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 1880
    :cond_5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
