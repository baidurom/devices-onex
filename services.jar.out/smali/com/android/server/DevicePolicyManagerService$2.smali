.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 851
    monitor-enter p0

    .line 856
    :try_start_0
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v9

    .line 857
    .local v9, allowWifi:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 858
    .local v0, allowBT:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v4

    .line 859
    .local v4, allowInterSharing:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v1

    .line 860
    .local v1, allowBrowser:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v7

    .line 861
    .local v7, allowTextMessage:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v6

    .line 863
    .local v6, allowStorageCard:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v2

    .line 864
    .local v2, allowGPS:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v8

    .line 865
    .local v8, allowVzwLBS:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v3

    .line 868
    .local v3, allowGoogleLBS:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v5

    .line 871
    .local v5, allowLTE:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v11, v11, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    .line 873
    .local v10, doProxyCleanup:Z
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v11, v11, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 874
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v11, v11, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v11}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    .line 876
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v11}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked()V

    .line 877
    if-eqz v10, :cond_0

    .line 878
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxy()V
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;)V

    .line 880
    :cond_0
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService;->access$100(Lcom/android/server/DevicePolicyManagerService;)V

    .line 883
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v9, v11, :cond_1

    .line 884
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 886
    :cond_1
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v0, v11, :cond_2

    .line 887
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_BT_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 889
    :cond_2
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v4, v11, :cond_3

    .line 890
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 892
    :cond_3
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v1, v11, :cond_4

    .line 893
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_BROWSER_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 895
    :cond_4
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v7, v11, :cond_5

    .line 896
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_TEXT_MESSAGING_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 898
    :cond_5
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v6, v11, :cond_6

    .line 899
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_STORAGE_CARD_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 902
    :cond_6
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v2, v11, :cond_7

    .line 903
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_GPS_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 905
    :cond_7
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v8, v11, :cond_8

    .line 906
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_VZW_LBS_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 908
    :cond_8
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v3, v11, :cond_9

    .line 909
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_GOOGLE_LBS_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 913
    :cond_9
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v5, v11, :cond_a

    .line 914
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_LTE_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 918
    :cond_a
    monitor-exit p0

    .line 919
    return-void

    .line 918
    .end local v0           #allowBT:I
    .end local v1           #allowBrowser:I
    .end local v2           #allowGPS:I
    .end local v3           #allowGoogleLBS:I
    .end local v4           #allowInterSharing:I
    .end local v5           #allowLTE:I
    .end local v6           #allowStorageCard:I
    .end local v7           #allowTextMessage:I
    .end local v8           #allowVzwLBS:I
    .end local v9           #allowWifi:I
    .end local v10           #doProxyCleanup:Z
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method
