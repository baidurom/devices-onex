.class public final Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "HtcCdmaSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final DBG:Z = true

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x6a

.field private static final EVENT_CB_ON_SIM:I = 0x21

.field private static final EVENT_DELAY_CFU_QUERY:I = 0x6c

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CB_CHANNEL_DONE:I = 0x23

.field private static final EVENT_GET_CB_DONE:I = 0x22

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_DONE:I = 0x25

.field private static final EVENT_GET_EFLP_DONE:I = 0x68

.field private static final EVENT_GET_FPLMN_DONE:I = 0x6b

.field private static final EVENT_GET_HTC_SIM_TYPES:I = 0x27

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SIM_TYPES_DONE:I = 0x65

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0x66

.field private static final EVENT_GET_UIMID_DONE:I = 0x26

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PBK_READY:I = 0x6d

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CB_CHANNEL_DONE:I = 0x24

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_EFLP_DONE:I = 0x69

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_SUBSIDY_LOCK_DONE:I = 0x67

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final EVENT_UPDATE_MCC_THREAD:I = 0x6e

.field static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSIMRecords"

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field callForwardingEnabled:Z

.field cfuQueried:Z

.field disableCfuIcon:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field imsi:Ljava/lang/String;

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfCsp:[B

.field mFPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkSelectionEnabled:Z

.field mPendingIccLoaded:Z

.field private mSimSmsRecordIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 114
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 116
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 120
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 121
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 125
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 130
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 132
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 2681
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 239
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 241
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 242
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 244
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 247
    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 250
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6d

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.types"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 262
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method private appendFileId(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 2427
    move v1, p1

    .line 2429
    .local v1, newEfid:I
    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_0

    .line 2430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2431
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2437
    .local v0, fileid:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2439
    .end local v0           #fileid:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return v1
.end method

.method private dropSimPbkEntries()V
    .locals 6

    .prologue
    .line 2654
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 2656
    .local v2, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_1

    .line 2657
    const-string v3, "dropSimPbkEntries"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2658
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2661
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntriesExt(I)V

    .line 2664
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_REFRESH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2665
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "phone_type"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2667
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2679
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    return-void

    .line 2669
    .restart local v2       #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V

    .line 2670
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SIM_REFRESH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2673
    .end local v2           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2675
    :catch_1
    move-exception v0

    .line 2676
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchMWIfromUE()V
    .locals 3

    .prologue
    .line 2058
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2060
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "mwi_status_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 2063
    return-void
.end method

.method private fetchSimRecords()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2234
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 2237
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 2238
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 2240
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCdmaSIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2243
    const-string v1, "SimRecords"

    const-string v2, "mSimulator = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 2248
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2249
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2251
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2252
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2255
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2257
    :cond_1
    const/16 v1, 0x6f31

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2258
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2264
    :cond_2
    const/16 v1, 0x6f7b

    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2265
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2285
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 2286
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2287
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2289
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2290
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2292
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2293
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2296
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2297
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2304
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2307
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2311
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2312
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2313
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2314
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2317
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 2319
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2320
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2322
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2323
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2325
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2326
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2328
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2329
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2332
    const/16 v1, 0x6f15

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2333
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2344
    const/16 v1, 0x6f45

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2345
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2368
    return-void
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2619
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2620
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 5
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 2467
    if-eqz p1, :cond_0

    .line 2468
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2471
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcCdmaSIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2540
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2542
    :goto_0
    return-void

    .line 2473
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2475
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2477
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2479
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2482
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 2483
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2484
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 2485
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2492
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2494
    .end local v0           #data:[B
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2496
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2498
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2502
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    goto :goto_0

    .line 2506
    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 2507
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2508
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2515
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2517
    .end local v0           #data:[B
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2519
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2521
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2525
    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2526
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2527
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2537
    .end local v0           #data:[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2534
    :cond_3
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCB([B)V
    .locals 9
    .parameter "ba"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1957
    aget-byte v4, p1, v7

    if-eqz v4, :cond_0

    .line 1958
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_0
    aget-byte v4, p1, v7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1963
    array-length v1, p1

    .line 1967
    .local v1, n:I
    add-int/lit8 v4, v1, -0x1

    new-array v2, v4, [B

    .line 1968
    .local v2, nba:[B
    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v8, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1970
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1972
    .local v3, pdu:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;

    move-result-object v0

    .line 1975
    .local v0, message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    .end local v0           #message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    .end local v1           #n:I
    .end local v2           #nba:[B
    .end local v3           #pdu:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 1833
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update file efid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    sparse-switch p1, :sswitch_data_0

    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1862
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 1865
    :goto_0
    return-void

    .line 1836
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1837
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1841
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1842
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1848
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    .line 1849
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 1853
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1834
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_3
        0x6f40 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimChanged()V
    .locals 6

    .prologue
    .line 2022
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2024
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "sim_imsi_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2025
    .local v0, lastIMSI:Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2027
    .local v2, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sim_imsi_key"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2028
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2030
    const-string v3, "mwi_status_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2032
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2035
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "ruim.sim.change"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2053
    return-void

    .line 2037
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.change"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2042
    :cond_2
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM not change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2045
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "ruim.sim.change"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2047
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.change"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimRefresh([I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1868
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1869
    :cond_0
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1907
    :goto_0
    return-void

    .line 1873
    :cond_1
    aget v1, p1, v3

    sparse-switch v1, :sswitch_data_0

    .line 1904
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1875
    :sswitch_0
    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1877
    const/4 v1, 0x1

    aget v0, p1, v1

    .line 1878
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 1884
    .end local v0           #efid:I
    :sswitch_1
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1886
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1887
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 1888
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 1891
    :sswitch_2
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1892
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1900
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1873
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSms(I[B)V
    .locals 7
    .parameter "nRecordIndex"
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 1910
    aget-byte v3, p2, v6

    if-eqz v3, :cond_0

    .line 1911
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_0
    aget-byte v3, p2, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1916
    array-length v1, p2

    .line 1920
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 1921
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p2, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1922
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 1926
    .local v0, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->setIndexOnIcc(I)V

    .line 1929
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1931
    .end local v0           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1985
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1987
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1988
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 1990
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 1991
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1997
    array-length v4, v0

    .line 2001
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2002
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2003
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v3

    .line 2005
    .local v3, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2010
    aput-byte v10, v0, v9

    .line 1987
    .end local v3           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2018
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private htcOnAllRecordsLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2179
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2603
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 2604
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isFfBeTreatedAsUnknownCount()Z
    .locals 2

    .prologue
    .line 2609
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2408
    if-nez p1, :cond_1

    .line 2421
    :cond_0
    :goto_0
    return v2

    .line 2410
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 2411
    goto :goto_0

    .line 2414
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2415
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2416
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2417
    goto :goto_0
.end method

.method private onSimReady()V
    .locals 3

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->updateStateProperty(Lcom/android/internal/telephony/IccCard$State;)V

    .line 2224
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 2227
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 2229
    return-void
.end method

.method private parseEfFplmn([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 2584
    if-eqz p1, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 2585
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 2587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2588
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2590
    .local v1, plmn:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_FPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2593
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2596
    .end local v0           #i:I
    .end local v1           #plmn:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 2551
    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 2553
    .local v3, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    const/4 v2, 0x0

    .line 2556
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2557
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 2558
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v2

    .line 2563
    :cond_0
    if-nez v2, :cond_3

    .line 2579
    :cond_1
    return-void

    .line 2556
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_0

    .line 2567
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v0, 0x2

    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 2571
    const/4 v4, 0x3

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2574
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 2575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_SPDI network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2576
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setLocaleFromMccIfNeeded(I)V
    .locals 4
    .parameter "mcc"

    .prologue
    .line 784
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, country:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    .line 2189
    :cond_0
    return-void
.end method

.method private setTimezoneFromMccIfNeeded(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    .line 766
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 768
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 772
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 774
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 777
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 2
    .parameter "spn"

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2204
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "voiceMailNum is empty!! try to search default value from xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isVoiceMailFixed:Z

    .line 2207
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2212
    :cond_0
    return-void
.end method

.method private updateMWItoUE()V
    .locals 4

    .prologue
    .line 2066
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2068
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2069
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwi_status_key"

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2070
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2071
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterPBReadyNotify(Landroid/os/Handler;)V

    .line 274
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 275
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 276
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 277
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 2384
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2387
    :cond_0
    const/4 v0, 0x2

    .line 2401
    .local v0, rule:I
    :cond_1
    :goto_0
    return v0

    .line 2388
    .end local v0           #rule:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2389
    const/4 v0, 0x1

    .line 2390
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2392
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2395
    .end local v0           #rule:I
    :cond_3
    const/4 v0, 0x2

    .line 2396
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 2398
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method protected getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2698
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 741
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-nez v1, :cond_1

    .line 742
    :cond_0
    const/4 v1, 0x0

    .line 758
    :goto_0
    return-object v1

    .line 745
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v1, :cond_2

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 756
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 758
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 2
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 2635
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2636
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 2638
    return-void
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 556
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 558
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 559
    const-string v3, "getVoiceCallForwardingFlag return false due to airplanemode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 560
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 563
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 556
    goto :goto_0

    .line 563
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, aplhaTag:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 469
    .end local v0           #aplhaTag:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .parameter "msg"

    .prologue
    .line 795
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v2, :cond_1

    .line 796
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HtcCdmaSIMRecords drop event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    const/16 v24, 0x0

    .line 807
    .local v24, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v2, :sswitch_data_0

    .line 1826
    :cond_2
    :goto_1
    if-eqz v24, :cond_0

    .line 1827
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 809
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1821
    :catch_0
    move-exception v18

    .line 1823
    .local v18, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Exception parsing SIM record"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1826
    if-eqz v24, :cond_0

    goto :goto_2

    .line 813
    .end local v18           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1826
    :catchall_0
    move-exception v2

    if-eqz v24, :cond_3

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    .line 1826
    :cond_3
    throw v2

    .line 820
    :sswitch_2
    const/16 v24, 0x1

    .line 822
    :try_start_4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 824
    .local v10, ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 828
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    if-eqz v2, :cond_4

    .line 831
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    aget-byte v2, v2, v19

    and-int/lit16 v0, v2, 0xff

    move/from16 v36, v0

    .line 835
    .local v36, serviceGroupCode:I
    const/16 v2, 0xc0

    move/from16 v0, v36

    if-ne v0, v2, :cond_7

    .line 836
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: mEfCsp[i+1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v6, v19, 0x1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v4, v19, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_6

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 862
    .end local v19           #i:I
    .end local v36           #serviceGroupCode:I
    :cond_4
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: mNetworkSelectionEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v32

    .line 868
    .local v32, networkSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    if-nez v2, :cond_2

    .line 869
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 871
    .local v38, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 872
    .local v17, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "network_selection_key"

    const-string v4, ""

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "network_selection_act_key"

    const-string v4, "-1"

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 878
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_5

    .line 879
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 849
    .end local v17           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v32           #networkSelection:Ljava/lang/String;
    .end local v38           #sp:Landroid/content/SharedPreferences;
    .restart local v19       #i:I
    .restart local v36       #serviceGroupCode:I
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 833
    :cond_7
    add-int/lit8 v19, v19, 0x2

    goto/16 :goto_3

    .line 892
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v19           #i:I
    .end local v36           #serviceGroupCode:I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 893
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 894
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "automatic network selection: failed!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 896
    :cond_8
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "automatic network selection: succeeded!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 902
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const/16 v24, 0x1

    .line 904
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 906
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 907
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 911
    :cond_9
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_b

    .line 916
    :cond_a
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 920
    :cond_b
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcCdmaSIMRecords, IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v2, :cond_c

    .line 927
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 928
    .local v29, mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 935
    .end local v29           #mcc:I
    :cond_c
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    .line 943
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 950
    .restart local v29       #mcc:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimChanged()V

    goto/16 :goto_1

    .line 929
    .end local v29           #mcc:I
    :catch_1
    move-exception v16

    .line 930
    .local v16, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 931
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 956
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :sswitch_5
    const/16 v24, 0x1

    .line 958
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 959
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 961
    .local v13, data:[B
    const/16 v25, 0x0

    .line 962
    .local v25, isValidMbdn:Z
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 964
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MBI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 974
    const/16 v25, 0x1

    .line 985
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 988
    if-eqz v25, :cond_10

    .line 991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    if-lez v2, :cond_f

    .line 993
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 998
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 999
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1005
    :cond_10
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1013
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v25           #isValidMbdn:Z
    :sswitch_6
    const/16 v24, 0x1

    .line 1015
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1017
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 1019
    const-string v4, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing EF"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_11

    const-string v2, "[MAILBOX]"

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 1029
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    .line 1032
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1033
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1019
    :cond_11
    const-string v2, "[MBDN]"

    goto :goto_6

    .line 1040
    :cond_12
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1042
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_13

    const-string v2, " EF[MAILBOX]"

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_14

    .line 1049
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1050
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1055
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 1056
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1042
    :cond_13
    const-string v2, " EF[MBDN]"

    goto :goto_7

    .line 1063
    :cond_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1064
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1068
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v24, 0x1

    .line 1070
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1072
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    .line 1073
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1078
    :cond_15
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a

    .line 1080
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    .line 1082
    .local v35, results:[Ljava/lang/String;
    if-eqz v35, :cond_19

    move-object/from16 v0, v35

    array-length v2, v0

    const/4 v4, 0x5

    if-lt v2, v4, :cond_19

    .line 1084
    const/4 v2, 0x0

    aget-object v2, v35, v2

    if-eqz v2, :cond_16

    .line 1086
    const/4 v2, 0x0

    aget-object v2, v35, v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v31

    .line 1087
    .local v31, name:[B
    const/4 v2, 0x0

    move-object/from16 v0, v31

    array-length v4, v0

    move-object/from16 v0, v31

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1090
    .end local v31           #name:[B
    :cond_16
    const/4 v2, 0x1

    aget-object v2, v35, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 1093
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msisdnTag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 1096
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msisdn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .end local v35           #results:[Ljava/lang/String;
    :cond_18
    :goto_8
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSISDN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1100
    .restart local v35       #results:[Ljava/lang/String;
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1101
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    goto :goto_8

    .line 1106
    .end local v35           #results:[Ljava/lang/String;
    :cond_1a
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1121
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v24, 0x0

    .line 1122
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1124
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    .line 1125
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1127
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1131
    :cond_1b
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 1135
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    goto/16 :goto_1

    .line 1142
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const/16 v24, 0x1

    .line 1144
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1145
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1147
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1151
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MWIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 1156
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_1c

    .line 1157
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Uninitialized record MWIS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1162
    :cond_1c
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    const/16 v44, 0x1

    .line 1163
    .local v44, voiceMailWaiting:Z
    :goto_9
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 1172
    if-eqz v44, :cond_2

    .line 1173
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1174
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    const/16 v4, 0xff

    if-ne v2, v4, :cond_2

    .line 1175
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1162
    .end local v44           #voiceMailWaiting:Z
    :cond_1d
    const/16 v44, 0x0

    goto :goto_9

    .line 1178
    .restart local v44       #voiceMailWaiting:Z
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v2, :cond_2

    .line 1179
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1188
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v44           #voiceMailWaiting:Z
    :sswitch_a
    const/16 v24, 0x1

    .line 1190
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1191
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1193
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 1204
    :cond_1f
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v2, :cond_2

    .line 1210
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v22, v2, 0xf

    .line 1213
    .local v22, indicator:I
    const/16 v2, 0xa

    move/from16 v0, v22

    if-ne v0, v2, :cond_20

    .line 1215
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1216
    :cond_20
    const/4 v2, 0x5

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    .line 1217
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1225
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v22           #indicator:I
    :sswitch_b
    const/16 v24, 0x1

    .line 1227
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1228
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1230
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1234
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    .line 1236
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1242
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_c
    const/16 v24, 0x1

    .line 1244
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1245
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1247
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_21

    .line 1248
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "query UIM ID fail!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1252
    :cond_21
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    new-array v14, v2, [B

    .line 1253
    .local v14, dst:[B
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v13, v5

    invoke-static {v13, v2, v14, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1255
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    new-array v15, v2, [B

    .line 1257
    .local v15, dsttemp:[B
    const/4 v2, 0x0

    aget-byte v45, v13, v2

    .local v45, xx:I
    const/16 v46, 0x0

    .local v46, yy:I
    :goto_a
    if-lez v45, :cond_22

    .line 1258
    add-int/lit8 v2, v45, -0x1

    const/4 v4, 0x1

    move/from16 v0, v46

    invoke-static {v14, v2, v15, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1257
    add-int/lit8 v45, v45, -0x1

    add-int/lit8 v46, v46, 0x1

    goto :goto_a

    .line 1260
    :cond_22
    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    .line 1261
    .local v42, uimId:Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v42

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.cdma.uim.id"

    move-object/from16 v0, v42

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1267
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v14           #dst:[B
    .end local v15           #dsttemp:[B
    .end local v42           #uimId:Ljava/lang/String;
    .end local v45           #xx:I
    .end local v46           #yy:I
    :sswitch_d
    const/16 v24, 0x1

    .line 1268
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1269
    .restart local v10       #ar:Landroid/os/AsyncResult;
    if-eqz v10, :cond_23

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_24

    .line 1271
    :cond_23
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "EVENT_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1274
    :cond_24
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v23, v0

    .line 1275
    .local v23, ints:[I
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_HTC_SIM_TYPES: simtype group= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,simtype= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_25

    .line 1278
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simtype= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "gsm.htc.sim.types.group"

    const/4 v5, 0x0

    aget v5, v23, v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1280
    :cond_25
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "get ruturning value 2 from WSD"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    .line 1289
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v23           #ints:[I
    :sswitch_e
    const/16 v24, 0x1

    .line 1291
    :try_start_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1292
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1294
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_28

    .line 1322
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_27

    .line 1323
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v2, :cond_51

    .line 1325
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1327
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1339
    .end local v29           #mcc:I
    :cond_27
    :goto_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1298
    :cond_28
    :try_start_b
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_AD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    array-length v2, v13

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2b

    .line 1302
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt AD data on SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1322
    :try_start_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2a

    .line 1323
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v2, :cond_52

    .line 1325
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1327
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 1339
    .end local v29           #mcc:I
    :cond_2a
    :goto_d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1308
    :cond_2b
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    :goto_e
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 1311
    array-length v2, v13

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2f

    .line 1312
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1322
    :try_start_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2d

    .line 1323
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v2, :cond_53

    .line 1325
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1327
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1339
    .end local v29           #mcc:I
    :cond_2d
    :goto_f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1308
    :cond_2e
    const/4 v4, 0x0

    goto :goto_e

    .line 1316
    :cond_2f
    const/4 v2, 0x3

    :try_start_13
    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_30

    .line 1319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1322
    :cond_30
    :try_start_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_32

    .line 1323
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v2, :cond_54

    .line 1325
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1327
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1339
    .end local v29           #mcc:I
    :cond_32
    :goto_10
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1322
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_34

    .line 1323
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v4, :cond_50

    .line 1325
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1327
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1339
    .end local v29           #mcc:I
    :cond_34
    :goto_11
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    if-eqz v4, :cond_35

    .line 1322
    :cond_35
    throw v2

    .line 1348
    :sswitch_f
    const/16 v24, 0x1

    .line 1349
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1350
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1354
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v24, 0x1

    .line 1356
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1357
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1359
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1363
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFF_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-nez v2, :cond_2

    .line 1368
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_36

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1368
    :cond_36
    const/4 v2, 0x0

    goto :goto_12

    .line 1376
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_11
    const/16 v24, 0x1

    .line 1378
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1379
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1381
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1385
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 1390
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_12
    const/16 v24, 0x1

    .line 1392
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1393
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1395
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1398
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfFplmn([B)V

    goto/16 :goto_1

    .line 1403
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1404
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 1405
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords update failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1410
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const/16 v24, 0x1

    .line 1412
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1413
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1415
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1419
    new-instance v41, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v2, 0x0

    array-length v4, v13

    move-object/from16 v0, v41

    invoke-direct {v0, v13, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 1421
    .local v41, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :goto_13
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1422
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_37

    .line 1423
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1421
    :cond_37
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_13

    .line 1432
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v41           #tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :sswitch_15
    const/16 v24, 0x1

    .line 1434
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1435
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1438
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1442
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1447
    :sswitch_17
    const/16 v24, 0x0

    .line 1449
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1451
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 1453
    .local v21, index:[I
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_38

    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_39

    .line 1454
    :cond_38
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1459
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    aget v5, v21, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1462
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v21, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v21, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1469
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v21           #index:[I
    :sswitch_18
    const/16 v24, 0x0

    .line 1470
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1471
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3b

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1476
    :cond_3a
    const/4 v4, -0x1

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1479
    :cond_3b
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1485
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v24, 0x1

    .line 1487
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1488
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1490
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3c

    .line 1491
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on EF_CBMI with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1495
    :cond_3c
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CBMI length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CBMI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1498
    .local v12, channelslList:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v40, v0

    .line 1501
    .local v40, temp:[B
    if-eqz v13, :cond_2

    .line 1502
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_14
    array-length v2, v13

    move/from16 v0, v19

    if-ge v0, v2, :cond_40

    .line 1504
    aget-byte v2, v13, v19

    const/4 v4, -0x1

    if-eq v2, v4, :cond_40

    add-int/lit8 v2, v19, 0x1

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_40

    .line 1506
    const/4 v2, 0x0

    aget-byte v4, v13, v19

    aput-byte v4, v40, v2

    .line 1507
    const/4 v2, 0x1

    add-int/lit8 v4, v19, 0x1

    aget-byte v4, v13, v4

    aput-byte v4, v40, v2

    .line 1508
    const/4 v2, 0x0

    aget-byte v2, v40, v2

    shl-int/lit8 v2, v2, 0x8

    if-gez v2, :cond_3e

    .line 1509
    const/4 v2, 0x0

    aget-byte v2, v40, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit16 v9, v2, 0x100

    .line 1512
    .local v9, a:I
    :goto_15
    const/4 v2, 0x1

    aget-byte v2, v40, v2

    if-gez v2, :cond_3f

    .line 1513
    const/4 v2, 0x1

    aget-byte v2, v40, v2

    add-int/lit16 v11, v2, 0x100

    .line 1516
    .local v11, b:I
    :goto_16
    add-int v20, v9, v11

    .line 1517
    .local v20, id:I
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    array-length v2, v13

    add-int/lit8 v2, v2, -0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_3d

    add-int/lit8 v2, v19, 0x2

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3d

    add-int/lit8 v2, v19, 0x3

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3d

    .line 1519
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    :cond_3d
    add-int/lit8 v19, v19, 0x2

    goto :goto_14

    .line 1511
    .end local v9           #a:I
    .end local v11           #b:I
    .end local v20           #id:I
    :cond_3e
    const/4 v2, 0x0

    aget-byte v2, v40, v2

    shl-int/lit8 v9, v2, 0x8

    .restart local v9       #a:I
    goto :goto_15

    .line 1515
    :cond_3f
    const/4 v2, 0x1

    aget-byte v11, v40, v2

    .restart local v11       #b:I
    goto :goto_16

    .line 1523
    .end local v9           #a:I
    .end local v11           #b:I
    :cond_40
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1527
    .local v30, mid:Ljava/lang/String;
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CBMI length (string): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v13

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1547
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v12           #channelslList:Ljava/lang/StringBuilder;
    .end local v13           #data:[B
    .end local v19           #i:I
    .end local v30           #mid:Ljava/lang/String;
    .end local v40           #temp:[B
    :sswitch_1a
    const-string v2, "*********Set EF CDMI done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/16 v24, 0x0

    .line 1549
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1551
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1552
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1554
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1561
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v2, "*********Set EF LP done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/16 v24, 0x0

    .line 1563
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1565
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1566
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1568
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1572
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v24, 0x1

    .line 1574
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1575
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1577
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_41

    .line 1578
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on EF_LP with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1582
    :cond_41
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 1583
    .local v28, mLpList:Ljava/lang/StringBuilder;
    const/16 v27, 0x0

    .line 1585
    .local v27, lp:Ljava/lang/String;
    if-eqz v13, :cond_45

    .line 1588
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_17
    array-length v2, v13

    move/from16 v0, v19

    if-ge v0, v2, :cond_44

    .line 1590
    aget-byte v2, v13, v19

    const/4 v4, -0x1

    if-eq v2, v4, :cond_44

    .line 1592
    aget-byte v2, v13, v19

    if-gez v2, :cond_43

    .line 1593
    aget-byte v2, v13, v19

    add-int/lit16 v0, v2, 0x100

    move/from16 v43, v0

    .line 1596
    .local v43, value:I
    :goto_18
    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_42

    add-int/lit8 v2, v19, 0x1

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_42

    .line 1598
    const-string v2, ","

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    :cond_42
    add-int/lit8 v19, v19, 0x1

    goto :goto_17

    .line 1595
    .end local v43           #value:I
    :cond_43
    aget-byte v43, v13, v19

    .restart local v43       #value:I
    goto :goto_18

    .line 1602
    .end local v43           #value:I
    :cond_44
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1604
    .end local v19           #i:I
    :cond_45
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_LP length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_LP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_LP(string): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x39

    if-eq v2, v4, :cond_46

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 1612
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 1614
    .restart local v38       #sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v39

    .line 1615
    .local v39, spEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v27, :cond_48

    .line 1617
    const-string v2, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 1618
    .local v33, num:I
    const/4 v2, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1619
    .local v26, langnum:I
    const/16 v2, 0xf

    move/from16 v0, v26

    if-le v0, v2, :cond_47

    .line 1620
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1625
    .end local v26           #langnum:I
    .end local v33           #num:I
    :goto_19
    invoke-interface/range {v39 .. v39}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1622
    .restart local v26       #langnum:I
    .restart local v33       #num:I
    :cond_47
    const-string v2, "lang_list"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1624
    .end local v26           #langnum:I
    .end local v33           #num:I
    :cond_48
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1630
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v27           #lp:Ljava/lang/String;
    .end local v28           #mLpList:Ljava/lang/StringBuilder;
    .end local v38           #sp:Landroid/content/SharedPreferences;
    .end local v39           #spEditor:Landroid/content/SharedPreferences$Editor;
    :sswitch_1d
    const/16 v24, 0x1

    .line 1632
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1633
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1635
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1643
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_1e
    const/16 v24, 0x1

    .line 1645
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1647
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1651
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 1653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1657
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_1f
    const/16 v24, 0x0

    .line 1658
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1660
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_49

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1665
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1666
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Message;

    .line 1676
    .local v34, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4a

    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_4a

    .line 1677
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1679
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1681
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1683
    const/16 v34, 0x0

    .line 1686
    :cond_4a
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1691
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v34           #onCphsCompleted:Landroid/os/Message;
    :cond_4b
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1692
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1694
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1699
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_20
    const/16 v24, 0x0

    .line 1700
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1701
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4c

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1708
    :goto_1a
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1709
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1710
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1712
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1705
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 1716
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_21
    const/16 v24, 0x0

    .line 1717
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1718
    .restart local v10       #ar:Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1719
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1720
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_1

    .line 1724
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_22
    const/16 v24, 0x1

    .line 1726
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1727
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1729
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1733
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 1739
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1739
    :cond_4d
    const/4 v2, 0x0

    goto :goto_1b

    .line 1745
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_23
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "EVENT_PBK_READY"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v4, "LOADED_UNDER_NETWORK_LOCK"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "(EVENT_PBK_READY) Broadcast  INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK to load sim pb done."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1771
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1773
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1774
    const-string v2, "Callback with GET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1775
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1777
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4e

    .line 1778
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1781
    :cond_4e
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1785
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1787
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1788
    const-string v2, "Callback with SET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1789
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1791
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1795
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1796
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 1798
    .local v37, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4f

    if-eqz v37, :cond_4f

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.types"

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1804
    :cond_4f
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimTypes error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1812
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v37           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_27
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Delay CFU Query..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1818
    :sswitch_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->htcOnAllRecordsLoaded()V

    goto/16 :goto_1

    .line 1334
    :cond_50
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1336
    const-string v4, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1328
    :catch_2
    move-exception v16

    .line 1329
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1330
    const-string v4, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1334
    .end local v16           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #ar:Landroid/os/AsyncResult;
    .restart local v13       #data:[B
    :cond_51
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1336
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1328
    :catch_3
    move-exception v16

    .line 1329
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1330
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1334
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1336
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1328
    :catch_4
    move-exception v16

    .line 1329
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1330
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1334
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_53
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1336
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1328
    :catch_5
    move-exception v16

    .line 1329
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1330
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1334
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1336
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1328
    :catch_6
    move-exception v16

    .line 1329
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 1330
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_10

    .line 807
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_b
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_e
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_f
        0xd -> :sswitch_11
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x18 -> :sswitch_10
        0x19 -> :sswitch_20
        0x1a -> :sswitch_1e
        0x1e -> :sswitch_8
        0x1f -> :sswitch_21
        0x20 -> :sswitch_22
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x25 -> :sswitch_2
        0x26 -> :sswitch_c
        0x27 -> :sswitch_d
        0x65 -> :sswitch_26
        0x66 -> :sswitch_24
        0x67 -> :sswitch_25
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_3
        0x6b -> :sswitch_12
        0x6c -> :sswitch_27
        0x6d -> :sswitch_23
        0x6e -> :sswitch_28
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2625
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2629
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    return-void
.end method

.method public notifyIMSIchange()V
    .locals 3

    .prologue
    .line 2684
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    if-eqz v0, :cond_0

    .line 2685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 2686
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Notify ICC loaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :goto_0
    return-void

    .line 2690
    :cond_0
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Nothing notify "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2089
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: record load complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/4 v2, 0x0

    .line 2094
    .local v2, simstate:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2095
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 2096
    const-string v3, "gsm.icc.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2106
    :cond_1
    :goto_0
    const-string v3, "READY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2107
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: record load complete, but SIM is not ready state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :goto_1
    return-void

    .line 2097
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 2098
    const-string v3, "gsm.icc.sub.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2099
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2100
    const-string v3, "gsm.icc.uim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2103
    :cond_4
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2113
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 2116
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2121
    .local v1, operator:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2124
    .local v0, htcThreadUpdateOperator:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2129
    :cond_6
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2130
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.cdma.uim.operator.numeric"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->isMainPhone(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2132
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 2140
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v3, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==>HtcCdmaSIMRecords:operator:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    move-object v0, v1

    .line 2151
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_9

    .line 2153
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.alpha"

    const-string v5, "China Telecom"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2161
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 2166
    :cond_a
    if-eqz v0, :cond_d

    .line 2167
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v4, 0x6e

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->htcThreadUpdateCarrierInProvider(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2135
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2157
    :cond_c
    const-string v3, "SIM"

    const-string v4, "[HtcCdmaSIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2171
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->htcOnAllRecordsLoaded()V

    goto/16 :goto_1
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdn:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 289
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 290
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mncLength:I

    .line 291
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->iccid:Ljava/lang/String;

    .line 293
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 294
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 295
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 296
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 297
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 316
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->resetVoiceCallForwardingFlag(IZ)V

    .line 321
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mIsRecordsLoad:Z

    .line 327
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2077
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    .line 2079
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2080
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onAllRecordsLoaded()V

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2081
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2082
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "HtcCdmaSIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 727
    if-eqz p1, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 733
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 735
    :cond_0
    return-void
.end method

.method queryCFUIfNecessary()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 700
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->recordsRequested:Z

    if-eqz v3, :cond_1

    .line 701
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->checkTestIcc()Z

    move-result v3

    if-nez v3, :cond_0

    .line 703
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cfu_query_when_campon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 705
    .local v0, cfuQuery:Z
    :goto_0
    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 708
    const/16 v1, 0x6c

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 712
    .end local v0           #cfuQuery:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eqz v1, :cond_1

    .line 713
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 717
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 703
    goto :goto_0
.end method

.method resetVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 688
    if-eq p1, v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eq v0, p2, :cond_0

    .line 692
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto :goto_0
.end method

.method public setCBLanguageEFlp([B)V
    .locals 3
    .parameter "lp"

    .prologue
    .line 1937
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f05

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1941
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 3
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 1949
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f45

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1954
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x6f40

    const/16 v6, 0x1e

    const/4 v4, 0x1

    .line 370
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 373
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTagTemp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->msisdnTemp:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v0, "gsm.sim.types"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, simType:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v3, 0x6f4e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v3, 0x6f4a

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 2643
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2644
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2646
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 571
    if-eq p1, v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 575
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 583
    if-eqz p2, :cond_3

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 592
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 598
    if-eqz p2, :cond_4

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 606
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v6

    .line 611
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 586
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceCallForwardingFlag(IZILjava/lang/String;)V
    .locals 10
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x1

    .line 623
    if-eq p1, v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 627
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_3

    .line 635
    if-eqz p2, :cond_5

    .line 639
    if-nez p3, :cond_4

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 645
    :goto_1
    if-eqz p4, :cond_2

    .line 646
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v8

    .line 647
    .local v8, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 648
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v8

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    .end local v8           #str:[B
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 665
    if-eqz p2, :cond_6

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 673
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v6

    .line 678
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 642
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    and-int/lit8 v2, p3, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 652
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 654
    const/4 v7, 0x2

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 654
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 669
    .end local v7           #i:I
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 427
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 430
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 456
    :goto_0
    return-void

    .line 434
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 435
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 437
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 441
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 452
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 454
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 483
    if-eq p1, v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    if-gez p2, :cond_4

    .line 490
    const/4 p2, -0x1

    .line 497
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    .line 502
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 506
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 510
    if-gez p2, :cond_7

    .line 517
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 528
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->countVoiceMessages:I

    if-nez v0, :cond_8

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v6

    .line 547
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 491
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 494
    const/16 p2, 0xff

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 506
    goto :goto_2

    .line 521
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_3

    .line 525
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 535
    :cond_8
    const/16 v0, 0xa

    goto :goto_4
.end method
