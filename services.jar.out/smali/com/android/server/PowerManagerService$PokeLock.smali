.class Lcom/android/server/PowerManagerService$PokeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PokeLock"
.end annotation


# instance fields
.field awakeOnSet:Z

.field binder:Landroid/os/IBinder;

.field pokey:I

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "p"
    .parameter "b"
    .parameter "t"

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/android/server/PowerManagerService$PokeLock;->this$0:Lcom/android/server/PowerManagerService;

    .line 1590
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1591
    iput p2, p0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1592
    iput-object p3, p0, Lcom/android/server/PowerManagerService$PokeLock;->binder:Landroid/os/IBinder;

    .line 1593
    iput-object p4, p0, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    .line 1595
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p3, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    :goto_0
    return-void

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$PokeLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PokeLock;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$PokeLock;->binder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1603
    return-void
.end method
