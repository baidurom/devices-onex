.class public Lcom/htc/fm/uihelper/service/UIService;
.super Landroid/app/Service;
.source "UIService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;
    }
.end annotation


# static fields
.field private static final DISABLE_AUDIO_PATH:I = 0x65

.field private static final ENABLE_AUDIO_PATH:I = 0x66

#the value of this static final field might be set in the static constructor
.field private static final JAPAN_BAND:Z = false

.field private static final LITTLE_DELAY_TIME:J = 0x64L

.field private static final REQUEST_AUDIO_FOCUS:I = 0x67

.field private static final REQUEST_AUDIO_FOCUS_DELAY_TIME:J = 0x1f4L

.field private static final SWITCH_AUDIO_PATH:I = 0x68

.field private static final TAG:Ljava/lang/String; = "UIService"


# instance fields
.field private isCancelScan:Z

.field private isEnableMuteItem:Z

.field private isForceTurnOff:Z

.field private isHeadsetPlugged:Z

.field private isPrepareToScan:Z

.field private isRIVALocked:Z

.field private isScan:Z

.field private isSeeking:Z

.field private isTuningChannel:Z

.field private isTurnOffByHeadsetUnplugged:Z

.field private isTurnOn:Z

.field private isTurning:Z

.field private isWidgetForeground:Z

.field private mAirplaneReceiver:Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;

.field private mAudioHandler:Landroid/os/Handler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

.field private mCellPhoneStateListener:Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;

.field private mChannelInfo:Lcom/htc/fm/components/ChannelInfo;

.field private mFmRadioServiceIntentBuilder:Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetReceiver:Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;

.field private mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

.field private mNotificationHelper:Lcom/htc/fm/uihelper/manager/NotificationUpdater;

.field private final mOnAirplaneModeListener:Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;

.field private final mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mOnHeadsetModeListener:Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;

.field private mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;

.field private mQuickBootReceiver:Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;

.field private mScanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

.field private final mStateBroadcastReceiver:Lcom/htc/fm/receiver/FMDriverStateReceiver;

.field private mTaskManagerReceiver:Lcom/htc/fm/uihelper/receiver/TaskManagerReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x51

    .line 48
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_2

    .line 53
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/uihelper/service/UIService;->JAPAN_BAND:Z

    .line 54
    const v0, 0x128e0

    sput v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    .line 55
    const v0, 0x15f90

    sput v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    .line 60
    :goto_0
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAPAN_BAND: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/uihelper/service/UIService;->JAPAN_BAND:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 58
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/fm/uihelper/service/UIService;->JAPAN_BAND:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    .line 74
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z

    .line 76
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z

    .line 77
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isWidgetForeground:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isEnableMuteItem:Z

    .line 81
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    .line 83
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isCancelScan:Z

    .line 85
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$1;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$2;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mStateBroadcastReceiver:Lcom/htc/fm/receiver/FMDriverStateReceiver;

    .line 399
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$3;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$3;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;

    .line 433
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$4;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$4;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 459
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$5;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$5;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mOnAirplaneModeListener:Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;

    .line 473
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$6;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$6;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mOnHeadsetModeListener:Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;

    .line 843
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$7;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$7;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mTaskManagerReceiver:Lcom/htc/fm/uihelper/receiver/TaskManagerReceiver;

    .line 1107
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$8;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/service/UIService$8;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mQuickBootReceiver:Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/helper/PowerStateHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isWidgetForeground:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/fm/uihelper/service/UIService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->sendRDSToUi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/components/ChannelInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mChannelInfo:Lcom/htc/fm/components/ChannelInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/fm/uihelper/service/UIService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendAirplaneModeStateToUi(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/fm/uihelper/service/UIService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendHeadsetStateToUi(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->onTurnOn()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->isPhoneIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/fm/uihelper/service/UIService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/manager/AudioPathManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/fm/uihelper/service/UIService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->isMatchTurnOnConditions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->onTurnOff()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/fm/uihelper/service/UIService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendMuteStateToUi(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/fm/uihelper/service/UIService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendSwitchedPowerToUi(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/fm/uihelper/service/UIService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3102(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/fm/uihelper/service/UIService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->onFreqChanged(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->sendRivaLockStateToUi()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/fm/uihelper/service/UIService;)Lcom/htc/fm/uihelper/helper/LastFreqHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/fm/uihelper/service/UIService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->tune(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->useHeadsetOrSpeaker()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->disableAudioPath()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->switchSpeaker()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/fm/uihelper/service/UIService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->scan()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/fm/uihelper/service/UIService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/service/UIService;->isCancelScan:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->cancelFMMute()V

    return-void
.end method

.method private cancelFMMute()V
    .locals 3

    .prologue
    .line 521
    const-string v1, "UIService"

    const-string v2, "+cancelFMMute()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isMute()Z

    move-result v0

    .line 523
    .local v0, bUserSelectMute:Z
    if-nez v0, :cond_0

    .line 524
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getUnmuteIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    .line 526
    :cond_0
    const-string v1, "UIService"

    const-string v2, "-cancelFMMute()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private disableAudioPath()V
    .locals 2

    .prologue
    .line 501
    const-string v0, "UIService"

    const-string v1, "+disableAudioPath()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->getAudioStreamReadyIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    const-string v0, "UIService"

    const-string v1, "-disableAudioPath()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private getForeground()Z
    .locals 5

    .prologue
    .line 1099
    const-string v2, "UIService"

    const-string v3, "+getForeground()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-static {p0}, Lcom/htc/fm/utils/DeviceUtils;->isForeground(Landroid/content/Context;)Z

    move-result v0

    .line 1101
    .local v0, tAppForeground:Z
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  getForeground() app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isWidgetForeground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isWidgetForeground:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1103
    .local v1, tResult:Z
    :goto_0
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-getForeground() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return v1

    .line 1102
    .end local v1           #tResult:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMatchTurnOnConditions()Z
    .locals 6

    .prologue
    .line 1087
    const-string v3, "UIService"

    const-string v4, "+isMatchTurnOnConditions()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->getForeground()Z

    move-result v1

    .line 1089
    .local v1, tIsForeground:Z
    invoke-static {p0}, Lcom/htc/fm/utils/DeviceUtils;->isOnAirplane(Landroid/content/Context;)Z

    move-result v0

    .line 1090
    .local v0, tIsAirplaneMode:Z
    const-string v3, "UIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  isMatchTurnOnConditions() Foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v3, "UIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  isMatchTurnOnConditions() AirplaneMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v3, "UIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  isMatchTurnOnConditions() HeadsetPlugged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1094
    .local v2, tResult:Z
    :goto_0
    const-string v3, "UIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-isMatchTurnOnConditions() result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return v2

    .line 1093
    .end local v2           #tResult:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPhoneIdle()Z
    .locals 4

    .prologue
    .line 769
    const-string v1, "UIService"

    const-string v2, "+isPhoneIdle()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 771
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/htc/fm/uihelper/service/UIService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 774
    .local v0, tResult:Z
    :goto_0
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-isPhoneIdle() result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return v0

    .line 773
    .end local v0           #tResult:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFreqChanged(I)V
    .locals 7
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 553
    const-string v2, "UIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFreqChanged() freq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isScan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPrepareToScan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    if-eqz v2, :cond_0

    .line 556
    iput-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    .line 559
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    .line 560
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getSeekUpIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    .line 561
    const-string v2, "UIService"

    const-string v3, "  start to scan"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    if-eqz v2, :cond_5

    .line 566
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_2

    move v1, v3

    .line 567
    .local v1, isScanGoBack:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    if-ne p1, v2, :cond_3

    move v0, v3

    .line 568
    .local v0, isNoChannelScaned:Z
    :goto_2
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isCancelScan:Z

    if-eqz v2, :cond_4

    .line 569
    :cond_1
    iput-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    .line 570
    iput-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isCancelScan:Z

    .line 571
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/service/UIService;->scanComplete(Ljava/util/List;)V

    .line 572
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->cancelFMMute()V

    .line 574
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->sendScanFinishToUi()V

    goto :goto_0

    .end local v0           #isNoChannelScaned:Z
    .end local v1           #isScanGoBack:Z
    :cond_2
    move v1, v4

    .line 566
    goto :goto_1

    .restart local v1       #isScanGoBack:Z
    :cond_3
    move v0, v4

    .line 567
    goto :goto_2

    .line 576
    .restart local v0       #isNoChannelScaned:Z
    :cond_4
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const-string v2, "UIService"

    const-string v3, "  scanning Seek Up..."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getSeekUpIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    goto :goto_0

    .line 581
    .end local v0           #isNoChannelScaned:Z
    .end local v1           #isScanGoBack:Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->saveLastFreq(I)V

    goto :goto_0
.end method

.method private onTurnOff()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "UIService"

    const-string v1, "onTurnOff()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->stopForeground(Z)V

    .line 619
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mNotificationHelper:Lcom/htc/fm/uihelper/manager/NotificationUpdater;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/manager/NotificationUpdater;->cancelNotification()V

    .line 620
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->disable()V

    .line 621
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->unregisterPhoneStateListener()V

    .line 622
    return-void
.end method

.method private onTurnOn()V
    .locals 5

    .prologue
    .line 595
    const-string v2, "UIService"

    const-string v3, "onTurnOn()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService;->mNotificationHelper:Lcom/htc/fm/uihelper/manager/NotificationUpdater;

    sget v4, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v3, v4}, Lcom/htc/fm/uihelper/manager/NotificationUpdater;->getNotification(I)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/fm/uihelper/service/UIService;->startForeground(ILandroid/app/Notification;)V

    .line 597
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->enable()Z

    .line 598
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->hasFreq()Z

    move-result v0

    .line 599
    .local v0, hasFreq:Z
    if-eqz v0, :cond_0

    .line 600
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->load()I

    move-result v1

    .line 601
    .local v1, lastFreq:I
    invoke-direct {p0, v1}, Lcom/htc/fm/uihelper/service/UIService;->tune(I)V

    .line 602
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  onTurnOn() freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .end local v1           #lastFreq:I
    :goto_0
    return-void

    .line 604
    :cond_0
    sget v2, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/service/UIService;->tune(I)V

    .line 605
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  onTurnOn() init_freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seek to first available channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getSeekUpIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private preparePhoneStateListener()V
    .locals 3

    .prologue
    .line 795
    const-string v0, "UIService"

    const-string v1, "+preparePhoneStateListener()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mCellPhoneStateListener:Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;-><init>(Lcom/htc/fm/uihelper/service/UIService;Lcom/htc/fm/uihelper/service/UIService$1;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mCellPhoneStateListener:Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 800
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 802
    :cond_1
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-preparePhoneStateListener() listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mCellPhoneStateListener:Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method private reactIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 715
    const-string v2, "UIService"

    const-string v3, "reactIntent()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 717
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 718
    .local v1, tMessage:Landroid/os/Message;
    const-string v2, "command"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 719
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 721
    return-void
.end method

.method private register()V
    .locals 2

    .prologue
    .line 675
    const-string v0, "UIService"

    const-string v1, "register()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mStateBroadcastReceiver:Lcom/htc/fm/receiver/FMDriverStateReceiver;

    sget-object v1, Lcom/htc/fm/receiver/FMDriverStateReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAirplaneReceiver:Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;

    invoke-static {}, Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;->getAirplaneModeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 678
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mHeadsetReceiver:Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;

    invoke-static {}, Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;->getHeadsetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0, v0}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->registerMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 680
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mTaskManagerReceiver:Lcom/htc/fm/uihelper/receiver/TaskManagerReceiver;

    sget-object v1, Lcom/htc/fm/uihelper/receiver/TaskManagerReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 681
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mQuickBootReceiver:Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;

    sget-object v1, Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 682
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .prologue
    .line 806
    const-string v0, "UIService"

    const-string v1, "+registerPhoneStateListener()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->preparePhoneStateListener()V

    .line 808
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mCellPhoneStateListener:Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 809
    const-string v0, "UIService"

    const-string v1, "-registerPhoneStateListener()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method private saveLastFreq(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 586
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLastFreq() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    if-gt v0, p1, :cond_0

    sget v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    if-gt p1, v0, :cond_0

    .line 588
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  saveLastFreq() save_freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    invoke-virtual {v0, p1}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->save(I)V

    .line 590
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mNotificationHelper:Lcom/htc/fm/uihelper/manager/NotificationUpdater;

    invoke-virtual {v0, p1}, Lcom/htc/fm/uihelper/manager/NotificationUpdater;->updateNotification(I)V

    .line 592
    :cond_0
    return-void
.end method

.method private scan()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    const-string v1, "UIService"

    const-string v2, "+scan()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mScanList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 509
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    .line 510
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    .line 511
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isCancelScan:Z

    .line 512
    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v1}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isMute()Z

    move-result v0

    .line 513
    .local v0, bUserSelectMute:Z
    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getMuteIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    .line 516
    :cond_0
    sget v1, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-direct {p0, v1}, Lcom/htc/fm/uihelper/service/UIService;->tune(I)V

    .line 517
    const-string v1, "UIService"

    const-string v2, "-scan()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private scanComplete(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 530
    const-string v5, "UIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+scanComplete() count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/htc/fm/uihelper/service/UIService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 532
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/htc/fm/provider/FMRadioPreset$FMRadioPresetColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    new-instance v0, Ljava/lang/Integer;

    sget v5, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    add-int/lit16 v5, v5, 0x3e8

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 535
    .local v0, FREQ_NORESULT:Ljava/lang/Integer;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 536
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 539
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 540
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/fm/uihelper/service/UIService;->tune(I)V

    .line 541
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v1, contentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 543
    .local v2, freq:Ljava/lang/Integer;
    const-string v5, "_id"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    sget-object v5, Lcom/htc/fm/provider/FMRadioPreset$FMRadioPresetColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 547
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #freq:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    invoke-virtual {v5}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->load()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/fm/uihelper/service/UIService;->tune(I)V

    .line 549
    :cond_2
    const-string v5, "UIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-scanComplete() count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method private sendAirplaneModeStateToUi(Z)V
    .locals 4
    .parameter "pIsAirplaneMode"

    .prologue
    .line 787
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAirplaneModeStateToUi() isAirplaneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 789
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3f3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    const-string v1, "airplane_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 791
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 792
    return-void
.end method

.method private sendHeadsetStateToUi(Z)V
    .locals 4
    .parameter "pIsHeadsetPlugged"

    .prologue
    .line 779
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendHeadsetStateToUi() isHeadsetPlugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 781
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    const-string v1, "headset_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 783
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 784
    return-void
.end method

.method private sendHideScanDialogToUi()V
    .locals 3

    .prologue
    .line 993
    const-string v1, "UIService"

    const-string v2, "sendHideScanDialogToUi()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 995
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3f8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 996
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 997
    return-void
.end method

.method private sendMessageToUi(Landroid/os/Bundle;)V
    .locals 5
    .parameter "pBundle"

    .prologue
    .line 741
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageToUi() bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.fmradio.uiupdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v1, tIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mStateBroadcastReceiver:Lcom/htc/fm/receiver/FMDriverStateReceiver;

    invoke-virtual {v2}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->getFreq()I

    move-result v0

    .line 744
    .local v0, freq:I
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 745
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;->load()I

    move-result v0

    .line 747
    :cond_0
    const-string v2, "freq"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    const-string v2, "rssi"

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService;->mStateBroadcastReceiver:Lcom/htc/fm/receiver/FMDriverStateReceiver;

    invoke-virtual {v3}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->getRssi()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 749
    const-string v2, "rds"

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService;->mChannelInfo:Lcom/htc/fm/components/ChannelInfo;

    invoke-virtual {v3, v0}, Lcom/htc/fm/components/ChannelInfo;->getChannelString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v2, "stereo"

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService;->mStateBroadcastReceiver:Lcom/htc/fm/receiver/FMDriverStateReceiver;

    invoke-virtual {v3}, Lcom/htc/fm/receiver/FMDriverStateReceiver;->isStereo()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 751
    const-string v2, "speaker"

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isSpeaker()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    const-string v2, "riva_lock_state"

    iget-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 753
    const-string v2, "mute_item_enable_state"

    iget-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isEnableMuteItem:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v1}, Lcom/htc/fm/uihelper/service/UIService;->sendBroadcast(Landroid/content/Intent;)V

    .line 756
    return-void
.end method

.method private sendMuteStateToUi(Z)V
    .locals 4
    .parameter "isMute"

    .prologue
    .line 979
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMuteStateToUi() isMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fm/uihelper/service/UIService;->isEnableMuteItem:Z

    .line 981
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 982
    .local v0, tBundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 983
    return-void

    .line 980
    .end local v0           #tBundle:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendRDSToUi()V
    .locals 3

    .prologue
    .line 1000
    const-string v1, "UIService"

    const-string v2, "sendRDSToUi()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1002
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1003
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 1004
    return-void
.end method

.method private sendRivaLockStateToUi()V
    .locals 4

    .prologue
    .line 972
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRivaLockStateToUi() isRivaLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 974
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3f5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 975
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 976
    return-void
.end method

.method private sendScanFinishToUi()V
    .locals 3

    .prologue
    .line 986
    const-string v1, "UIService"

    const-string v2, "sendScanFinishToUi()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 988
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 989
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 990
    return-void
.end method

.method private sendSwitchedPowerToUi(Z)V
    .locals 4
    .parameter "pIsPowerOn"

    .prologue
    .line 959
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSwitchedPowerToUi() isPowerOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 961
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 962
    const-string v1, "power"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    const-string v1, "turn_on_string"

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/service/UIService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v1, "turn_off_string"

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/service/UIService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v1, "scanning_string"

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/service/UIService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v1, "need_headset_string"

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/service/UIService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v1, "airplane_mode_on_string"

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/service/UIService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 969
    return-void
.end method

.method private sendSwitchingPowerToUi(Z)V
    .locals 4
    .parameter "pIsPowerOn"

    .prologue
    .line 951
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSwitchingPowerToUi() isPowerOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 953
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 954
    const-string v1, "power"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 956
    return-void
.end method

.method private sendTimeoutEventToUi(I)V
    .locals 4
    .parameter "pCommandProcessing"

    .prologue
    .line 1007
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTimeoutEventToUi() commandProcessing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1009
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1010
    const-string v1, "timeout_command"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 1012
    return-void
.end method

.method private sendToRadioService(Landroid/content/Intent;)V
    .locals 8
    .parameter "pIntent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 861
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+sendToRadioService() intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    if-eqz p1, :cond_0

    .line 863
    const-string v2, "command"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 864
    .local v0, tCommand:I
    const-string v2, "freq"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 865
    .local v1, tFreq:I
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  sendToRadioService() info command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  sendToRadioService() info isRIVALocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  sendToRadioService() info isTurning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isTurnOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isForceTurnOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  sendToRadioService() info isSeeking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  sendToRadioService() info isTuningChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isRIVALocked:Z

    if-nez v2, :cond_9

    .line 871
    packed-switch v0, :pswitch_data_0

    .line 916
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    if-eqz v2, :cond_8

    .line 917
    const-string v2, "UIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  sendToRadioService() send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    packed-switch v0, :pswitch_data_1

    .line 937
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v2, p1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->add(Landroid/content/Intent;)V

    .line 947
    .end local v0           #tCommand:I
    .end local v1           #tFreq:I
    :cond_0
    :goto_0
    const-string v2, "UIService"

    const-string v3, "-sendToRadioService()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void

    .line 873
    .restart local v0       #tCommand:I
    .restart local v1       #tFreq:I
    :pswitch_0
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    if-eqz v2, :cond_2

    .line 874
    iput-boolean v5, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    .line 876
    invoke-direct {p0, v7}, Lcom/htc/fm/uihelper/service/UIService;->sendSwitchingPowerToUi(Z)V

    .line 878
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() send WHAT_RSSI_OFF"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getRssiOffIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->add(Landroid/content/Intent;)V

    .line 881
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z

    if-nez v2, :cond_1

    .line 882
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() disableAudioPath()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->disableAudioPath()V

    .line 886
    :cond_1
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() send WHAT_TURN_OFF"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v2, p1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->add(Landroid/content/Intent;)V

    goto :goto_0

    .line 889
    :cond_2
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() Does not send \'turn off\' to queue."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :pswitch_1
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    if-nez v2, :cond_5

    .line 894
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->isMatchTurnOnConditions()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 895
    iput-boolean v5, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    .line 897
    invoke-direct {p0, v5}, Lcom/htc/fm/uihelper/service/UIService;->sendSwitchingPowerToUi(Z)V

    .line 899
    sget-boolean v2, Lcom/htc/fm/uihelper/service/UIService;->JAPAN_BAND:Z

    if-eqz v2, :cond_3

    .line 900
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() send WHAT_TURN_ON (JAPAN BAND)"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v2, "freq"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    :goto_1
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v2, p1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->add(Landroid/content/Intent;)V

    goto :goto_0

    .line 903
    :cond_3
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() send WHAT_TURN_ON (EUROPE BAND)"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v2, "freq"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 908
    :cond_4
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() Does not send \'turn on\' to queue.(not match conditions)"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/service/UIService;->sendSwitchedPowerToUi(Z)V

    goto/16 :goto_0

    .line 912
    :cond_5
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() Does not send \'turn on\' to queue."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 921
    :pswitch_2
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z

    if-nez v2, :cond_6

    .line 922
    iput-boolean v5, p0, Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z

    .line 923
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v2, p1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->add(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 925
    :cond_6
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() Does not send \'seek_up/seek_down\' to queue."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 929
    :pswitch_3
    iget-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z

    if-nez v2, :cond_7

    .line 930
    iput-boolean v5, p0, Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z

    .line 931
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-virtual {v2, p1}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;->add(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 933
    :cond_7
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() Does not send \'tune\' to queue."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 940
    :cond_8
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() Does not send command to radio service."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 944
    :cond_9
    const-string v2, "UIService"

    const-string v3, "  sendToRadioService() Does not send command to radio service."

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 871
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 918
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sendUnlockStateMachineFlagToUi(I)V
    .locals 4
    .parameter "pCommand"

    .prologue
    .line 1015
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUnlockStateMachineFlagToUi() command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v0, tBundle:Landroid/os/Bundle;
    const-string v1, "command"

    const/16 v2, 0x3f7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    const-string v1, "unlock_state_machine_flag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1019
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 1020
    return-void
.end method

.method private switchFMRadioState(Z)V
    .locals 4
    .parameter "isTurnOff"

    .prologue
    .line 639
    const-string v1, "UIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchFMRadioState() isTurnOff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz p1, :cond_0

    .line 642
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getTurnOffIntent()Landroid/content/Intent;

    move-result-object v0

    .line 650
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    .line 651
    return-void

    .line 644
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    sget-boolean v1, Lcom/htc/fm/uihelper/service/UIService;->JAPAN_BAND:Z

    if-eqz v1, :cond_1

    .line 645
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getTurnOnIntent(I)Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 647
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getTurnOnIntent(I)Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private switchSpeaker()V
    .locals 4

    .prologue
    .line 625
    const-string v2, "UIService"

    const-string v3, "switchSpeaker()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->switchSpeaker()Landroid/content/Intent;

    move-result-object v0

    .line 628
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 629
    .local v1, tBundle:Landroid/os/Bundle;
    const-string v2, "command"

    const/16 v3, 0x3f1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 630
    const-string v2, "speaker"

    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isSpeaker()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 631
    invoke-direct {p0, v1}, Lcom/htc/fm/uihelper/service/UIService;->sendMessageToUi(Landroid/os/Bundle;)V

    .line 633
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendBroadcast(Landroid/content/Intent;)V

    .line 636
    :cond_0
    return-void
.end method

.method private tune(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 612
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tune() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {p1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getTuneIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    .line 614
    return-void
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 759
    const-string v0, "UIService"

    const-string v1, "unregister()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mStateBroadcastReceiver:Lcom/htc/fm/receiver/FMDriverStateReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 761
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAirplaneReceiver:Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 762
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mHeadsetReceiver:Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 763
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0, v0}, Lcom/htc/fm/uihelper/receiver/MediaButtonsReceiver;->unregisterMediaButtonReceiver(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 764
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mTaskManagerReceiver:Lcom/htc/fm/uihelper/receiver/TaskManagerReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 765
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mQuickBootReceiver:Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 766
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 813
    const-string v0, "UIService"

    const-string v1, "+unregisterPhoneStateListener()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->preparePhoneStateListener()V

    .line 815
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mCellPhoneStateListener:Lcom/htc/fm/uihelper/service/UIService$CellPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 816
    const-string v0, "UIService"

    const-string v1, "-unregisterPhoneStateListener()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private useHeadsetOrSpeaker()V
    .locals 3

    .prologue
    .line 491
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useHeadsetOrSpeaker() isSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isSpeaker()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isSpeaker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->getAudioStreamPathIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendBroadcast(Landroid/content/Intent;)V

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->getAudioStreamPathIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 686
    const-string v0, "UIService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 655
    const-string v0, "UIService"

    const-string v1, "UIService.onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 657
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;

    .line 658
    new-instance v0, Lcom/htc/fm/uihelper/manager/AudioPathManager;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/fm/uihelper/manager/AudioPathManager;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    .line 659
    new-instance v0, Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/helper/LastFreqHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mLastFreqHelper:Lcom/htc/fm/uihelper/helper/LastFreqHelper;

    .line 660
    new-instance v0, Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/service/UIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    .line 661
    new-instance v0, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-direct {v0, p0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;-><init>(Landroid/content/Context;Lcom/htc/fm/uihelper/manager/AudioPathManager;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mFmRadioServiceIntentBuilder:Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;

    .line 662
    new-instance v0, Lcom/htc/fm/uihelper/manager/NotificationUpdater;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/manager/NotificationUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mNotificationHelper:Lcom/htc/fm/uihelper/manager/NotificationUpdater;

    .line 663
    new-instance v0, Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mOnAirplaneModeListener:Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;

    invoke-direct {v0, v1}, Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;-><init>(Lcom/htc/fm/uihelper/receiver/OnAirplaneModeListener;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mAirplaneReceiver:Lcom/htc/fm/uihelper/receiver/AirplaneReceiver;

    .line 665
    invoke-static {p0}, Lcom/htc/fm/utils/DeviceUtils;->isWiredHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isHeadsetPlugged:Z

    .line 666
    new-instance v0, Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;

    iget-object v1, p0, Lcom/htc/fm/uihelper/service/UIService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/fm/uihelper/service/UIService;->mOnHeadsetModeListener:Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;-><init>(Landroid/media/AudioManager;Lcom/htc/fm/uihelper/receiver/OnHeadsetModeListener;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mHeadsetReceiver:Lcom/htc/fm/uihelper/receiver/HeadsetReceiver;

    .line 668
    new-instance v0, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    invoke-direct {v0, p0}, Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;-><init>(Lcom/htc/fm/uihelper/service/UIService;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mServiceQueueController:Lcom/htc/fm/uihelper/queue/RadioServiceQueueController;

    .line 670
    new-instance v0, Lcom/htc/fm/components/ChannelInfo;

    invoke-direct {v0, p0}, Lcom/htc/fm/components/ChannelInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mChannelInfo:Lcom/htc/fm/components/ChannelInfo;

    .line 671
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->register()V

    .line 672
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 725
    const-string v0, "UIService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->unregister()V

    .line 728
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0, v2}, Lcom/htc/fm/uihelper/service/UIService;->sendSwitchedPowerToUi(Z)V

    .line 731
    iput-boolean v2, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z

    .line 732
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService;->mPowerStateHelper:Lcom/htc/fm/uihelper/helper/PowerStateHelper;

    invoke-virtual {v0, v2}, Lcom/htc/fm/uihelper/helper/PowerStateHelper;->save(Z)V

    .line 733
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->onTurnOff()V

    .line 734
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->disableAudioPath()V

    .line 735
    invoke-static {}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->getTurnOffIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fm/uihelper/service/UIService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 737
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 738
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x0

    .line 692
    const-string v3, "UIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand() intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    if-eqz p1, :cond_0

    .line 694
    iget-object v3, p0, Lcom/htc/fm/uihelper/service/UIService;->mFmRadioServiceIntentBuilder:Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;

    invoke-virtual {v3, p1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->dispatchTarget(Landroid/content/Intent;)I

    move-result v2

    .line 695
    .local v2, target:I
    packed-switch v2, :pswitch_data_0

    .line 711
    .end local v2           #target:I
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 697
    .restart local v2       #target:I
    :pswitch_1
    const-string v3, "command"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 698
    .local v0, tCommand:I
    const-string v3, "freq"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 699
    .local v1, tFreq:I
    const-string v3, "UIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  onStartCommand() DISPATCH_FMSERVICE what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 701
    iput-boolean v6, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z

    .line 703
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendToRadioService(Landroid/content/Intent;)V

    goto :goto_0

    .line 706
    .end local v0           #tCommand:I
    .end local v1           #tFreq:I
    :pswitch_2
    const-string v3, "UIService"

    const-string v4, "  onStartCommand() DISPATCH_INTERNAL"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->reactIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public timeoutEvent(I)V
    .locals 4
    .parameter "pCommandProcessing"

    .prologue
    const/4 v3, 0x0

    .line 1023
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+timeoutEvent() commandProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    packed-switch p1, :pswitch_data_0

    .line 1055
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendTimeoutEventToUi(I)V

    .line 1056
    const-string v0, "UIService"

    const-string v1, "-timeoutEvent()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void

    .line 1026
    :pswitch_0
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    goto :goto_0

    .line 1029
    :pswitch_1
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    .line 1030
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->useHeadsetOrSpeaker()V

    goto :goto_0

    .line 1034
    :pswitch_2
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z

    .line 1035
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    if-eqz v0, :cond_0

    .line 1036
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isScan:Z

    .line 1039
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->cancelFMMute()V

    .line 1040
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->sendHideScanDialogToUi()V

    goto :goto_0

    .line 1044
    :pswitch_3
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z

    .line 1045
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    if-eqz v0, :cond_0

    .line 1046
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    .line 1049
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->cancelFMMute()V

    .line 1050
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->sendHideScanDialogToUi()V

    goto :goto_0

    .line 1024
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public unlockStateMachineFlag(I)V
    .locals 4
    .parameter "pCommand"

    .prologue
    const/4 v3, 0x0

    .line 1060
    const-string v0, "UIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+unlockStateMachineFlag() command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    packed-switch p1, :pswitch_data_0

    .line 1082
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/service/UIService;->sendUnlockStateMachineFlagToUi(I)V

    .line 1083
    const-string v0, "UIService"

    const-string v1, "-unlockStateMachineFlag()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-void

    .line 1064
    :pswitch_0
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isTurning:Z

    goto :goto_0

    .line 1068
    :pswitch_1
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isSeeking:Z

    goto :goto_0

    .line 1071
    :pswitch_2
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isTuningChannel:Z

    .line 1072
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    if-eqz v0, :cond_0

    .line 1073
    iput-boolean v3, p0, Lcom/htc/fm/uihelper/service/UIService;->isPrepareToScan:Z

    .line 1076
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->cancelFMMute()V

    .line 1077
    invoke-direct {p0}, Lcom/htc/fm/uihelper/service/UIService;->sendHideScanDialogToUi()V

    goto :goto_0

    .line 1061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
