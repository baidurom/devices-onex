.class Lcom/htc/app/FilePickerUtil;
.super Ljava/lang/Object;
.source "FilePickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;
    }
.end annotation


# static fields
.field static final CloudException_DiskFull:I = -0x8

.field static final CloudException_FileNotFound:I = -0x7

.field static final CloudException_MediaUnMounted:I = -0x9

.field static final CloudException_NoNetwork:I = -0xb

.field static final CloudException_OutOfMemory:I = -0xa

.field static final CloudException_RequestFailed:I = -0x5

.field static final CloudException_UnLink:I = -0x1

.field static final DataSourceType_DROPBOX:I = 0x0

.field static final DataSourceType_EXTERNAL_STORAGE:I = -0x3

.field static final DataSourceType_INTERNAL_STORAGE:I = -0x2

.field static final DataSourceType_LOCAL_ALL:I = -0x9

.field static final DataSourceType_SKYDRIVE:I = 0x1

.field static final DataSourceType_USB:I = -0x4

.field static final ExtStoragePath:Ljava/lang/String; = null

.field static final ExtUsbPath:Ljava/lang/String; = "/mnt/sdcard/usb"

.field static final FragmentTabFavoritesId:Ljava/lang/String; = "Tab_Favorites"

.field static final FragmentTabNoneId:Ljava/lang/String; = "Tab_NoneCarousel"

.field static final FragmentTabRecentId:Ljava/lang/String; = "Tab_Recent"

.field static final FragmentTabTypeId:Ljava/lang/String; = "Tab_Type"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final ITEM_TYPE_TEXT_DROPBOX:I = 0x20403c2

.field static final ITEM_TYPE_TEXT_EXT_SDCARD_STORAGE:I = 0x20403c5

.field static final ITEM_TYPE_TEXT_INTERNAL_STORAGE_PHONE:I = 0x20403d8

.field static final ITEM_TYPE_TEXT_INTERNAL_STORAGE_TABLET:I = 0x20403d7

.field private static final ITEM_TYPE_TEXT_LOCAL_STORAGE:I = 0x20403c1

.field private static final ITEM_TYPE_TEXT_SKYDRIVE:I = 0x20403c3

.field static final ITEM_TYPE_TEXT_USB:I = 0x20403c4

.field static final IntStoragePath:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final IsDrawSeperatorDivider:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnableBottomRound:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnableTopRound:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnabledTranparentBckground:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsSupportExternalStorage:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsSupportInternalStorage:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsTabletDevice:Z = false

.field static final KEY_SELECTION_TYPE:Ljava/lang/String; = "selectionType"

.field static final MULTIPLE_SELECTION:I = 0x1

.field static final SINGLE_SELECTION:I = 0x0

.field static final STORAGE_TYPE_ONLY_EMMC:I = 0x2

.field static final STORAGE_TYPE_ONLY_SD:I = 0x1

.field static final STORAGE_TYPE_PRI_EMMC_SEC_SD:I = 0x3

.field static final STORAGE_TYPE_PRI_SD_SEC_EMMC:I = 0x4

.field static final USB_CONNECTION_DESTINATION_FOLDER_SINGLE_CHOICE_MODE:I = 0x1

.field static final USB_CONNECTION_DISABLED_MODE:I = -0x1

.field static final USB_CONNECTION_SOURCE_MULTI_CHOICE_MODE:I

.field static drawableResId_Folder_Icon:I


# instance fields
.field private ALLOW_FORDER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private drawableResIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActHandler:Landroid/os/Handler;

.field private mCloudExceptionType:I

.field private mContext:Landroid/content/Context;

.field private mDataSourceType:I

.field private mDateFormat:Ljava/lang/String;

.field private mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

.field private mDownloadProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePickerFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

.field private mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mFilter:[Ljava/lang/String;

.field mIsDateSurceTypeDropboxItemUiVisabled:Z

.field mIsDateSurceTypeSkyDriveItemUiVisabled:Z

.field private mIsFilePickerModeEnabled:Z

.field private mIsFolderPickerModeEnabled:Z

.field private mIsOnlyShowCanWriteFolder:Z

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRootPath:Ljava/lang/String;

.field private mSelectedDownloadedBundle:Landroid/os/Bundle;

.field private mSingleCloudServiceModeEnabled:Z

.field private mTimeFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    .line 45
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkSupportInternalStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    .line 46
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkSupportExternalStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    .line 48
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    .line 749
    const v0, 0x2080211

    sput v0, Lcom/htc/app/FilePickerUtil;->drawableResId_Folder_Icon:I

    .line 1346
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableTopRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableTopRound:Z

    .line 1370
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableBottomRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableBottomRound:Z

    .line 1388
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnabledTranparentBckground()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnabledTranparentBckground:Z

    .line 1402
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->shouldDrawSeperatorDivider()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsDrawSeperatorDivider:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 745
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->DEBUG:Z

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    .line 110
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mSingleCloudServiceModeEnabled:Z

    .line 112
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    .line 326
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 590
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 591
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 672
    const/16 v0, -0x9

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    .line 674
    const/4 v0, -0x5

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    .line 692
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/mnt/sdcard/.voicerecorder"

    aput-object v1, v0, v2

    const-string v1, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .line 743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    .line 936
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .line 746
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->initDrawableResIdMap()V

    .line 747
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 827
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->DEBUG:Z

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    .line 110
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mSingleCloudServiceModeEnabled:Z

    .line 112
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    .line 326
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 590
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 591
    iput-boolean v3, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 672
    const/16 v0, -0x9

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    .line 674
    const/4 v0, -0x5

    iput v0, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    .line 692
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/mnt/sdcard/.voicerecorder"

    aput-object v1, v0, v2

    const-string v1, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .line 743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    .line 936
    iput-object v4, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .line 828
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 829
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->initDrawableResIdMap()V

    .line 830
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDateFormat:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mTimeFormat:Ljava/lang/String;

    .line 834
    return-void
.end method

.method static IsEmptyPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, result:Z
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1023
    :cond_0
    const/4 v0, 0x1

    .line 1024
    :cond_1
    return v0
.end method

.method private static checkEnableBottomRound()Z
    .locals 2

    .prologue
    .line 1373
    const/4 v0, 0x1

    .line 1374
    .local v0, isEnableBottomRound:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 1382
    const/4 v0, 0x1

    .line 1385
    :goto_0
    return v0

    .line 1379
    :sswitch_0
    const/4 v0, 0x0

    .line 1380
    goto :goto_0

    .line 1374
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnableTopRound()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1349
    const/4 v0, 0x1

    .line 1350
    .local v0, isEnableTopRound:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    .line 1361
    const/4 v0, 0x1

    .line 1363
    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1367
    .end local v0           #isEnableTopRound:Z
    :cond_0
    :goto_1
    return v0

    .line 1358
    .restart local v0       #isEnableTopRound:Z
    :sswitch_0
    const/4 v0, 0x0

    .line 1359
    goto :goto_0

    .line 1365
    :cond_1
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1366
    goto :goto_1

    .line 1350
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3e -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnabledListViewRoundedCorner()Z
    .locals 3

    .prologue
    .line 1327
    const/4 v0, 0x0

    .line 1328
    .local v0, enabledListViewRoundedCorner:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 1337
    const/4 v0, 0x0

    .line 1339
    :goto_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1340
    const/4 v0, 0x1

    .line 1343
    .end local v0           #enabledListViewRoundedCorner:Z
    :cond_0
    :goto_1
    return v0

    .line 1334
    .restart local v0       #enabledListViewRoundedCorner:Z
    :sswitch_0
    const/4 v0, 0x1

    .line 1335
    goto :goto_0

    .line 1341
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    const/4 v0, 0x0

    goto :goto_1

    .line 1328
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3e -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnabledTranparentBckground()Z
    .locals 2

    .prologue
    .line 1391
    const/4 v0, 0x1

    .line 1392
    .local v0, isEnabledTranparentBckground:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v1, :pswitch_data_0

    .line 1397
    const/4 v0, 0x1

    .line 1399
    :goto_0
    return v0

    .line 1394
    :pswitch_0
    const/4 v0, 0x0

    .line 1395
    goto :goto_0

    .line 1392
    :pswitch_data_0
    .packed-switch 0x8a
        :pswitch_0
    .end packed-switch
.end method

.method static checkNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1453
    const/4 v2, 0x0

    .line 1454
    .local v2, result:Z
    if-eqz p0, :cond_0

    .line 1455
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1457
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1459
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1460
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1461
    const/4 v2, 0x1

    .line 1467
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method static checkStorageType()I
    .locals 1

    .prologue
    .line 1119
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    const/4 v0, 0x3

    .line 1126
    :goto_0
    return v0

    .line 1121
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    const/4 v0, 0x2

    goto :goto_0

    .line 1123
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    const/4 v0, 0x4

    goto :goto_0

    .line 1126
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkSupportExternalStorage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1140
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1141
    .local v1, type:I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1143
    .local v0, supportExternalStorage:Z
    :cond_0
    :goto_0
    return v0

    .line 1141
    .end local v0           #supportExternalStorage:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkSupportInternalStorage()Z
    .locals 3

    .prologue
    .line 1132
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1133
    .local v1, type:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1135
    .local v0, supportInternalStorage:Z
    :goto_0
    return v0

    .line 1133
    .end local v0           #supportInternalStorage:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final getAppListItemMainTitleStringId(IZ)I
    .locals 2
    .parameter "serviceType"
    .parameter "isSignIn"

    .prologue
    .line 635
    const/4 v0, 0x0

    .line 636
    .local v0, result:I
    packed-switch p0, :pswitch_data_0

    .line 667
    :goto_0
    :pswitch_0
    return v0

    .line 638
    :pswitch_1
    const v0, 0x20403c0

    .line 639
    goto :goto_0

    .line 641
    :pswitch_2
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v1, :cond_0

    .line 642
    const v0, 0x20403d7

    goto :goto_0

    .line 644
    :cond_0
    const v0, 0x20403d8

    .line 646
    goto :goto_0

    .line 648
    :pswitch_3
    const v0, 0x20403c5

    .line 649
    goto :goto_0

    .line 651
    :pswitch_4
    if-eqz p1, :cond_1

    .line 652
    const v0, 0x204013b

    goto :goto_0

    .line 654
    :cond_1
    const v0, 0x2040143

    .line 656
    goto :goto_0

    .line 659
    :pswitch_5
    if-eqz p1, :cond_2

    .line 660
    const v0, 0x204013c

    goto :goto_0

    .line 662
    :cond_2
    const v0, 0x2040144

    goto :goto_0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static final getDataSourceTypeText(I)I
    .locals 3
    .parameter "dataSourceType"

    .prologue
    .line 496
    packed-switch p0, :pswitch_data_0

    .line 517
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CloudServiceName not Found!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :pswitch_1
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v1, :cond_0

    .line 499
    const v0, 0x20403d7

    .line 520
    .local v0, result:I
    :goto_0
    return v0

    .line 501
    .end local v0           #result:I
    :cond_0
    const v0, 0x20403d8

    .line 503
    .restart local v0       #result:I
    goto :goto_0

    .line 505
    .end local v0           #result:I
    :pswitch_2
    const v0, 0x20403c4

    .line 506
    .restart local v0       #result:I
    goto :goto_0

    .line 508
    .end local v0           #result:I
    :pswitch_3
    const v0, 0x20403c5

    .line 509
    .restart local v0       #result:I
    goto :goto_0

    .line 511
    .end local v0           #result:I
    :pswitch_4
    const v0, 0x20403c2

    .line 512
    .restart local v0       #result:I
    goto :goto_0

    .line 514
    .end local v0           #result:I
    :pswitch_5
    const v0, 0x20403c3

    .line 515
    .restart local v0       #result:I
    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1166
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v0

    .line 1168
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1178
    :goto_0
    return-object v1

    .line 1171
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1173
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1174
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1176
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1178
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1256
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1257
    .local v1, type:I
    const-string v0, "removed"

    .line 1259
    .local v0, state:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1260
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1267
    :cond_0
    :goto_0
    return-object v0

    .line 1261
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1262
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1263
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1264
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getInternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1148
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v0

    .line 1150
    .local v0, type:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1160
    :goto_0
    return-object v1

    .line 1153
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1156
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1158
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1160
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getInternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1240
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1241
    .local v1, type:I
    const-string v0, "removed"

    .line 1243
    .local v0, state:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1244
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1251
    :cond_0
    :goto_0
    return-object v0

    .line 1245
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1246
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1247
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1248
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static final getItemTypeTextByDateSource(I)I
    .locals 2
    .parameter "dataSourceType"

    .prologue
    .line 525
    packed-switch p0, :pswitch_data_0

    .line 546
    :pswitch_0
    const/16 v0, -0xa

    .line 551
    .local v0, result:I
    :goto_0
    return v0

    .line 527
    .end local v0           #result:I
    :pswitch_1
    const v0, 0x20403c1

    .line 528
    .restart local v0       #result:I
    goto :goto_0

    .line 530
    .end local v0           #result:I
    :pswitch_2
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v1, :cond_0

    .line 531
    const v0, 0x20403d7

    .restart local v0       #result:I
    goto :goto_0

    .line 533
    .end local v0           #result:I
    :cond_0
    const v0, 0x20403d8

    .line 535
    .restart local v0       #result:I
    goto :goto_0

    .line 537
    .end local v0           #result:I
    :pswitch_3
    const v0, 0x20403c5

    .line 538
    .restart local v0       #result:I
    goto :goto_0

    .line 540
    .end local v0           #result:I
    :pswitch_4
    const v0, 0x20403c2

    .line 541
    .restart local v0       #result:I
    goto :goto_0

    .line 543
    .end local v0           #result:I
    :pswitch_5
    const v0, 0x20403c3

    .line 544
    .restart local v0       #result:I
    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static final getLocalDefaultDateSourceType()I
    .locals 2

    .prologue
    .line 573
    const/16 v0, -0x9

    .line 574
    .local v0, result:I
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_0

    .line 575
    const/16 v0, -0x9

    .line 583
    :goto_0
    return v0

    .line 576
    :cond_0
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-nez v1, :cond_1

    .line 577
    const/4 v0, -0x2

    goto :goto_0

    .line 578
    :cond_1
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_2

    .line 579
    const/4 v0, -0x3

    goto :goto_0

    .line 581
    :cond_2
    const/16 v0, -0x9

    goto :goto_0
.end method

.method static final getLocalItemType(Ljava/lang/String;)I
    .locals 2
    .parameter "filePath"

    .prologue
    .line 555
    const v0, 0x20403c5

    .line 556
    .local v0, result:I
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_2

    .line 557
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    const/4 v0, -0x3

    .line 569
    :cond_0
    :goto_0
    return v0

    .line 559
    :cond_1
    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const/4 v0, -0x2

    goto :goto_0

    .line 562
    :cond_2
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-nez v1, :cond_3

    .line 563
    const/4 v0, -0x2

    goto :goto_0

    .line 564
    :cond_3
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_4

    .line 565
    const/4 v0, -0x3

    goto :goto_0

    .line 567
    :cond_4
    const/4 v0, -0x3

    goto :goto_0
.end method

.method static getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 1445
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1446
    .local v1, result:Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1447
    .local v0, lastIndexOf:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1448
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1449
    :cond_0
    return-object v1
.end method

.method static getScanningPathByDataType(I)[Ljava/lang/String;
    .locals 6
    .parameter "dataType"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1271
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkStorageType()I

    move-result v1

    .line 1272
    .local v1, type:I
    const/4 v0, 0x0

    .line 1274
    .local v0, rootPath:[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1320
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataSourceType() not Found!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1288
    :pswitch_1
    if-ne v1, v3, :cond_1

    .line 1289
    new-array v0, v3, [Ljava/lang/String;

    .line 1290
    sget-object v2, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1323
    :cond_0
    :goto_0
    return-object v0

    .line 1291
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1292
    new-array v0, v3, [Ljava/lang/String;

    .line 1293
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1294
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1295
    new-array v0, v3, [Ljava/lang/String;

    .line 1296
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1297
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1298
    new-array v0, v5, [Ljava/lang/String;

    .line 1299
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1300
    sget-object v2, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    aput-object v2, v0, v3

    goto :goto_0

    .line 1304
    :pswitch_2
    new-array v0, v3, [Ljava/lang/String;

    .line 1305
    sget-object v2, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1308
    :pswitch_3
    new-array v0, v3, [Ljava/lang/String;

    .line 1309
    sget-object v2, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1312
    :pswitch_4
    new-array v0, v3, [Ljava/lang/String;

    .line 1313
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1316
    :pswitch_5
    new-array v0, v3, [Ljava/lang/String;

    .line 1317
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v0, v4

    goto :goto_0

    .line 1274
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static getSortSelectedItemId(II)I
    .locals 2
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, result:I
    if-nez p0, :cond_2

    .line 77
    if-nez p1, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 83
    if-nez p1, :cond_3

    .line 84
    const/4 v0, 0x2

    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private initDrawableResIdMap()V
    .locals 25

    .prologue
    .line 755
    const v9, 0x20801fb

    .line 757
    .local v9, drawableResId_MsWord_Icon:I
    const v7, 0x2080210

    .line 759
    .local v7, drawableResId_MsExcel_Icon:I
    const v8, 0x2080209

    .line 761
    .local v8, drawableResId_MsPowerPoint_Icon:I
    const v10, 0x2080208

    .line 763
    .local v10, drawableResId_PDF_Icon:I
    const v11, 0x20800d2

    .line 765
    .local v11, drawableResId_Photo_Icon:I
    const v4, 0x20801f6

    .line 767
    .local v4, drawableResId_Audio_Icon:I
    const v13, 0x20800d3

    .line 769
    .local v13, drawableResId_Video_Icon:I
    const v6, 0x2080202

    .line 771
    .local v6, drawableResId_Html_Icon:I
    const v12, 0x20800d0

    .line 773
    .local v12, drawableResId_TextFile_Icon:I
    const v5, 0x20801fc

    .line 776
    .local v5, drawableResId_DrmFile_Icon:I
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "doc"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "docx"

    aput-object v24, v22, v23

    .line 778
    .local v22, wordArray:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v15, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string/jumbo v24, "xls"

    aput-object v24, v15, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "xlsx"

    aput-object v24, v15, v23

    .line 780
    .local v15, excelArray:[Ljava/lang/String;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v23, 0x0

    const-string v24, "ppt"

    aput-object v24, v19, v23

    const/16 v23, 0x1

    const-string v24, "pptx"

    aput-object v24, v19, v23

    const/16 v23, 0x2

    const-string v24, "pot"

    aput-object v24, v19, v23

    const/16 v23, 0x3

    const-string v24, "pps"

    aput-object v24, v19, v23

    .line 782
    .local v19, pptArray:[Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "pdf"

    aput-object v24, v17, v23

    .line 784
    .local v17, pdfArray:[Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v23, 0x0

    const-string v24, "jpg"

    aput-object v24, v18, v23

    const/16 v23, 0x1

    const-string v24, "jpeg"

    aput-object v24, v18, v23

    const/16 v23, 0x2

    const-string v24, "gif"

    aput-object v24, v18, v23

    const/16 v23, 0x3

    const-string v24, "bmp"

    aput-object v24, v18, v23

    const/16 v23, 0x4

    const-string v24, "png"

    aput-object v24, v18, v23

    const/16 v23, 0x5

    const-string v24, "svg"

    aput-object v24, v18, v23

    const/16 v23, 0x6

    const-string v24, "svgz"

    aput-object v24, v18, v23

    .line 786
    .local v18, photoArray:[Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v3, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "amr"

    aput-object v24, v3, v23

    const/16 v23, 0x1

    const-string v24, "mp3"

    aput-object v24, v3, v23

    const/16 v23, 0x2

    const-string v24, "mid"

    aput-object v24, v3, v23

    const/16 v23, 0x3

    const-string v24, "aac"

    aput-object v24, v3, v23

    const/16 v23, 0x4

    const-string v24, "3gp"

    aput-object v24, v3, v23

    const/16 v23, 0x5

    const-string v24, "m4a"

    aput-object v24, v3, v23

    const/16 v23, 0x6

    const-string v24, "mp4"

    aput-object v24, v3, v23

    .line 788
    .local v3, audioArray:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const-string v24, "mp4"

    aput-object v24, v21, v23

    const/16 v23, 0x1

    const-string v24, "3gp"

    aput-object v24, v21, v23

    .line 790
    .local v21, videoArray:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v23, 0x0

    const-string v24, "htm"

    aput-object v24, v16, v23

    const/16 v23, 0x1

    const-string v24, "html"

    aput-object v24, v16, v23

    .line 792
    .local v16, htmlArray:[Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    const-string v24, "txt"

    aput-object v24, v20, v23

    const/16 v23, 0x1

    const-string v24, "vcf"

    aput-object v24, v20, v23

    const/16 v23, 0x2

    const-string v24, "vcs"

    aput-object v24, v20, v23

    const/16 v23, 0x3

    const-string v24, "vmg"

    aput-object v24, v20, v23

    const/16 v23, 0x4

    const-string v24, "vbm"

    aput-object v24, v20, v23

    const/16 v23, 0x5

    const-string v24, "url"

    aput-object v24, v20, v23

    const/16 v23, 0x6

    const-string v24, "vnt"

    aput-object v24, v20, v23

    .line 794
    .local v20, textArray:[Ljava/lang/String;
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v14, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "dcf"

    aput-object v24, v14, v23

    const/16 v23, 0x1

    const-string v24, "drc"

    aput-object v24, v14, v23

    const/16 v23, 0x2

    const-string v24, "dr"

    aput-object v24, v14, v23

    const/16 v23, 0x3

    const-string v24, "dm"

    aput-object v24, v14, v23

    const/16 v23, 0x4

    const-string v24, "dd"

    aput-object v24, v14, v23

    .line 796
    .local v14, drmArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v9, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7, v15}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v3}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v13, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5, v14}, Lcom/htc/app/FilePickerUtil;->putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method private is24Hour()Z
    .locals 2

    .prologue
    .line 1067
    const-string v0, "24"

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isCloudDataSourceType(I)Z
    .locals 1
    .parameter "dataSourceType"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, isCloudItem:Z
    packed-switch p0, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    return v0

    .line 230
    :pswitch_1
    const/4 v0, 0x1

    .line 231
    goto :goto_0

    .line 236
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isExternalStorageAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1217
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1220
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1224
    :cond_1
    return v1
.end method

.method static isExternalStorageShared()Z
    .locals 2

    .prologue
    .line 1195
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1198
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1201
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isInternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 1206
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1209
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1212
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isInternalStorageShared()Z
    .locals 2

    .prologue
    .line 1184
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1187
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1190
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isLocalDataSourceType(I)Z
    .locals 1
    .parameter "dataSourceType"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, isLocalItem:Z
    packed-switch p0, :pswitch_data_0

    .line 257
    :goto_0
    :pswitch_0
    return v0

    .line 250
    :pswitch_1
    const/4 v0, 0x1

    .line 251
    goto :goto_0

    .line 254
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .parameter "cal1"
    .parameter "cal2"

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 867
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 868
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dates must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 856
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 857
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The dates must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 860
    .local v0, cal1:Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 861
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 862
    .local v1, cal2:Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 863
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method static isToday(Ljava/util/Calendar;)Z
    .locals 1
    .parameter "cal"

    .prologue
    .line 852
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/app/FilePickerUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static isToday(Ljava/util/Date;)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 848
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/app/FilePickerUtil;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method private putDrawableResIdMap(Ljava/util/HashMap;I[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "drawableResId"
    .parameter "extensionArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 813
    .local p1, targetDrawableResIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    .line 814
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 815
    .local v1, extension:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method static setMoreExpandNoFileFoundText(Landroid/widget/TextView;ILandroid/content/Context;)V
    .locals 5
    .parameter "emptyView"
    .parameter "dataSourceType"
    .parameter "context"

    .prologue
    const v4, 0x2040159

    const v3, 0x2040149

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, noFileFoundText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 124
    .local v0, isNetworkConnected:Z
    packed-switch p1, :pswitch_data_0

    .line 162
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    return-void

    .line 126
    :pswitch_1
    invoke-static {p2}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    .line 127
    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    goto :goto_0

    .line 137
    :pswitch_2
    invoke-static {p2}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    .line 138
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    goto :goto_0

    .line 148
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_5
    sget-boolean v2, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static shouldDrawSeperatorDivider()Z
    .locals 2

    .prologue
    .line 1405
    const/4 v0, 0x1

    .line 1406
    .local v0, shouldDrawSeperatorDivider:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 1414
    const/4 v0, 0x1

    .line 1417
    :goto_0
    return v0

    .line 1411
    :sswitch_0
    const/4 v0, 0x0

    .line 1412
    goto :goto_0

    .line 1406
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method IsSDcardPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 880
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    const/4 v0, 0x1

    .line 884
    :cond_0
    return v0
.end method

.method IsUsbPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 892
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    .line 893
    const-string v1, "/mnt/sdcard/usb"

    if-eqz v1, :cond_0

    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    const/4 v0, 0x1

    .line 899
    :cond_0
    return v0
.end method

.method cancelDownloadDialog()V
    .locals 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->removeDownloadAllCloudIds()V

    .line 1573
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDownloadOnProgressListener()Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDownloadOnProgressListener()Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->cancelToDownload(Z)V

    .line 1577
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerUtil;->setSelectedDownloadedBundle(Landroid/os/Bundle;)V

    .line 1578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerUtil;->setProgressDialogProgressValue(I)V

    .line 1579
    return-void
.end method

.method checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1030
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1032
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsUsbPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1034
    const/4 v0, 0x1

    .line 1039
    :cond_1
    return v0
.end method

.method checkFileCanScan(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 907
    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v0

    .line 916
    :cond_0
    :goto_0
    return v0

    .line 909
    :cond_1
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    goto :goto_0

    .line 911
    :cond_2
    const-string v1, "/mnt/sdcard/usb"

    if-eqz v1, :cond_0

    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->isUsbStorageAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method checkLocalFileDataType(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 920
    const/4 v0, -0x3

    .line 921
    .local v0, dataType:I
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 922
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 924
    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    const/4 v0, -0x2

    .line 933
    :cond_0
    :goto_0
    return v0

    .line 926
    :cond_1
    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/app/FilePickerUtil;->ExtStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 927
    const/4 v0, -0x3

    goto :goto_0

    .line 928
    :cond_2
    const-string v1, "/mnt/sdcard/usb"

    if-eqz v1, :cond_0

    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    const/4 v0, -0x4

    goto :goto_0
.end method

.method checkToShowItem(I)Z
    .locals 6
    .parameter "itemTypeId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, -0x4

    .line 1471
    const/4 v0, 0x0

    .line 1472
    .local v0, show:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-nez v1, :cond_1

    .line 1473
    if-nez p1, :cond_0

    .line 1474
    const/4 v0, 0x1

    .line 1506
    :cond_0
    :goto_0
    return v0

    .line 1476
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1477
    if-ne p1, v5, :cond_0

    .line 1478
    const/4 v0, 0x1

    goto :goto_0

    .line 1480
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1481
    if-ne p1, v4, :cond_0

    .line 1482
    const/4 v0, 0x1

    goto :goto_0

    .line 1484
    :cond_3
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1485
    if-ne p1, v3, :cond_0

    .line 1486
    const/4 v0, 0x1

    goto :goto_0

    .line 1488
    :cond_4
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 1489
    if-ne p1, v2, :cond_0

    .line 1490
    const/4 v0, 0x1

    goto :goto_0

    .line 1492
    :cond_5
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    const/16 v2, -0x9

    if-ne v1, v2, :cond_6

    .line 1493
    packed-switch p1, :pswitch_data_0

    .line 1500
    const/4 v0, 0x0

    .line 1501
    goto :goto_0

    .line 1497
    :pswitch_0
    const/4 v0, 0x1

    .line 1498
    goto :goto_0

    .line 1504
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1493
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1421
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    .line 1422
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 1423
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilePickerFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;

    .line 1424
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1425
    return-void
.end method

.method containExtension(Ljava/lang/String;)Z
    .locals 8
    .parameter "filename"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 947
    if-nez p1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v4

    .line 949
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_0

    .line 951
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->isContainDM(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->isFilePickerModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 955
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    if-nez v6, :cond_2

    move v4, v5

    .line 956
    goto :goto_0

    .line 958
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 959
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 960
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 961
    goto :goto_0

    .line 959
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 364
    :cond_0
    return-void
.end method

.method existsDownloadList(J)Z
    .locals 6
    .parameter "cloudId"

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, result:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 304
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 305
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 308
    .local v1, key:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 309
    const/4 v2, 0x1

    goto :goto_0

    .line 313
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Long;
    .end local v3           #set:Ljava/util/Set;
    :cond_1
    return v2
.end method

.method formatInt(I)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 1103
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1106
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mActHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getAvailableFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 981
    const-string v3, ""

    .line 982
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, dirs:[Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v4, v3

    .line 994
    .end local v3           #result:Ljava/lang/String;
    .local v4, result:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 985
    .end local v4           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 986
    new-instance v1, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 987
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 985
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 992
    .end local v1           #folder:Ljava/io/File;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 993
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object v4, v3

    .line 994
    .end local v3           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method getCloudExceptionType()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDataSourceType()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    return v0
.end method

.method getDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    sget-object v0, Lcom/htc/app/FilePickerUtil;->IntStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method getDownloadOnProgressListener()Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    return-object v0
.end method

.method getDownloadProgerss(J)I
    .locals 3
    .parameter "cloudId"

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, progress:I
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    return v0
.end method

.method getFileTypeImage(Ljava/lang/String;)I
    .locals 9
    .parameter "fileName"

    .prologue
    .line 696
    const v0, 0x20800d0

    .line 701
    .local v0, drawableResId_UnknowFileType:I
    move v4, v0

    .line 702
    .local v4, resultImgId:I
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, extension:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v5, v4

    .line 719
    .end local v4           #resultImgId:I
    .local v5, resultImgId:I
    :goto_0
    return v5

    .line 707
    .end local v5           #resultImgId:I
    .restart local v4       #resultImgId:I
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v5, v4

    .line 708
    .end local v4           #resultImgId:I
    .restart local v5       #resultImgId:I
    goto :goto_0

    .line 710
    .end local v5           #resultImgId:I
    .restart local v4       #resultImgId:I
    :cond_3
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->drawableResIdMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 711
    .local v6, set:Ljava/util/Set;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 712
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 713
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 714
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, v4

    .line 715
    .end local v4           #resultImgId:I
    .restart local v5       #resultImgId:I
    goto :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5           #resultImgId:I
    .restart local v4       #resultImgId:I
    :cond_5
    move v5, v4

    .line 719
    .end local v4           #resultImgId:I
    .restart local v5       #resultImgId:I
    goto :goto_0
.end method

.method getFilter()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    return-object v0
.end method

.method getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 3
    .parameter "filedate"

    .prologue
    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, timeFormat:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    const-string v0, " kk:mm"

    .line 1084
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDateFormat:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1082
    :cond_0
    const-string v0, " h:mm a"

    goto :goto_0
.end method

.method getFormatedTime(J)Ljava/lang/String;
    .locals 3
    .parameter "current"

    .prologue
    .line 1092
    const/4 v1, 0x0

    .line 1093
    .local v1, timeFormat:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->is24Hour()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    const-string v1, "kk:mm"

    .line 1098
    :goto_0
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 1099
    .local v0, FileDate:Ljava/sql/Date;
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1096
    .end local v0           #FileDate:Ljava/sql/Date;
    :cond_0
    const-string v1, "h:mm a"

    goto :goto_0
.end method

.method getPathArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 999
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return-object v0

    .line 1001
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, dirs:[Ljava/lang/String;
    goto :goto_0
.end method

.method getProgressDialog(Landroid/app/Activity;)Lcom/htc/app/HtcProgressDialog;
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 335
    new-instance v0, Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;

    invoke-direct {v0, p0, p1}, Lcom/htc/app/FilePickerUtil$DownloadProgressDialog;-><init>(Lcom/htc/app/FilePickerUtil;Landroid/content/Context;)V

    .line 336
    .local v0, htcProgressDialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x20403c8

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 338
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 340
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 341
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/app/FilePickerUtil$1;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerUtil$1;-><init>(Lcom/htc/app/FilePickerUtil;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 348
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 349
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 351
    .end local v0           #htcProgressDialog:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v1
.end method

.method getSelectedDownloadedBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mSelectedDownloadedBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method getSimplifiedChinesePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filePath"

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x7

    .line 1428
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1429
    .local v1, mRes:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1430
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v2, "/sdcard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    const-string p1, "/\u5b58\u50a8\u5361"

    .line 1441
    :cond_0
    :goto_0
    return-object p1

    .line 1433
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    const-string v2, "/sdcard/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/\u5b58\u50a8\u5361/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1435
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_3

    const-string v2, "/mnt/sdcard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1436
    const-string p1, "/mnt/\u5b58\u50a8\u5361"

    goto :goto_0

    .line 1437
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    const-string v2, "/mnt/sdcard/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/\u5b58\u50a8\u5361/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method getSizeString(J)Ljava/lang/String;
    .locals 6
    .parameter "fileSize"

    .prologue
    const/high16 v5, 0x4480

    const/high16 v4, 0x42c8

    .line 408
    long-to-float v0, p1

    .line 409
    .local v0, size:F
    const-string v1, ""

    .line 410
    .local v1, unitStr:Ljava/lang/String;
    cmpg-float v2, v0, v5

    if-gez v2, :cond_0

    .line 411
    const-string v1, " Bytes"

    .line 431
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    :goto_1
    return-object v2

    .line 413
    :cond_0
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 414
    cmpg-float v2, v0, v5

    if-gez v2, :cond_1

    .line 415
    const-string v1, " KB"

    goto :goto_0

    .line 417
    :cond_1
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 418
    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    .line 419
    const-string v1, " MB"

    goto :goto_0

    .line 421
    :cond_2
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 422
    cmpg-float v2, v0, v5

    if-gez v2, :cond_3

    .line 423
    const-string v1, " GB"

    goto :goto_0

    .line 425
    :cond_3
    div-float v2, v0, v5

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v2, v4

    .line 426
    const-string v1, " TB"

    goto :goto_0

    .line 434
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method isAllowForder(Ljava/lang/String;)Z
    .locals 5
    .parameter "forderName"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1058
    .local v3, path:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1059
    const/4 v4, 0x1

    .line 1061
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return v4

    .line 1057
    .restart local v3       #path:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1061
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isContainDM(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 1044
    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1046
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1048
    const-string v0, ".dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    const/4 v0, 0x1

    .line 1053
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDateSurceTypeItemUiVisabled(I)Z
    .locals 2
    .parameter "serviceType"

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, result:Z
    packed-switch p1, :pswitch_data_0

    .line 628
    :pswitch_0
    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    .line 613
    :pswitch_1
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 614
    :goto_1
    goto :goto_0

    .line 613
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 616
    :pswitch_2
    sget-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    .line 617
    goto :goto_0

    .line 619
    :pswitch_3
    sget-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportExternalStorage:Z

    .line 620
    goto :goto_0

    .line 622
    :pswitch_4
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 623
    goto :goto_0

    .line 625
    :pswitch_5
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 626
    goto :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isFilePickerModeEnabled()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    return v0
.end method

.method public isFolderPickerModeEnabled()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    return v0
.end method

.method isNetworkAllowed(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1510
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1512
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1513
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 1514
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload block due to no active network."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :goto_0
    return v5

    .line 1517
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1518
    .local v4, type:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 1519
    .local v3, subType:I
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTypeName():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getType(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getSubtype: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAvailable():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAvailable():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnected():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isConnectedOrConnecting():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRoaming():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "All:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1530
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload block due to roaming."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1536
    :cond_1
    if-nez v4, :cond_3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    const/4 v7, 0x7

    if-eq v3, v7, :cond_2

    const/4 v7, 0x4

    if-ne v3, v7, :cond_3

    .line 1540
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[2G] upload block because network type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1545
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_4

    .line 1546
    iget-object v5, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload by USBNET."

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1547
    goto/16 :goto_0

    .line 1551
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "htc_error_report_prefer_network"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1553
    .local v2, preferNetwork:I
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferNetwork="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    if-nez v2, :cond_5

    move v5, v6

    .line 1555
    goto/16 :goto_0

    .line 1556
    :cond_5
    if-ne v2, v6, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_6

    move v5, v6

    .line 1557
    goto/16 :goto_0

    .line 1559
    :cond_6
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->TAG:Ljava/lang/String;

    const-string v7, "Upload block due to wifi only."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isOnlyShowCanWriteFolder()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    return v0
.end method

.method public isSingleCloudServiceModeEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mSingleCloudServiceModeEnabled:Z

    return v0
.end method

.method isUsbStorageAvailable()Z
    .locals 2

    .prologue
    .line 1229
    invoke-static {}, Landroid/os/Environment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1232
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1235
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyToDoTaskEvent(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getActHandler()Landroid/os/Handler;

    move-result-object v0

    .line 283
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    :cond_0
    return-void
.end method

.method removeDownloadAllCloudIds()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 467
    monitor-exit v1

    .line 469
    :cond_0
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeDownloadCloudId(J)V
    .locals 8
    .parameter "cloudId"

    .prologue
    .line 443
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 445
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 446
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 447
    .local v0, i:Ljava/util/Iterator;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 448
    .local v5, targetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 450
    .local v2, key:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 451
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v2           #key:Ljava/lang/Long;
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 456
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 457
    .local v4, target:Ljava/lang/Long;
    iget-object v6, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 459
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #target:Ljava/lang/Long;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #set:Ljava/util/Set;
    .end local v5           #targetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    return-void
.end method

.method public setActHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "actHandler"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mActHandler:Landroid/os/Handler;

    .line 278
    return-void
.end method

.method setCloudExceptionType(I)V
    .locals 0
    .parameter "cloudExceptionType"

    .prologue
    .line 689
    iput p1, p0, Lcom/htc/app/FilePickerUtil;->mCloudExceptionType:I

    .line 690
    return-void
.end method

.method setDataSourceType(I)V
    .locals 0
    .parameter "dataSourceType"

    .prologue
    .line 681
    iput p1, p0, Lcom/htc/app/FilePickerUtil;->mDataSourceType:I

    .line 682
    return-void
.end method

.method setDownloadOnProgressListener(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)V
    .locals 2
    .parameter "downloadOnProgressListener"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->cancelToDownload(Z)V

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mDownloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    .line 102
    return-void
.end method

.method setDownloadProgerss(JI)V
    .locals 3
    .parameter "cloudId"
    .parameter "downloadProgerss"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public setFilePickerModeEnabled(Z)V
    .locals 0
    .parameter "isFilePickerModeEnabled"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/app/FilePickerUtil;->mIsFilePickerModeEnabled:Z

    .line 185
    return-void
.end method

.method setFilter([Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 943
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mFilter:[Ljava/lang/String;

    .line 944
    return-void
.end method

.method public setFolderPickerModeEnabled(Z)V
    .locals 0
    .parameter "isFolderPickerModeEnabled"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/htc/app/FilePickerUtil;->mIsFolderPickerModeEnabled:Z

    .line 209
    return-void
.end method

.method public setOnlyShowCanWriteFolder(Z)V
    .locals 0
    .parameter "isOnlyShowCanWriteFolder"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/htc/app/FilePickerUtil;->mIsOnlyShowCanWriteFolder:Z

    .line 299
    return-void
.end method

.method setProgressDialogMessage(JI)V
    .locals 8
    .parameter "size"
    .parameter "progress"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 391
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 395
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v4, :cond_0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, maxSize:Ljava/lang/String;
    int-to-long v4, p3

    mul-long/2addr v4, p1

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, currentSize:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, format:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 402
    .end local v1           #currentSize:Ljava/lang/String;
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #maxSize:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/htc/app/FilePickerUtil;->setProgressDialogProgressValue(I)V

    .line 405
    :cond_1
    return-void
.end method

.method setProgressDialogMessage(Ljava/lang/String;JLandroid/app/Activity;)V
    .locals 9
    .parameter "fileName"
    .parameter "size"
    .parameter "activity"

    .prologue
    .line 367
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v7, :cond_0

    .line 368
    invoke-virtual {p0, p4}, Lcom/htc/app/FilePickerUtil;->getProgressDialog(Landroid/app/Activity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 370
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20403d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, fileNameTitle:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20403d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, sizeTitle:Ljava/lang/String;
    invoke-virtual {p0, p2, p3}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, maxSize:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v7, :cond_1

    .line 381
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7, v5}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 382
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/app/FilePickerUtil;->getSizeString(J)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, currentSize:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, format:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 387
    .end local v1           #currentSize:Ljava/lang/String;
    .end local v2           #fileNameTitle:Ljava/lang/String;
    .end local v3           #format:Ljava/lang/String;
    .end local v4           #maxSize:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #sizeTitle:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method setProgressDialogProgressValue(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 358
    :cond_0
    return-void
.end method

.method setSelectedDownloadedBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mSelectedDownloadedBundle:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method showDateSurceTypeCloudItemUiVisabled(I)V
    .locals 2
    .parameter "serviceType"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    .line 595
    iput-boolean v0, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 604
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid argument for the service name of HtcCloudService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 607
    :goto_0
    return-void

    .line 598
    :pswitch_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeDropboxItemUiVisabled:Z

    goto :goto_0

    .line 601
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/app/FilePickerUtil;->mIsDateSurceTypeSkyDriveItemUiVisabled:Z

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
