.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 555
    :try_start_0
    invoke-static {}, Lcom/android/server/MountService;->access$700()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 556
    const-string v10, "MountService"

    const-string v11, "Inital ISO while usb connected"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->initISO()I
    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)I

    .line 567
    :goto_0
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :try_start_1
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 569
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 570
    .local v1, count:I
    new-array v10, v1, [Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 571
    .local v6, paths:[Ljava/lang/String;
    new-array v9, v1, [Ljava/lang/String;

    .line 572
    .local v9, states:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 573
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    aget-object v12, v6, v3

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v9, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 559
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #paths:[Ljava/lang/String;
    .end local v9           #states:[Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v10, "MountService"

    const-string v11, "Do not inital ISO while usb connected"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v2

    .line 613
    .local v2, ex:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Boot-time mount exception"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 575
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v9       #states:[Ljava/lang/String;
    :cond_2
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_5

    .line 578
    :try_start_4
    aget-object v5, v6, v3

    .line 579
    .local v5, path:Ljava/lang/String;
    aget-object v8, v9, v3

    .line 581
    .local v8, state:Ljava/lang/String;
    const-string v10, "unmounted"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 582
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v10, v5}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v7

    .line 583
    .local v7, rc:I
    if-eqz v7, :cond_3

    .line 584
    const-string v10, "MountService"

    const-string v11, "Boot-time mount %s failed (%d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 577
    .end local v7           #rc:I
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 575
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #paths:[Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v10

    .line 587
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #states:[Ljava/lang/String;
    :cond_4
    const-string v10, "shared"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 592
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v10, v11, v5, v12, v13}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 598
    .end local v5           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v10}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 599
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 608
    :cond_6
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v10}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 609
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Z)V

    .line 610
    iget-object v10, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v10, v10, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1402(Lcom/android/server/MountService;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2
.end method
