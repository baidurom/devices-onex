.class Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerInitializer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2884
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "kii sqlite hook"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2885
    .local v0, mThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2886
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->access$002(Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;)Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;

    .line 2887
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2882
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2882
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase$HandlerInitializer;-><init>()V

    return-void
.end method
