.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_NUM_DATA_STATE_READS:I = 0xf

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_OFFLINE_ALARM:Z = false

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field static final mChinaOpList:Ljava/util/ArrayList;

.field static final mNeedAppendixOpList:Ljava/util/ArrayList;


# instance fields
.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private gprsState:I

.field private isFirstNetworkStateChange:Z

.field lteCqi:I

.field lteRsrp:I

.field lteRsrq:I

.field lteRssnr:I

.field lteSignalStrength:I

.field private m2gWithDTM:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mCFUFlag:Z

.field private mCgregChange:Z

.field private mCregChange:Z

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mFirstNitzGetAfterRadioOn:Z

.field mFlightModeBootup:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHtcContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSIMRecordsLoaded:Z

.field private mLocale:Ljava/util/Locale;

.field private mMMRejectCause:I

.field private mMaxDataCalls:I

.field private mNeedFixZone:Z

.field private mNeedToRegForSimLoaded:Z

.field private mNewMMRejectCause:I

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNotification:Landroid/app/Notification;

.field private mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mOperatorStringLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalOperatorName:Ljava/lang/String;

.field mPreferredNetworkType:I

.field public mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mSpecialEmMode:Z

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field private newRilCgregState:I

.field private newRilCregState:I

.field private oldRilCgregState:I

.field private oldRilCregState:I

.field operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "46000"

    aput-object v4, v3, v0

    const-string v4, "46002"

    aput-object v4, v3, v1

    const-string v4, "46007"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "45412"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedAppendixOpList:Ljava/util/ArrayList;

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "460"

    aput-object v4, v3, v0

    const-string v4, "454"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    .line 259
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v1, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v2, v6, :cond_1

    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .parameter "phone"

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 121
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 122
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 123
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 124
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 125
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 126
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 129
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    .line 130
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    .line 131
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    .line 132
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    .line 133
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    .line 135
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    .line 139
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 146
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 152
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCFUFlag:Z

    .line 166
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    .line 170
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 179
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 186
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 190
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 204
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 207
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 210
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    .line 214
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    .line 227
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 228
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 229
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 256
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    .line 265
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 296
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 489
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 2324
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteSignalStrength:I

    .line 2325
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteRsrp:I

    .line 2326
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteRsrq:I

    .line 2327
    const v5, 0x7fffffff

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteRssnr:I

    .line 2328
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->lteCqi:I

    .line 307
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 308
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 309
    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 310
    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 311
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 312
    new-instance v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v5}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 313
    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 315
    new-instance v5, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 319
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 320
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 324
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v5, "ServiceStateTracker"

    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 326
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xd

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x33

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChangedExt(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 332
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 333
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 335
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x11

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x42

    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 351
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkOffAlarm()Z

    move-result v0

    .line 354
    .local v0, alarmTriggered:Z
    :goto_0
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v5, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->airplaneModeOn(Landroid/content/Context;)V

    .line 357
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePowerState(Z)V

    .line 360
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 361
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 364
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v6, "auto_time_zone"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 369
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 372
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 373
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v5, :cond_1

    .line 377
    const-string v5, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2, v9, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 383
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 386
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.htc"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleIfLanguageChanged()V

    .line 410
    const-string v5, "1"

    const-string v6, "ro.ril.emc.mode"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    .line 411
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSpecialEmMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 415
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 419
    :cond_2
    invoke-direct {p0, v4, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    .line 422
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x32

    if-eq v5, v6, :cond_3

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x12

    if-ne v5, v6, :cond_6

    .line 424
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 429
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 430
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->create(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    .line 433
    :cond_4
    return-void

    .end local v0           #alarmTriggered:Z
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_5
    move v0, v4

    .line 351
    goto/16 :goto_0

    .line 387
    .restart local v0       #alarmTriggered:Z
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 388
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    goto :goto_1

    .line 426
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->airplaneModeOn(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private airplaneModeOn(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2917
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkOffAlarm()Z

    move-result v1

    .line 2918
    .local v1, isAlarmTriggered:Z
    if-eqz v1, :cond_0

    .line 2921
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2922
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2923
    .local v0, airplaneIntent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2924
    const-string v3, "state"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2925
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2928
    .end local v0           #airplaneIntent:Landroid/content/Intent;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private checkOffAlarm()Z
    .locals 4

    .prologue
    .line 2886
    const/4 v0, 0x0

    .line 2888
    .local v0, alarmTriggered:Z
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SUPPORT_OFFLINE_ALARM:Z

    if-eqz v1, :cond_0

    .line 2889
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getOffAlarm()Z

    move-result v0

    .line 2890
    const-string v1, "GsmServiceStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarmTriggered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    if-eqz v0, :cond_0

    .line 2892
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2897
    :cond_0
    return v0
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 2402
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 2404
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 2405
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 2406
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 2407
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 2409
    if-gez p0, :cond_0

    .line 2410
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 2411
    neg-int p0, p0

    .line 2416
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 2417
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 2419
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2420
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2422
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 2424
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2425
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 2427
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 2413
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 10
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 2031
    move v5, p1

    .line 2032
    .local v5, rawOffset:I
    if-eqz p2, :cond_0

    .line 2033
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 2035
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 2036
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2037
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 2038
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 2039
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 2040
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 2042
    move-object v2, v6

    .line 2047
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 2038
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2630
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2633
    :goto_0
    return v1

    .line 2630
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2639
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 2642
    :goto_0
    return v1

    .line 2639
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2641
    :catch_0
    move-exception v0

    .line 2642
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 2021
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2022
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 2024
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 2026
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2027
    return-object v0

    .line 2024
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2026
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getOffAlarm()Z
    .locals 2

    .prologue
    .line 2901
    const-string v1, "dev.bootreason"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2902
    .local v0, reason:Ljava/lang/String;
    const-string v1, "rtc_alarm"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private handleIfLanguageChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2713
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v3, v4, :cond_7

    .line 2714
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    .line 2715
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2718
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 2719
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    .line 2721
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x207001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2722
    .local v1, opStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 2723
    aget-object v3, v1, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2724
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2725
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    aget-object v5, v2, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2730
    .end local v0           #i:I
    .end local v1           #opStr:[Ljava/lang/String;
    .end local v2           #strArray:[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 2731
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2735
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 2736
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v6, v3, :cond_6

    .line 2737
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    .line 2750
    :cond_5
    :goto_2
    return-void

    .line 2739
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2744
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-nez v3, :cond_8

    .line 2745
    const-string v3, "GSM"

    const-string v4, "No HTC Context was loaded!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2747
    :cond_8
    const-string v3, "GSM"

    const-string v4, "Language is not changed, leave as what it was!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleImsRadioReset()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3036
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerStateToDesired: mDesiredPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 3039
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v2, :cond_0

    .line 3040
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataConnectionAsDesired: mDesiredPowerState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    if-eqz v0, :cond_0

    .line 3042
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 3047
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_3

    .line 3049
    const-string v2, "GSM"

    const-string v3, "handleImsRadioReset() turn radio on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v1

    .line 3052
    .local v1, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v1, :cond_2

    .line 3054
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 3056
    invoke-virtual {v1, v6, v5, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 3075
    .end local v1           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_1
    :goto_0
    return-void

    .line 3060
    .restart local v1       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 3064
    .end local v1           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3066
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 3067
    const-string v2, "GSM"

    const-string v3, "handleImsRadioReset() turn radio on"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 4
    .parameter "currRadioState"

    .prologue
    .line 3079
    invoke-static {}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->needToMaintainSimWhenRadioOff()Z

    move-result v0

    .line 3083
    .local v0, needToClearCache:Z
    if-eqz v0, :cond_2

    .line 3084
    move-object v1, p1

    .line 3085
    .local v1, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    if-nez v1, :cond_0

    .line 3086
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 3088
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_2

    .line 3090
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 3091
    const-string v2, "gsm.cdma.pri.version"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    .end local v1           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    return-void
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 2013
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedDiscardNitzInforamtion(Ljava/lang/String;J)Z
    .locals 12
    .parameter "nitz"
    .parameter "currentNitzUtcTime"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2987
    const-wide/32 v0, 0x927c0

    .line 2989
    .local v0, TIME_NEED_TO_DISCARD_NITZ:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2992
    .local v4, systemCurrentUtcTime:J
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    if-nez v8, :cond_1

    .line 2993
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    .line 2994
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NITZ: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was apply ==> First get NITZ after radio on"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :cond_0
    :goto_0
    return v6

    .line 2999
    :cond_1
    const/4 v3, 0x0

    .line 3001
    .local v3, isTestIcc:Z
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3006
    :goto_1
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNeedDiscardNitzInforamtion - isTestIcc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    if-nez v3, :cond_0

    .line 3012
    sub-long v8, p2, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x927c0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 3014
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NITZ: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was discard ==> currentNitzUtcTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,and systemCurrentUtcTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    move v6, v7

    .line 3019
    goto :goto_0

    .line 3002
    :catch_0
    move-exception v2

    .line 3003
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "GSM"

    const-string v9, "checkTestIcc fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 13
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2338
    const-string v10, "gsm.sim.operator.alpha"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2340
    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 2341
    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .line 2343
    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v1, v8

    .line 2344
    .local v1, equalsOnsl:Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v8

    .line 2346
    .local v2, equalsOnss:Z
    :goto_1
    const-string v10, "gsm.sim.operator.numeric"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2348
    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 2350
    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2352
    .local v0, equalsMcc:Z
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2357
    :goto_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    :goto_3
    return v8

    .end local v0           #equalsMcc:Z
    .end local v1           #equalsOnsl:Z
    .end local v2           #equalsOnss:Z
    .end local v5           #operatorNumeric:Ljava/lang/String;
    .end local v6           #simNumeric:Ljava/lang/String;
    :cond_1
    move v1, v9

    .line 2343
    goto :goto_0

    .restart local v1       #equalsOnsl:Z
    :cond_2
    move v2, v9

    .line 2344
    goto :goto_1

    .restart local v0       #equalsMcc:Z
    .restart local v2       #equalsOnss:Z
    .restart local v5       #operatorNumeric:Ljava/lang/String;
    .restart local v6       #simNumeric:Ljava/lang/String;
    :cond_3
    move v8, v9

    .line 2357
    goto :goto_3

    .line 2354
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2170
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 2172
    .local v1, newRs:Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2174
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 2175
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 2176
    .local v0, ints:[I
    aget v2, v0, v4

    .line 2178
    .local v2, state:I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 2182
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_2

    .line 2183
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 2186
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 2190
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2192
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2193
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2194
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2205
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2206
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2208
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 2253
    :cond_4
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2255
    .end local v0           #ints:[I
    .end local v2           #state:I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2256
    return-void

    .restart local v0       #ints:[I
    .restart local v2       #state:I
    :cond_6
    move v3, v4

    .line 2178
    goto :goto_0

    :cond_7
    move v3, v4

    .line 2183
    goto :goto_1

    :cond_8
    move v5, v4

    .line 2186
    goto :goto_2

    .line 2195
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2196
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2197
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 2209
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2211
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2212
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2214
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2216
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2218
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2220
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2221
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2223
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2224
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2226
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 2228
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2230
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2232
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2233
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2235
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2236
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2238
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2241
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2243
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2244
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2246
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 2247
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2249
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 24
    .parameter "ar"

    .prologue
    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v23, v0

    .line 2074
    .local v23, oldSignalStrength:Landroid/telephony/SignalStrength;
    const/16 v2, 0x63

    .line 2075
    .local v2, rssi:I
    const/4 v9, -0x1

    .line 2076
    .local v9, lteSignalStrength:I
    const/4 v10, -0x1

    .line 2077
    .local v10, lteRsrp:I
    const/4 v11, -0x1

    .line 2078
    .local v11, lteRsrq:I
    const/4 v12, -0x1

    .line 2079
    .local v12, lteRssnr:I
    const/4 v13, -0x1

    .line 2081
    .local v13, lteCqi:I
    const/16 v17, -0x1

    .line 2082
    .local v17, htcLteRsrp:I
    const/16 v18, -0x1

    .line 2083
    .local v18, htcLteRsrq:I
    const/16 v14, 0x63

    .line 2084
    .local v14, signalDbm:I
    const/4 v15, -0x1

    .line 2085
    .local v15, ecno:I
    const/16 v21, 0x0

    .line 2088
    .local v21, extraInfo:Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 2091
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2147
    :cond_0
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v16, -0x1

    const/16 v19, 0x1

    invoke-direct/range {v1 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2154
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    :cond_1
    :goto_1
    return-void

    .line 2093
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object/from16 v22, v1

    check-cast v22, [I

    .line 2096
    .local v22, ints:[I
    move-object/from16 v0, v22

    array-length v1, v0

    if-eqz v1, :cond_8

    .line 2097
    const/4 v1, 0x0

    aget v2, v22, v1

    .line 2106
    const/4 v1, 0x7

    aget v1, v22, v1

    if-lez v1, :cond_3

    const/4 v1, 0x7

    aget v9, v22, v1

    .line 2107
    :goto_2
    const/16 v1, 0x8

    aget v1, v22, v1

    if-lez v1, :cond_4

    const/16 v1, 0x8

    aget v10, v22, v1

    .line 2108
    :goto_3
    const/16 v1, 0x9

    aget v1, v22, v1

    if-lez v1, :cond_5

    const/16 v1, 0x9

    aget v11, v22, v1

    .line 2109
    :goto_4
    const/16 v1, 0xa

    aget v1, v22, v1

    if-lez v1, :cond_6

    const/16 v1, 0xa

    aget v12, v22, v1

    .line 2110
    :goto_5
    const/16 v1, 0xb

    aget v1, v22, v1

    if-lez v1, :cond_7

    const/16 v1, 0xb

    aget v13, v22, v1

    .line 2118
    :goto_6
    move-object/from16 v0, v22

    array-length v1, v0

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 2119
    const/16 v21, 0x1

    .line 2130
    const/4 v1, 0x7

    aget v1, v22, v1

    if-lez v1, :cond_9

    const/4 v1, 0x7

    aget v14, v22, v1

    .line 2131
    :goto_7
    const/16 v1, 0x8

    aget v1, v22, v1

    if-lez v1, :cond_a

    const/16 v1, 0x8

    aget v15, v22, v1

    .line 2132
    :goto_8
    const/16 v1, 0x9

    aget v1, v22, v1

    if-lez v1, :cond_b

    const/16 v1, 0x9

    aget v9, v22, v1

    .line 2133
    :goto_9
    const/16 v1, 0xa

    aget v1, v22, v1

    if-lez v1, :cond_c

    const/16 v1, 0xa

    aget v1, v22, v1

    mul-int/lit8 v10, v1, -0x1

    .line 2134
    :goto_a
    const/16 v1, 0xb

    aget v1, v22, v1

    if-lez v1, :cond_d

    const/16 v1, 0xb

    aget v1, v22, v1

    mul-int/lit8 v11, v1, -0x1

    .line 2135
    :goto_b
    const/16 v1, 0xc

    aget v1, v22, v1

    if-lez v1, :cond_e

    const/16 v1, 0xc

    aget v12, v22, v1

    .line 2136
    :goto_c
    const/16 v1, 0xd

    aget v1, v22, v1

    if-lez v1, :cond_f

    const/16 v1, 0xd

    aget v13, v22, v1

    .line 2137
    :goto_d
    mul-int/lit8 v17, v10, -0x1

    .line 2138
    mul-int/lit8 v18, v11, -0x1

    goto/16 :goto_0

    .line 2106
    :cond_3
    const/4 v9, -0x1

    goto :goto_2

    .line 2107
    :cond_4
    const/4 v10, -0x1

    goto :goto_3

    .line 2108
    :cond_5
    const/4 v11, -0x1

    goto :goto_4

    .line 2109
    :cond_6
    const/4 v12, -0x1

    goto :goto_5

    .line 2110
    :cond_7
    const/4 v13, -0x1

    goto :goto_6

    .line 2113
    :cond_8
    const-string v1, "Bogus signal strength response"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2114
    const/16 v2, 0x63

    goto :goto_6

    .line 2130
    :cond_9
    const/4 v14, -0x1

    goto :goto_7

    .line 2131
    :cond_a
    const/4 v15, -0x1

    goto :goto_8

    .line 2132
    :cond_b
    const/4 v9, -0x1

    goto :goto_9

    .line 2133
    :cond_c
    const/16 v1, 0xa

    aget v10, v22, v1

    goto :goto_a

    .line 2134
    :cond_d
    const/16 v1, 0xb

    aget v11, v22, v1

    goto :goto_b

    .line 2135
    :cond_e
    const/4 v12, -0x1

    goto :goto_c

    .line 2136
    :cond_f
    const/4 v13, -0x1

    goto :goto_d

    .line 2155
    .end local v22           #ints:[I
    :catch_0
    move-exception v20

    .line 2156
    .local v20, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1525
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 1528
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1574
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1591
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1607
    :goto_0
    return-void

    .line 1530
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1532
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1533
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1534
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1538
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1540
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1541
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1543
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstNitzGetAfterRadioOn:Z

    .line 1546
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 1548
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 1551
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1559
    :pswitch_2
    const-string v0, "Radio Technology Change ongoing, setting SS to off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1562
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1563
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto :goto_0

    .line 1528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 36

    .prologue
    .line 1611
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v31

    if-eqz v31, :cond_1

    sget-boolean v31, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v31, :cond_1

    .line 1612
    const-string v31, "GSM"

    const-string v32, " pollStateDone drop event "

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "] newSS=["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "] oldGprs="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " newData="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " oldMaxDataCalls="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mNewMaxDataCalls="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " oldReasonDataDenied="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " mNewReasonDataDenied="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " oldType="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " newType="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_1a

    const/4 v15, 0x1

    .line 1633
    .local v15, hasRegistered:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 1635
    if-nez v15, :cond_2

    .line 1637
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_2

    .line 1638
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Set the hasRegistered ="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "due to there has network change during poll state"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v15, 0x1

    .line 1642
    :cond_2
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    .line 1643
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "reset the mCregChange ="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-nez v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    if-eqz v31, :cond_1b

    const/4 v9, 0x1

    .line 1650
    .local v9, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    if-eqz v31, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    if-nez v31, :cond_1c

    const/4 v10, 0x1

    .line 1655
    .local v10, hasGprsAttached:Z
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 1657
    if-nez v10, :cond_4

    .line 1659
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    if-nez v31, :cond_4

    .line 1660
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Set the hasGprsAttached ="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "due to there has network change during poll state"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v10, 0x1

    .line 1664
    :cond_4
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    .line 1665
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "reset the mCgregChange ="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    if-nez v31, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    if-eqz v31, :cond_1d

    const/4 v11, 0x1

    .line 1673
    .local v11, hasGprsDetached:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1e

    const/4 v14, 0x1

    .line 1675
    .local v14, hasRadioTechnologyChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1f

    const/4 v8, 0x1

    .line 1677
    .local v8, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-nez v31, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-eqz v31, :cond_20

    const/16 v17, 0x1

    .line 1679
    .local v17, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-eqz v31, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-nez v31, :cond_21

    const/16 v16, 0x1

    .line 1681
    .local v16, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_22

    const/4 v12, 0x1

    .line 1684
    .local v12, hasLocationChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 1685
    :cond_6
    const v31, 0xc3c2

    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/ServiceState;->getState()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1690
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_23

    const/4 v13, 0x1

    .line 1694
    .local v13, hasMMRejectChanged:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v26, v0

    .line 1695
    .local v26, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1696
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v24, v0

    .line 1701
    .local v24, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1702
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1707
    if-eqz v14, :cond_9

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1712
    const/4 v6, -0x1

    .line 1713
    .local v6, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v20

    check-cast v20, Landroid/telephony/gsm/GsmCellLocation;

    .line 1714
    .local v20, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 1715
    :cond_8
    const v31, 0xc3c0

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1718
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "RAT switched "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " -> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " at cell "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1724
    .end local v6           #cid:I
    .end local v20           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 1726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 1727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    .line 1729
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1735
    if-eqz v13, :cond_a

    .line 1736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    .line 1737
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "MM Reject Cause: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasChanged: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v34, v0

    aput v34, v32, v33

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMMLocationUpdateInfo([I)V

    .line 1739
    if-nez v8, :cond_a

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    .line 1745
    :cond_a
    if-eqz v14, :cond_b

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 1750
    sget-short v31, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v32, 0xad

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    sget-short v31, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v32, 0x2b

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    sget-short v31, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v32, 0x64

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    sget-short v31, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v32, 0x1d

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_b
    if-eqz v15, :cond_c

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1772
    :cond_c
    if-eqz v9, :cond_d

    .line 1773
    const-string v31, ""

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "airplane_mode_on"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    if-nez v31, :cond_24

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->processRestartManualNetworkSelection()V

    .line 1784
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    .line 1789
    :cond_d
    if-eqz v8, :cond_12

    .line 1793
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    .line 1803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v22

    .line 1804
    .local v22, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.numeric"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    if-nez v22, :cond_25

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.iso-country"

    const-string v33, ""

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const-string v31, ""

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    .line 1809
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1831
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_27

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_27

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z

    move-result v18

    .line 1842
    .local v18, isTestIcc:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_e

    if-eqz v18, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 1843
    const/16 v29, 0x0

    .line 1847
    .local v29, zone:Ljava/util/TimeZone;
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "fixTimeZone mOPERATOR_ISO_COUNTRY: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mZoneOffset: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " mZoneDst: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " mZoneTime:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " isTestIcc:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v31, "persist.sys.timezone"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1851
    .local v30, zoneName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1852
    .local v21, needLaunchTimeZonePicker:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    if-nez v31, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v31, v0

    if-nez v31, :cond_2a

    if-eqz v30, :cond_2a

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_2a

    sget-object v31, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v31

    if-gez v31, :cond_2a

    .line 1856
    if-eqz v18, :cond_28

    .line 1857
    const-string v31, "UTC"

    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 1862
    :goto_e
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "mZoneOffset:0, mZoneDst:false, zoneName != null, zone:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-object/from16 v0, v29

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v27, v0

    .line 1869
    .local v27, tzOffset:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v31

    if-eqz v31, :cond_29

    .line 1870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1897
    .end local v27           #tzOffset:J
    :goto_f
    if-eqz v29, :cond_2e

    .line 1898
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "fixTimeZone is done zone:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 1901
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pollStateDone AUTO_TIME_ZONE update time zone: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1905
    :cond_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1906
    if-eqz v21, :cond_2d

    .line 1907
    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    .line 1911
    :goto_10
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 1918
    .end local v21           #needLaunchTimeZonePicker:Z
    .end local v29           #zone:Ljava/util/TimeZone;
    .end local v30           #zoneName:Ljava/lang/String;
    :cond_10
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    const-string v33, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v31

    if-eqz v31, :cond_2f

    const-string v31, "true"

    :goto_12
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v32, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 1928
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v31

    if-nez v31, :cond_11

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1930
    .local v23, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v23, :cond_11

    .line 1931
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/SIMRecords;->queryCFUIfNecessary()V

    .line 1938
    .end local v23           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1940
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 1946
    .end local v18           #isTestIcc:Z
    .end local v22           #operatorNumeric:Ljava/lang/String;
    :cond_12
    if-eqz v10, :cond_13

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1950
    :cond_13
    if-eqz v11, :cond_14

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1959
    :cond_14
    if-nez v14, :cond_15

    if-eqz v10, :cond_16

    .line 1961
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "nwTypeChanged"

    const-string v33, "*"

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    :cond_16
    if-eqz v17, :cond_17

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1968
    :cond_17
    if-eqz v16, :cond_18

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1972
    :cond_18
    if-eqz v12, :cond_19

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1976
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v31

    if-nez v31, :cond_30

    .line 1977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 1978
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "gprs_register_check_period_ms"

    const v33, 0xea60

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1984
    .local v5, check_period:I
    const/16 v31, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    int-to-long v0, v5

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1628
    .end local v5           #check_period:I
    .end local v8           #hasChanged:Z
    .end local v9           #hasDeregistered:Z
    .end local v10           #hasGprsAttached:Z
    .end local v11           #hasGprsDetached:Z
    .end local v12           #hasLocationChanged:Z
    .end local v13           #hasMMRejectChanged:Z
    .end local v14           #hasRadioTechnologyChanged:Z
    .end local v15           #hasRegistered:Z
    .end local v16           #hasRoamingOff:Z
    .end local v17           #hasRoamingOn:Z
    .end local v24           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v26           #tss:Landroid/telephony/ServiceState;
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1646
    .restart local v15       #hasRegistered:Z
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1650
    .restart local v9       #hasDeregistered:Z
    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1669
    .restart local v10       #hasGprsAttached:Z
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1673
    .restart local v11       #hasGprsDetached:Z
    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1675
    .restart local v14       #hasRadioTechnologyChanged:Z
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1677
    .restart local v8       #hasChanged:Z
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1679
    .restart local v17       #hasRoamingOn:Z
    :cond_21
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 1681
    .restart local v16       #hasRoamingOff:Z
    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1690
    .restart local v12       #hasLocationChanged:Z
    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 1779
    .restart local v13       #hasMMRejectChanged:Z
    .restart local v24       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v26       #tss:Landroid/telephony/ServiceState;
    :cond_24
    const-string v31, "GSM"

    const-string v32, "device has deregistered due to airplane on"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1811
    .restart local v22       #operatorNumeric:Ljava/lang/String;
    :cond_25
    const-string v19, ""

    .line 1813
    .local v19, iso:Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x3

    :try_start_0
    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 1821
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.iso-country"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    .line 1825
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_26

    const/16 v31, 0x1

    :goto_14
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto/16 :goto_c

    .line 1815
    :catch_0
    move-exception v7

    .line 1816
    .local v7, ex:Ljava/lang/NumberFormatException;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "countryCodeForMcc error"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_13

    .line 1817
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .line 1818
    .local v7, ex:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "countryCodeForMcc error"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_13

    .line 1825
    .end local v7           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_26
    const/16 v31, 0x0

    goto :goto_14

    .line 1835
    .end local v19           #iso:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v31, v0

    const-string v32, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1859
    .restart local v18       #isTestIcc:Z
    .restart local v21       #needLaunchTimeZonePicker:Z
    .restart local v29       #zone:Ljava/util/TimeZone;
    .restart local v30       #zoneName:Ljava/lang/String;
    :cond_28
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v29

    .line 1860
    const/16 v21, 0x1

    goto/16 :goto_e

    .line 1873
    .restart local v27       #tzOffset:J
    :cond_29
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v31, v0

    sub-long v31, v31, v27

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto/16 :goto_f

    .line 1875
    .end local v27           #tzOffset:J
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2c

    .line 1879
    const-string v25, "001"

    .line 1880
    .local v25, testOperatorMCC:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_2b

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2b

    .line 1882
    const-string v31, "GSM"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "test operator :"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " for iso is empty"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v33, v0

    const-string v35, "us"

    invoke-static/range {v31 .. v35}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 1885
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    goto/16 :goto_f

    .line 1887
    :cond_2b
    const-string v31, "GSM"

    const-string v32, "to figure out time zone in no iso case"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move-wide/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v29

    .line 1889
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    goto/16 :goto_f

    .line 1893
    .end local v25           #testOperatorMCC:Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v31 .. v35}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    goto/16 :goto_f

    .line 1909
    :cond_2d
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    goto/16 :goto_10

    .line 1913
    :cond_2e
    const-string v31, "GSM"

    const-string v32, "fixTimeZone zone is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    goto/16 :goto_11

    .line 1918
    .end local v21           #needLaunchTimeZonePicker:Z
    .end local v29           #zone:Ljava/util/TimeZone;
    .end local v30           #zoneName:Ljava/lang/String;
    :cond_2f
    const-string v31, "false"

    goto/16 :goto_12

    .line 1988
    .end local v18           #isTestIcc:Z
    .end local v22           #operatorNumeric:Ljava/lang/String;
    :cond_30
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_0
.end method

.method private processIfDTMCase(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    const/4 v2, 0x1

    .line 2936
    move v0, p1

    .line 2937
    .local v0, resultType:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    .line 2942
    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    .line 2943
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    .line 2944
    const/4 v0, 0x1

    .line 2949
    :cond_0
    :goto_0
    return v0

    .line 2945
    :cond_1
    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 2946
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    .line 2947
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private queryCFUIfNecessary()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1996
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cfu_query_when_campon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    .line 1998
    .local v0, cfuQuery:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v0, v1, :cond_0

    .line 1999
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2000
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2003
    :cond_0
    return-void

    .end local v0           #cfuQuery:Z
    :cond_1
    move v0, v2

    .line 1996
    goto :goto_0
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 2051
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2059
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2060
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2065
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 2322
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2260
    packed-switch p1, :pswitch_data_0

    .line 2305
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2306
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 2268
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2271
    goto :goto_0

    .line 2277
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpecialEmMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2280
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2289
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 2292
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 2296
    goto :goto_0

    .line 2300
    :pswitch_7
    const-string v0, "GSM"

    const-string v2, "special emergency state with +CREG:15"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2301
    goto :goto_0

    .line 2260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 2686
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2698
    :cond_0
    :goto_0
    return-void

    .line 2691
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2694
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 2695
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2709
    :cond_0
    :goto_0
    return-void

    .line 2705
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2706
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2707
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2651
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2653
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 2647
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2648
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2678
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2680
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2681
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2682
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2683
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 2662
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2664
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2665
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2667
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2668
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2669
    return-void
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    .line 2814
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd1

    if-eq v6, v7, :cond_1

    .line 2816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2817
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2819
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2820
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2821
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2822
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2823
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2824
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2827
    const-string v1, ""

    .line 2828
    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x10400f8

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2829
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .line 2831
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 2853
    :goto_0
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2854
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2855
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2858
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2861
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_2

    .line 2863
    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2869
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #notificationId:I
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    return-void

    .line 2833
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #details:Ljava/lang/CharSequence;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #notificationId:I
    .restart local v5       #title:Ljava/lang/CharSequence;
    :pswitch_1
    const/16 v3, 0x378

    .line 2834
    const v6, 0x10400f9

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2835
    goto :goto_0

    .line 2837
    :pswitch_2
    const/16 v3, 0x378

    .line 2838
    goto :goto_0

    .line 2840
    :pswitch_3
    const v6, 0x10400fc

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2841
    goto :goto_0

    .line 2843
    :pswitch_4
    const v6, 0x10400fb

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2844
    goto :goto_0

    .line 2846
    :pswitch_5
    const v6, 0x10400fa

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2847
    goto :goto_0

    .line 2866
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 2831
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 20

    .prologue
    .line 1513
    new-instance v1, Landroid/telephony/SignalStrength;

    const/16 v2, 0x63

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x1

    invoke-direct/range {v1 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1514
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 34
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 2437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 2438
    .local v23, start:J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " start="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " delay="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sub-long v30, v23, p2

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2445
    :try_start_0
    const-string v29, "GMT"

    invoke-static/range {v29 .. v29}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 2447
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 2448
    const/16 v29, 0x10

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2450
    const-string v29, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2452
    .local v20, nitzSubs:[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v27, v0

    .line 2453
    .local v27, year:I
    const/16 v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2456
    const/16 v29, 0x1

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v19, v29, -0x1

    .line 2457
    .local v19, month:I
    const/16 v29, 0x2

    move/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2459
    const/16 v29, 0x2

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2460
    .local v6, date:I
    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-virtual {v5, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 2462
    const/16 v29, 0x3

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2463
    .local v12, hour:I
    const/16 v29, 0xa

    move/from16 v0, v29

    invoke-virtual {v5, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 2465
    const/16 v29, 0x4

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2466
    .local v18, minute:I
    const/16 v29, 0xc

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2468
    const/16 v29, 0x5

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2469
    .local v21, second:I
    const/16 v29, 0xd

    move/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2471
    const/16 v29, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    .line 2473
    .local v22, sign:Z
    :goto_0
    const/16 v29, 0x6

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 2475
    .local v25, tzOffset:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    const/16 v29, 0x7

    aget-object v29, v20, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2485
    .local v7, dst:I
    :goto_1
    if-eqz v22, :cond_3

    const/16 v29, 0x1

    :goto_2
    mul-int v29, v29, v25

    mul-int/lit8 v29, v29, 0xf

    mul-int/lit8 v29, v29, 0x3c

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    .line 2487
    const/16 v28, 0x0

    .line 2493
    .local v28, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x9

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    .line 2494
    const/16 v29, 0x8

    aget-object v29, v20, v29

    const/16 v30, 0x21

    const/16 v31, 0x2f

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v26

    .line 2495
    .local v26, tzname:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    .line 2500
    .end local v26           #tzname:Ljava/lang/String;
    :cond_0
    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v30, 0x3e

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 2501
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isNeedDiscardNitzInforamtion(Ljava/lang/String;J)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 2626
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v12           #hour:I
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v21           #second:I
    .end local v22           #sign:Z
    .end local v25           #tzOffset:I
    .end local v27           #year:I
    .end local v28           #zone:Ljava/util/TimeZone;
    :goto_3
    return-void

    .line 2471
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v12       #hour:I
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v21       #second:I
    .restart local v27       #year:I
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 2475
    .restart local v22       #sign:Z
    .restart local v25       #tzOffset:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2485
    .restart local v7       #dst:I
    :cond_3
    const/16 v29, -0x1

    goto :goto_2

    .line 2507
    .restart local v28       #zone:Ljava/util/TimeZone;
    :cond_4
    const-string v29, "gsm.operator.iso-country"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2508
    .local v15, iso:Ljava/lang/String;
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "get ISO: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " mGotCountryCode: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " mOPERATOR_ISO_COUNTRY: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    if-nez v28, :cond_5

    .line 2511
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 2512
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_b

    .line 2513
    if-eqz v7, :cond_a

    const/16 v29, 0x1

    :goto_4
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move/from16 v0, v25

    move/from16 v1, v29

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3, v15}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 2533
    :cond_5
    :goto_5
    const/4 v14, 0x0

    .line 2535
    .local v14, isTestIcc:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 2539
    :goto_6
    if-nez v28, :cond_6

    if-eqz v14, :cond_6

    .line 2540
    :try_start_2
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "isTestIcc: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    if-eqz v7, :cond_f

    const/16 v29, 0x1

    :goto_7
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v28

    .line 2545
    :cond_6
    if-nez v28, :cond_7

    .line 2550
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 2551
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 2552
    if-eqz v7, :cond_10

    const/16 v29, 0x1

    :goto_8
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 2553
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 2556
    :cond_7
    if-eqz v28, :cond_9

    .line 2557
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 2559
    const-string v29, "GSM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setTimeFromNITZString AUTO_TIME update time zone: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNitzTimeZoneIsValid(ZZ)V

    .line 2562
    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2564
    :cond_8
    invoke-virtual/range {v28 .. v28}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2567
    :cond_9
    const-string v29, "gsm.ignore-nitz"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2568
    .local v13, ignore:Ljava/lang/String;
    if-eqz v13, :cond_11

    const-string v29, "yes"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 2569
    const-string v29, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2623
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v12           #hour:I
    .end local v13           #ignore:Ljava/lang/String;
    .end local v14           #isTestIcc:Z
    .end local v15           #iso:Ljava/lang/String;
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v21           #second:I
    .end local v22           #sign:Z
    .end local v25           #tzOffset:I
    .end local v27           #year:I
    .end local v28           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v11

    .line 2624
    .local v11, ex:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ex="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2513
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v12       #hour:I
    .restart local v15       #iso:Ljava/lang/String;
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v21       #second:I
    .restart local v22       #sign:Z
    .restart local v25       #tzOffset:I
    .restart local v27       #year:I
    .restart local v28       #zone:Ljava/util/TimeZone;
    :cond_a
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 2517
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_d

    .line 2518
    if-eqz v7, :cond_c

    const/16 v29, 0x1

    :goto_9
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOPERATOR_ISO_COUNTRY:Ljava/lang/String;

    move-object/from16 v32, v0

    move/from16 v0, v25

    move/from16 v1, v29

    move-wide/from16 v2, v30

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v28

    goto/16 :goto_5

    :cond_c
    const/16 v29, 0x0

    goto :goto_9

    .line 2527
    :cond_d
    if-eqz v7, :cond_e

    const/16 v29, 0x1

    :goto_a
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v28

    goto/16 :goto_5

    :cond_e
    const/16 v29, 0x0

    goto :goto_a

    .line 2536
    .restart local v14       #isTestIcc:Z
    :catch_1
    move-exception v8

    .line 2537
    .local v8, e:Ljava/lang/Exception;
    const-string v29, "GSM"

    const-string v30, "checkTestIcc fail"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 2541
    .end local v8           #e:Ljava/lang/Exception;
    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 2552
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 2574
    .restart local v13       #ignore:Ljava/lang/String;
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2576
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v29

    if-eqz v29, :cond_14

    .line 2577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v16, v29, p2

    .line 2580
    .local v16, millisSinceNitzReceived:J
    const-wide/16 v29, 0x0

    cmp-long v29, v16, v29

    if-gez v29, :cond_12

    .line 2583
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2621
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 2590
    :cond_12
    const-wide/32 v29, 0x7fffffff

    cmp-long v29, v16, v29

    if-lez v29, :cond_13

    .line 2593
    :try_start_6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-wide/32 v30, 0x5265c00

    div-long v30, v16, v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " days"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2621
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_3

    .line 2601
    :cond_13
    const/16 v29, 0xe

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v30, v0

    :try_start_8
    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 2604
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: Setting time of day to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " NITZ receive delay(ms): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " gained(ms): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " from "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2612
    const-string v29, "GSM"

    const-string v30, "NITZ: after Setting time of day"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    .end local v16           #millisSinceNitzReceived:J
    :cond_14
    const-string v29, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 2617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2618
    .local v9, end:J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NITZ: end="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " dur="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sub-long v30, v9, v23

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2621
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3

    .end local v9           #end:J
    :catchall_0
    move-exception v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v29
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2881
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    return-void
.end method

.method private triggerTimezonePicker()V
    .locals 5

    .prologue
    .line 2955
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2956
    .local v1, context:Landroid/content/Context;
    const-string v0, "htc.intent.action.timezone_picker"

    .line 2957
    .local v0, ACTION_TRIGGER_TIME_ZONE_PICKER:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "htc.intent.action.timezone_picker"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2959
    .local v2, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2960
    const-string v3, "GSM"

    const-string v4, "triggerTimezonePicker"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2965
    :goto_0
    return-void

    .line 2963
    :cond_0
    const-string v3, "GSM"

    const-string v4, "triggerTimezonePicker fail, context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 2363
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2364
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2366
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 2368
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2371
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method

.method private updateNitzTimeZoneIsValid(ZZ)V
    .locals 4
    .parameter "isValid"
    .parameter "needNotifyTimeZonePicker"

    .prologue
    .line 2968
    const-string v0, "gsm.timezone.isvalid"

    .line 2970
    .local v0, KEY_TIME_ZONE_IS_VALID:Ljava/lang/String;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNitzTimeZoneIsValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "needNotifyTimeZonePicker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const-string v2, "gsm.timezone.isvalid"

    if-eqz p1, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    if-eqz p2, :cond_0

    .line 2976
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->triggerTimezonePicker()V

    .line 2983
    :cond_0
    return-void

    .line 2973
    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method private updateOperatorInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2757
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_8

    .line 2758
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v3, v5, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 2759
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_5

    move v2, v3

    .line 2761
    .local v2, showSpn:Z
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v7, :cond_6

    move v1, v3

    .line 2766
    .local v1, showPlmn:Z
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2767
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2768
    const/4 v1, 0x0

    .line 2772
    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v3, :cond_1

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v3, v7, :cond_2

    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd8

    if-eq v3, v5, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xda

    if-ne v3, v5, :cond_3

    .line 2778
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2779
    .local v0, operatorNumeric:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2782
    const/4 v2, 0x0

    .line 2783
    const/4 v1, 0x1

    .line 2788
    .end local v0           #operatorNumeric:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v4

    .end local v2           #showSpn:Z
    :cond_4
    iput-boolean v2, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 2789
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 2790
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 2791
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    .line 2801
    .end local v1           #showPlmn:Z
    :goto_3
    const-string v3, "GSM"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/OperatorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    return-void

    :cond_5
    move v2, v4

    .line 2759
    goto/16 :goto_0

    .restart local v2       #showSpn:Z
    :cond_6
    move v1, v4

    .line 2761
    goto/16 :goto_1

    .end local v2           #showSpn:Z
    .restart local v1       #showPlmn:Z
    :cond_7
    move v4, v1

    .line 2789
    goto :goto_2

    .line 2793
    .end local v1           #showPlmn:Z
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 2794
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 2795
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-boolean v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 2796
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 2797
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    goto :goto_3
.end method

.method private updatePowerState(Z)V
    .locals 5
    .parameter "alarmTriggered"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2907
    if-ne v2, p1, :cond_0

    move v0, v2

    .line 2912
    .local v0, airplaneMode:I
    :goto_0
    if-gtz v0, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 2913
    if-lez v0, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFlightModeBootup:Z

    .line 2914
    return-void

    .line 2907
    .end local v0           #airplaneMode:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .restart local v0       #airplaneMode:I
    :cond_1
    move v1, v3

    .line 2912
    goto :goto_1

    :cond_2
    move v2, v3

    .line 2913
    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 437
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 438
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 444
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 450
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChangedExt(Landroid/os/Handler;)V

    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 455
    .local v0, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 464
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 466
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 468
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 471
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 474
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 477
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 2383
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 2379
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    return-object v0
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    const-string v0, "gsm.cdma.pri.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Not ready"

    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 516
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_1

    sget-boolean v22, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v22, :cond_1

    .line 517
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " GsmServiceTracker drop event "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 924
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 533
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->WPHONE_UI_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0x34

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 535
    const-string v22, "Receive EVENT_RADIO_AVAILABLE and send EVENT_RIL_CDMA_RS_INFO."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 552
    .local v18, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v18, :cond_2

    .line 553
    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 558
    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 562
    .end local v18           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v22

    if-nez v22, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 564
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v11

    .line 567
    .local v11, networkSelection:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 569
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0x9b

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xd2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 572
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearNetworkSelection()V

    .line 575
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 592
    .end local v11           #networkSelection:Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 607
    const-string v22, "SIM READY, notify data connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const-string v23, "nwTypeChanged"

    const-string v24, "*"

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 614
    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 615
    const-string v22, "EVENT_RIL_CDMA_RS_INFO:CDMA Info ar.result == null."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 616
    :cond_8
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 617
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 618
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EVENT_RIL_CDMA_RS_INFO:version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mobile_sw_version:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->mobile_sw_version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " esn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->esn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " prl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " pre_only:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pre_only:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " imsi:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " customer_id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->customer_id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " prl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 629
    .local v21, unifiedPRIversion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 631
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 633
    :cond_9
    const-string v22, "gsm.cdma.pri.version"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 637
    .end local v21           #unifiedPRIversion:Ljava/lang/String;
    :cond_a
    const-string v22, "EVENT_RIL_CDMA_RS_INFO:No this section!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 650
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EVENT_RADIO_STATE_CHANGED Radio State: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 655
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->tryUnlockRadioPower(Ljava/lang/String;)Z

    .line 660
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsFlightModeRequest:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 666
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 663
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleImsRadioReset()V

    goto :goto_1

    .line 671
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 672
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 673
    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 674
    .local v15, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Radio State: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    sget-object v22, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_f

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v11

    .line 678
    .restart local v11       #networkSelection:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 679
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0x9b

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xd2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 682
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearNetworkSelection()V

    .line 686
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 687
    .end local v11           #networkSelection:Ljava/lang/String;
    :cond_f
    sget-object v22, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v11

    .line 691
    .restart local v11       #networkSelection:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 692
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0x9b

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xd2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 695
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearNetworkSelection()V

    .line 699
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOnDueToECC:Z

    goto/16 :goto_0

    .line 709
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v11           #networkSelection:Ljava/lang/String;
    .end local v15           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 711
    const-string v22, "ril.notify.regstatus"

    const-string v23, "-1"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 712
    .local v17, rilCregState:Ljava/lang/String;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "rilCregState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v22, "ril.notify.gprsregstatus"

    const-string v23, "-1"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 714
    .local v16, rilCgregState:Ljava/lang/String;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "rilCgregState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 717
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    .line 718
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    .line 719
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isFirstNetworkStateChange:Z

    .line 734
    :cond_12
    :goto_2
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "oldRilCREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  newRilCREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "oldRilCGREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  newRilCGREGState: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mCregChange: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "  mCgregChange: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v16           #rilCgregState:Ljava/lang/String;
    .end local v17           #rilCregState:Ljava/lang/String;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 723
    .restart local v16       #rilCgregState:Ljava/lang/String;
    .restart local v17       #rilCregState:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    .line 724
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    .line 727
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCregState:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCregState:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    .line 730
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCregChange:Z

    .line 731
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->oldRilCgregState:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newRilCgregState:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 732
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCgregChange:Z

    goto/16 :goto_2

    .line 743
    .end local v16           #rilCgregState:Ljava/lang/String;
    .end local v17           #rilCregState:Ljava/lang/String;
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 750
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v22

    if-nez v22, :cond_0

    .line 754
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 755
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 761
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 763
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_18

    .line 768
    const/16 v19, 0x0

    .line 769
    .local v19, states:[Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v19, v22

    check-cast v19, [Ljava/lang/String;

    .line 771
    const/4 v8, -0x1

    .line 772
    .local v8, lac:I
    const/4 v5, -0x1

    .line 773
    .local v5, cid:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_17

    .line 775
    const/16 v22, 0x1

    :try_start_0
    aget-object v22, v19, v22

    if-eqz v22, :cond_16

    const/16 v22, 0x1

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_16

    .line 776
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 778
    :cond_16
    const/16 v22, 0x2

    aget-object v22, v19, v22

    if-eqz v22, :cond_17

    const/16 v22, 0x2

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_17

    .line 779
    const/16 v22, 0x2

    aget-object v22, v19, v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 785
    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 791
    .end local v5           #cid:I
    .end local v8           #lac:I
    .end local v19           #states:[Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 781
    .restart local v5       #cid:I
    .restart local v8       #lac:I
    .restart local v19       #states:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 782
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "error parsing location: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 799
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #cid:I
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    .end local v8           #lac:I
    .end local v19           #states:[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 801
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 807
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 811
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 813
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    check-cast v22, [Ljava/lang/Object;

    const/16 v23, 0x0

    aget-object v14, v22, v23

    check-cast v14, Ljava/lang/String;

    .line 814
    .local v14, nitzString:Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/Object;

    check-cast v22, [Ljava/lang/Object;

    const/16 v23, 0x1

    aget-object v22, v22, v23

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 816
    .local v12, nitzReceiveTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 823
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v12           #nitzReceiveTime:J
    .end local v14           #nitzString:Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 827
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontPollSignalStrength:Z

    .line 829
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 836
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateNetworkNameDisplay()V

    goto/16 :goto_0

    .line 843
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 845
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    const/16 v23, 0xf

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 851
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 853
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/16 v22, 0x15

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 854
    .local v10, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 858
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v10           #message:Landroid/os/Message;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 859
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 860
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    invoke-static/range {v22 .. v22}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 862
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 867
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 869
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_19

    .line 870
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 875
    :goto_4
    const/16 v22, 0x14

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 876
    .restart local v10       #message:Landroid/os/Message;
    const/16 v20, 0x7

    .line 878
    .local v20, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 872
    .end local v10           #message:Landroid/os/Message;
    .end local v20           #toggledNetworkType:I
    :cond_19
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_4

    .line 883
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleIfLanguageChanged()V

    goto/16 :goto_0

    .line 887
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v22

    if-nez v22, :cond_1a

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v9

    check-cast v9, Landroid/telephony/gsm/GsmCellLocation;

    .line 893
    .local v9, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v23, 0xc3bb

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v24, v22

    const/16 v25, 0x1

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v22

    :goto_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 895
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 897
    .end local v9           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 893
    .restart local v9       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_1b
    const/16 v22, -0x1

    goto :goto_5

    .line 904
    .end local v9           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_14
    const-string v22, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 906
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 908
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 912
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 913
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v7, v22

    check-cast v7, [I

    .line 914
    .local v7, isSIMRemoved:[I
    const-string v23, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Event EVENT_SIM_HOT_SWAP_STATUS Received - "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v7, :cond_1c

    array-length v0, v7

    move/from16 v22, v0

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    if-eqz v7, :cond_0

    array-length v0, v7

    move/from16 v22, v0

    if-lez v22, :cond_0

    const/16 v22, 0x0

    aget v22, v7, v22

    if-nez v22, :cond_0

    .line 918
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 914
    :cond_1c
    const/16 v22, -0x1

    goto :goto_6

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x4 -> :sswitch_9
        0x5 -> :sswitch_9
        0x6 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_0
        0xe -> :sswitch_9
        0xf -> :sswitch_8
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1
        0x12 -> :sswitch_e
        0x13 -> :sswitch_11
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x32 -> :sswitch_12
        0x33 -> :sswitch_4
        0x34 -> :sswitch_2
        0x3d -> :sswitch_6
        0x3e -> :sswitch_9
        0x42 -> :sswitch_15
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 21
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1274
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_1

    sget-boolean v18, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v18, :cond_1

    .line 1275
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handlePollStateResult drop event "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1286
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1287
    const/4 v4, 0x0

    .line 1289
    .local v4, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1290
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    .line 1293
    :cond_2
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_3

    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1299
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1305
    :cond_4
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_5

    .line 1309
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    .end local v4           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    add-int/lit8 v20, v20, -0x1

    aput v20, v18, v19

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollingContext:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    if-nez v18, :cond_0

    .line 1501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    :cond_6
    const/4 v13, 0x1

    .line 1502
    .local v13, roaming:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 1503
    const/4 v13, 0x0

    .line 1505
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1507
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1315
    .end local v13           #roaming:Z
    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 1317
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 1318
    .local v15, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 1319
    .local v7, lac:I
    const/4 v3, -0x1

    .line 1320
    .local v3, cid:I
    const/4 v12, -0x1

    .line 1321
    .local v12, regState:I
    const/4 v11, -0x1

    .line 1322
    .local v11, reasonRegStateDenied:I
    const/4 v10, -0x1

    .line 1323
    .local v10, psc:I
    array-length v0, v15

    move/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v18, :cond_c

    .line 1325
    const/16 v18, 0x0

    :try_start_1
    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1326
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 1327
    const/16 v18, 0x1

    aget-object v18, v15, v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_9

    .line 1328
    const/16 v18, 0x1

    aget-object v18, v15, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 1330
    :cond_9
    const/16 v18, 0x2

    aget-object v18, v15, v18

    if-eqz v18, :cond_a

    const/16 v18, 0x2

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 1331
    const/16 v18, 0x2

    aget-object v18, v15, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1337
    :cond_a
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_e

    const/16 v18, 0x3

    aget-object v18, v15, v18

    if-eqz v18, :cond_e

    .line 1338
    const/16 v16, 0x0

    .line 1339
    .local v16, type:I
    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1340
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->processIfDTMCase(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    .line 1350
    .end local v16           #type:I
    :goto_3
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 1351
    const/16 v18, 0xe

    aget-object v18, v15, v18

    if-eqz v18, :cond_b

    const/16 v18, 0xe

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_b

    .line 1352
    const/16 v18, 0xe

    aget-object v18, v15, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 1356
    :cond_b
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    const/16 v18, 0xd

    aget-object v18, v15, v18

    if-eqz v18, :cond_f

    .line 1357
    const/16 v18, 0xd

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    .line 1358
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MM Reject Cause from RIL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1371
    :cond_c
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1374
    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v12, v0, :cond_d

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v12, v0, :cond_d

    const/16 v18, 0xd

    move/from16 v0, v18

    if-eq v12, v0, :cond_d

    const/16 v18, 0xe

    move/from16 v0, v18

    if-ne v12, v0, :cond_10

    .line 1375
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1381
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1485
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v10           #psc:I
    .end local v11           #reasonRegStateDenied:I
    .end local v12           #regState:I
    .end local v15           #states:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1486
    .local v5, ex:Ljava/lang/RuntimeException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1344
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v7       #lac:I
    .restart local v10       #psc:I
    .restart local v11       #reasonRegStateDenied:I
    .restart local v12       #regState:I
    .restart local v15       #states:[Ljava/lang/String;
    :cond_e
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setNetworkType(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 1363
    :catch_1
    move-exception v5

    .line 1366
    .local v5, ex:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing RegistrationState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 1360
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    :cond_f
    const/16 v18, 0x0

    :try_start_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMMRejectCause:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 1377
    :cond_10
    const/16 v18, 0x0

    :try_start_6
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto/16 :goto_5

    .line 1386
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v10           #psc:I
    .end local v11           #reasonRegStateDenied:I
    .end local v12           #regState:I
    .end local v15           #states:[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 1388
    .restart local v15       #states:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1390
    .local v17, validGPRSType:Z
    const/16 v16, 0x0

    .line 1391
    .restart local v16       #type:I
    const/4 v12, -0x1

    .line 1392
    .restart local v12       #regState:I
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1393
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 1394
    array-length v0, v15

    move/from16 v18, v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    if-lez v18, :cond_13

    .line 1396
    const/16 v18, 0x0

    :try_start_7
    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1399
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    const/16 v18, 0x3

    aget-object v18, v15, v18

    if-eqz v18, :cond_11

    .line 1400
    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1402
    const/16 v17, 0x1

    .line 1405
    :cond_11
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v12, v0, :cond_12

    .line 1406
    const/16 v18, 0x4

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 1408
    :cond_12
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    .line 1409
    const/16 v18, 0x5

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1415
    :cond_13
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1416
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setGPRSState(I)V

    .line 1421
    if-eqz v17, :cond_5

    .line 1422
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->processIfDTMCase(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewRadioTechnology:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setNetworkType(I)V

    goto/16 :goto_1

    .line 1411
    :catch_2
    move-exception v5

    .line 1412
    .restart local v5       #ex:Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 1430
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .end local v12           #regState:I
    .end local v15           #states:[Ljava/lang/String;
    .end local v16           #type:I
    .end local v17           #validGPRSType:Z
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 1432
    .local v9, opNames:[Ljava/lang/String;
    if-eqz v9, :cond_5

    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v19, v9, v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1445
    .local v8, opLong:Ljava/lang/String;
    :goto_7
    const/16 v18, 0x0

    aget-object v18, v9, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v9, v19

    const/16 v20, 0x2

    aget-object v20, v9, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v8, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    sget-object v18, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedAppendixOpList:Ljava/util/ArrayList;

    const/16 v19, 0x2

    aget-object v19, v9, v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1450
    const-string v18, "GSM"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "appendix criteria is matched: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    sget-object v19, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    sget-object v19, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1453
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    .line 1461
    :goto_8
    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/SIMRecords;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1464
    .local v14, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v14, :cond_5

    .line 1467
    const/16 v18, 0x3

    :try_start_9
    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setOperatorNameSource(I)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 1468
    :catch_3
    move-exception v5

    .line 1470
    .restart local v5       #ex:Ljava/lang/NumberFormatException;
    const/16 v18, -0x1

    :try_start_a
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setOperatorNameSource(I)V

    goto/16 :goto_1

    .line 1443
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .end local v8           #opLong:Ljava/lang/String;
    .end local v14           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    :cond_15
    const/16 v18, 0x0

    aget-object v8, v9, v18

    .restart local v8       #opLong:Ljava/lang/String;
    goto/16 :goto_7

    .line 1455
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    goto :goto_8

    .line 1458
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/ServiceState;->setAppendixType(I)V

    goto :goto_8

    .line 1480
    .end local v8           #opLong:Ljava/lang/String;
    .end local v9           #opNames:[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    move-object/from16 v0, v18

    check-cast v0, [I

    move-object v6, v0

    .line 1481
    .local v6, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    aget v18, v6, v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    :cond_18
    const/16 v18, 0x0

    goto :goto_9

    .line 1501
    .end local v6           #ints:[I
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1315
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcHangupAndPowerOff(Ljava/lang/Boolean;)V

    .line 1017
    return-void
.end method

.method protected htcHangupAndPowerOff(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "simRemainActive"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1022
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1024
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1025
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v1}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v0

    .line 1030
    .local v0, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 1039
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected htcSetPowerStateToDesired(Ljava/lang/Boolean;)V
    .locals 9
    .parameter "isRequestedByPhoneApp"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 939
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPowerStateToDesired, mDesiredPowerState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", requestByPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 943
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    if-eqz v3, :cond_0

    .line 944
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataConnectionAsDesired: mDesiredPowerState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    if-eqz v0, :cond_0

    .line 946
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v3, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataConnectionAsDesired(ZLandroid/os/Message;)V

    .line 951
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_4

    .line 954
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v2

    .line 955
    .local v2, seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v2, :cond_3

    .line 956
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 957
    invoke-virtual {v2, v7, v6, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 959
    :cond_1
    invoke-virtual {v2, v8, v6, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 1011
    .end local v2           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .end local p1
    :cond_2
    :goto_0
    return-void

    .line 963
    .restart local v2       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    .restart local p1
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 967
    .end local v2           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 969
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 974
    if-eqz p1, :cond_5

    .end local p1
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;Ljava/lang/Boolean;)V

    goto :goto_0

    .restart local p1
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 979
    :cond_6
    const/4 v1, 0x0

    .line 980
    .local v1, noRedundantCommand:Z
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFlightModeBootup:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_7

    .line 983
    const-string v3, "GSM"

    const-string v4, "Boot-up with airplane mode is on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFlightModeBootup:Z

    .line 986
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->getObject(Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/HtcSequentialRadioPower;

    move-result-object v2

    .line 987
    .restart local v2       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    if-eqz v2, :cond_8

    .line 988
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v3, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 996
    :goto_2
    const/4 v1, 0x1

    .line 1001
    .end local v2           #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1003
    if-nez v1, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_2

    .line 1005
    const-string v3, "GSM"

    const-string v4, "IMS flight mode on, but power off case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 992
    .restart local v2       #seqPower:Lcom/android/internal/telephony/HtcSequentialRadioPower;
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_2
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2393
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioTechnology:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m2gWithDTM:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2872
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2877
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->htcSetPowerStateToDesired(Ljava/lang/Boolean;)V

    .line 932
    return-void
.end method

.method protected updateNetworkNameDisplay()V
    .locals 19

    .prologue
    .line 1096
    new-instance v5, Landroid/content/Intent;

    const-string v16, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 1098
    .local v11, serviceStatus:I
    const-string v16, "networkState"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    const-string v17, "unregistered_icc"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v16, v0

    if-lez v16, :cond_0

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1100
    const-string v16, "unregistered_icc_code"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v16

    if-nez v16, :cond_1

    .line 1266
    :goto_1
    return-void

    .line 1099
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 1109
    :cond_1
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SPN_STRINGS_UPDATED_ACTION serviceStatus: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " rejectCause:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMMRejectCause:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-nez v11, :cond_12

    .line 1113
    const/4 v4, 0x0

    .line 1119
    .local v4, ignoreDisplayRule:Z
    const/4 v10, 0x1

    .line 1120
    .local v10, rule:I
    const/4 v15, 0x0

    .line 1122
    .local v15, spn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1123
    .local v14, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v14, :cond_2

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v10

    .line 1125
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v15

    .line 1129
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 1131
    .local v8, numeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1133
    .local v9, plmn:Ljava/lang/String;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "plmn("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") name  in resource: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :goto_2
    sget-object v16, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedAppendixOpList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_e

    const/4 v6, 0x1

    .line 1142
    .local v6, is3Gtype:Z
    :goto_3
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "network Type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getNetwrorkType()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    if-eqz v6, :cond_3

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getAppendixType()I

    move-result v2

    .line 1145
    .local v2, appendixType:I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v2, v0, :cond_f

    .line 1146
    const-string v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1147
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "3G"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1157
    .end local v2           #appendixType:I
    .end local v6           #is3Gtype:Z
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    const-string v17, "gsm.operator.alpha"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v10, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 1162
    :cond_4
    and-int/lit8 v16, v10, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    .line 1164
    .local v13, showSpn:Z
    :goto_5
    and-int/lit8 v16, v10, 0x2

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 1169
    .local v12, showPlmn:Z
    :goto_6
    if-eqz v13, :cond_5

    if-eqz v12, :cond_5

    if-eqz v9, :cond_5

    if-eqz v15, :cond_5

    .line 1170
    invoke-virtual {v9, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_5

    .line 1171
    const-string v16, "GSM"

    const-string v17, "spn and plmn are identical strings!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v12, 0x0

    .line 1176
    :cond_5
    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0x1b

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    :cond_6
    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0xd8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0xda

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1182
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    sget-object v16, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mChinaOpList:Ljava/util/ArrayList;

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1185
    const/4 v13, 0x0

    .line 1186
    const/4 v12, 0x1

    .line 1188
    const/4 v4, 0x1

    .line 1194
    :cond_8
    if-eqz v8, :cond_a

    .line 1196
    const/16 v16, 0x0

    const/16 v17, 0x3

    :try_start_0
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1197
    .local v7, mcc:Ljava/lang/String;
    const-string v16, "404"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    const-string v16, "405"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1206
    :cond_9
    if-eqz v15, :cond_a

    .line 1207
    const-string v16, "Vodafone IN"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    const-string v16, "airtel"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_a

    .line 1209
    const-string v16, "GSM"

    const-string v17, "According to customerization table, we only show PLMN!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    const/4 v13, 0x0

    .line 1211
    const/4 v12, 0x1

    .line 1222
    .end local v7           #mcc:Ljava/lang/String;
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsSIMRecordsLoaded:Z

    move/from16 v16, v0

    if-nez v16, :cond_b

    if-nez v4, :cond_b

    .line 1223
    const-string v15, ""

    .line 1224
    const-string v9, ""

    .line 1228
    :cond_b
    const-string v16, "showSpn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1229
    const-string v16, "spn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1230
    const-string v16, "showPlmn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1231
    const-string v16, "plmn"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1234
    .end local v12           #showPlmn:Z
    .end local v13           #showSpn:Z
    :cond_c
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1235
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1236
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1265
    .end local v4           #ignoreDisplayRule:Z
    .end local v8           #numeric:Ljava/lang/String;
    .end local v9           #plmn:Ljava/lang/String;
    .end local v10           #rule:I
    .end local v14           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    .end local v15           #spn:Ljava/lang/String;
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorInfo()V

    goto/16 :goto_1

    .line 1135
    .restart local v4       #ignoreDisplayRule:Z
    .restart local v8       #numeric:Ljava/lang/String;
    .restart local v10       #rule:I
    .restart local v14       #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    .restart local v15       #spn:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 1136
    .restart local v9       #plmn:Ljava/lang/String;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "plmn("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") name from RIL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1141
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1149
    .restart local v2       #appendixType:I
    .restart local v6       #is3Gtype:Z
    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    .line 1150
    const-string v16, "3G "

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1151
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "3G "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 1162
    .end local v2           #appendixType:I
    .end local v6           #is3Gtype:Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1164
    .restart local v13       #showSpn:Z
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1216
    .restart local v12       #showPlmn:Z
    :catch_0
    move-exception v3

    .line 1217
    .local v3, e:Ljava/lang/Exception;
    const-string v16, "GSM"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1256
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ignoreDisplayRule:Z
    .end local v8           #numeric:Ljava/lang/String;
    .end local v9           #plmn:Ljava/lang/String;
    .end local v10           #rule:I
    .end local v12           #showPlmn:Z
    .end local v13           #showSpn:Z
    .end local v14           #simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    .end local v15           #spn:Ljava/lang/String;
    :cond_12
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1257
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1258
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1259
    const-string v16, "showSpn"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1260
    const-string v16, "spn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    const-string v16, "showPlmn"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1262
    const-string v16, "plmn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8
.end method

.method protected updateSpnDisplay()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1045
    const/4 v2, 0x1

    .line 1046
    .local v2, rule:I
    const/4 v6, 0x0

    .line 1048
    .local v6, spn:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getICCRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 1049
    .local v5, simRecord:Lcom/android/internal/telephony/gsm/SIMRecords;
    if-eqz v5, :cond_0

    .line 1050
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v2

    .line 1051
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    .line 1055
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, plmn:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1059
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040307

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1061
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: emergency only and radio is on plmn=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1064
    :cond_1
    iget v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v2, v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1067
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v9, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    and-int/lit8 v9, v2, 0x1

    if-ne v9, v7, :cond_4

    move v4, v7

    .line 1069
    .local v4, showSpn:Z
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    and-int/lit8 v9, v2, 0x2

    if-ne v9, v12, :cond_5

    move v3, v7

    .line 1073
    .local v3, showPlmn:Z
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    aput-object v1, v10, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v12

    const/4 v7, 0x3

    aput-object v6, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1077
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v0, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1079
    const-string v7, "showSpn"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1080
    const-string v7, "spn"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const-string v7, "showPlmn"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1082
    const-string v7, "plmn"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1086
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #showPlmn:Z
    .end local v4           #showSpn:Z
    :cond_3
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 1087
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 1088
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 1090
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateOperatorInfo()V

    .line 1092
    return-void

    :cond_4
    move v4, v8

    .line 1067
    goto :goto_0

    .restart local v4       #showSpn:Z
    :cond_5
    move v3, v8

    .line 1069
    goto :goto_1
.end method
