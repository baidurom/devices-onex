.class Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$DevicePhoneStateListener;,
        Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_SYSTEM_CRASH:Ljava/lang/String; = "com.android.updater.NOTIFY_SYSTEM_CRASH"

.field private static final FLUSH_CLIENT_INFO_ACTION:Ljava/lang/String; = "com.htc.CLIENT_INFO_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_CLIENT_INFO_INTERVAL:J = 0x0L

.field private static final FLUSH_INFO_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_INFO_INTERVAL:J = 0x0L

.field private static final FLUSH_USAGE_TIME_ACTION:Ljava/lang/String; = "com.htc.USE_TIME_FLUSH"

#the value of this static final field might be set in the static constructor
.field private static final FLUSH_USAGE_TIME_INTERVAL:J = 0x0L

.field private static final LOGHWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogHWInfoTime"

.field private static final LOGINSTALLEDAPP_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogInstalledApp"

.field private static LOGINSTALLEDAPP_INTERVAL:J = 0x0L

.field private static final LOGLOCATIONINFO_ACTION:Ljava/lang/String; = "com.htc.screen_capture_action"

.field private static final LOGSWINFOTIME_ACTION:Ljava/lang/String; = "com.htc.DEVICE_INFO_LogSWInfoTime"

#the value of this static final field might be set in the static constructor
.field private static final MAX_USER_ACTIVITY_DURATION:J = 0x0L

.field private static final MEDIA_RECEIVER_ACTION:Ljava/lang/String; = "com.htc.HtcDeviceInfoManager.MediaReceiver"

.field private static final UPDATE_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 127
    const-wide/16 v3, 0x0

    .local v3, flushInfoIntervalForTest:J
    const-wide/16 v5, 0x0

    .local v5, flushUsageTimeInterval:J
    const-wide/16 v1, 0x0

    .local v1, flushClientInfoInterval:J
    const-wide/16 v7, 0x0

    .line 129
    .local v7, updateInterval:J
    const-string v9, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    :try_start_0
    const-string v9, "htcdeviceinfo.flush_info"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 132
    const-string v9, "htcdeviceinfo.flush_usage_time"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 133
    const-string v9, "htcdeviceinfo.flush_client_info"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 134
    const-string v9, "htcdeviceinfo.update"

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 140
    :cond_0
    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_1

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v3

    :goto_1
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    .line 141
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_2

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v5

    :goto_2
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    .line 142
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_3

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v1

    :goto_3
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    .line 143
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v7

    :goto_4
    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    .line 164
    const-string v9, "persist.deviceinfo.idletime"

    const-wide/32 v10, 0xafc8

    invoke-static {v9, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    .line 173
    const-wide/32 v9, 0x5265c00

    sput-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "HtcDeviceInfoManager"

    const-string v10, "[Parse interval]"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const-wide/32 v9, 0x1b7740

    goto :goto_1

    .line 141
    :cond_2
    const-wide/32 v9, 0x5265c00

    goto :goto_2

    .line 142
    :cond_3
    const-wide/32 v9, 0x240c8400

    goto :goto_3

    .line 143
    :cond_4
    const-wide/32 v9, 0xea60

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 445
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    return-wide v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->UPDATE_INTERVAL:J

    return-wide v0
.end method

.method private static getFirstFlushClientInfoInterval(J)J
    .locals 3
    .parameter "lastTimeOfClientStatLogOutput"

    .prologue
    .line 193
    const-string v0, "getFirstFlushClientInfoInterval"

    sget-wide v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_CLIENT_INFO_INTERVAL:J

    invoke-static {v0, p0, p1, v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstScheduleInterval(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFirstFlushUsageTimeInterval(J)J
    .locals 3
    .parameter "lastTimeOfUseTimeLogOutput"

    .prologue
    .line 197
    const-string v0, "getFirstFlushUsageTimeInterval"

    sget-wide v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_USAGE_TIME_INTERVAL:J

    invoke-static {v0, p0, p1, v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstScheduleInterval(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFirstScheduleInterval(Ljava/lang/String;JJ)J
    .locals 10
    .parameter "subTag"
    .parameter "lastScheduleTime"
    .parameter "defaultInterval"

    .prologue
    .line 201
    const-wide/16 v4, 0x0

    .line 202
    .local v4, nextScheduleInterval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 203
    .local v6, now:J
    const-wide/32 v0, 0x1d4c0

    .line 204
    .local v0, delayWhenBootUp:J
    sub-long v8, v6, p1

    div-long v2, v8, p3

    .line 206
    .local v2, missingUploadCount:J
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-lez v8, :cond_0

    cmp-long v8, p1, v6

    if-lez v8, :cond_1

    .line 207
    :cond_0
    move-wide v4, p3

    .line 216
    :goto_0
    return-wide v4

    .line 208
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 209
    const-wide/32 v4, 0x1d4c0

    goto :goto_0

    .line 211
    :cond_2
    sub-long v8, v6, p1

    rem-long/2addr v8, p3

    sub-long v4, p3, v8

    goto :goto_0
.end method

.method public static registerClientStatsReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10
    .parameter "context"
    .parameter "handler"

    .prologue
    const-wide/16 v8, 0x0

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "com.htc.USE_TIME_FLUSH"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v5, "com.htc.CLIENT_INFO_FLUSH"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    new-instance v5, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v5, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v0, v6, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLastTimeOfClientStatLogOutput()J

    move-result-wide v1

    .line 182
    .local v1, lastTimeOfClientStatLogOutput:J
    const-string v5, "com.htc.CLIENT_INFO_FLUSH"

    invoke-static {v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstFlushClientInfoInterval(J)J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 183
    cmp-long v5, v1, v8

    if-gtz v5, :cond_0

    .line 184
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfClientStatLogOutput(J)V

    .line 186
    :cond_0
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getLastTimeOfUseTimeLogOutput()J

    move-result-wide v3

    .line 187
    .local v3, lastTimeOfUseTimeLogOutput:J
    const-string v5, "com.htc.USE_TIME_FLUSH"

    invoke-static {v3, v4}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->getFirstFlushUsageTimeInterval(J)J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 188
    cmp-long v5, v3, v8

    if-gtz v5, :cond_1

    .line 189
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->getInstance()Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/server/HtcDeviceInfoManager$HtcDeviceInfoPreference;->setLastTimeOfUseTimeLogOutput(J)V

    .line 190
    :cond_1
    return-void
.end method

.method public static registerContentReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V
    .locals 11
    .parameter "context"
    .parameter "handler"
    .parameter "infoOperators"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 259
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V

    .line 260
    .local v1, co:Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$SettingContentObserver;
    const-string v8, "screen_off_timeout"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    const-string v8, "screen_off_timeout"

    sget-wide v9, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-static {v2, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 265
    .local v3, duration:J
    move-object v0, p2

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v0, v5

    .line 266
    .local v7, op:Lcom/htc/server/HtcInfoOperator;
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    .line 267
    invoke-virtual {v7, v3, v4}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    .line 265
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 269
    :cond_0
    sget-wide v8, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->MAX_USER_ACTIVITY_DURATION:J

    invoke-virtual {v7, v8, v9}, Lcom/htc/server/HtcInfoOperator;->setScreenOffTimeout(J)V

    goto :goto_1

    .line 271
    .end local v7           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    return-void
.end method

.method public static registerDebugInfoReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.DEVICE_INFO_FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 227
    const-string v1, "com.htc.DEVICE_INFO_FLUSH"

    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->FLUSH_INFO_INTERVAL:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 228
    return-void
.end method

.method public static registerErrorInfoReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;

    invoke-direct {v1, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ErrorInfoReceiver;-><init>(Landroid/os/Handler;)V

    const-string v2, "com.htc.permission.FEEDBACK_PROTECT"

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 288
    return-void
.end method

.method public static registerExtraUsageReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.DEVICE_INFO_LogInstalledApp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "com.htc.DEVICE_INFO_LogSWInfoTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "com.htc.DEVICE_INFO_LogHWInfoTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "com.htc.screen_capture_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$ExtraUsageReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 281
    const-string v1, "com.htc.DEVICE_INFO_LogInstalledApp"

    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->LOGINSTALLEDAPP_INTERVAL:J

    invoke-static {p0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper;->setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 282
    return-void
.end method

.method public static registerMediaReceiver(Landroid/content/Context;Landroid/os/Handler;[Lcom/htc/server/HtcInfoOperator;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "infoOperators"

    .prologue
    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;

    invoke-direct {v1, p2}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$MediaPlayReceiver;-><init>([Lcom/htc/server/HtcInfoOperator;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method public static registerPhoneReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 231
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 233
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;

    invoke-direct {v1, v0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$1;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 241
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 243
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static registerSystemErrorReceiver(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.updater.NOTIFY_SYSTEM_CRASH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;

    invoke-direct {v1, p0, p1}, Lcom/htc/server/HtcDeviceInfoManager$ReceiverHelper$FlushReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    return-void
.end method

.method public static setupPendingIntent(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .parameter "context"
    .parameter "action"
    .parameter "interval"

    .prologue
    const/4 v6, 0x0

    .line 457
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 458
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, broadcastIntent:Landroid/content/Intent;
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 460
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long v3, p2, v5

    .line 461
    .local v3, triggerTime:J
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 462
    return-void
.end method
