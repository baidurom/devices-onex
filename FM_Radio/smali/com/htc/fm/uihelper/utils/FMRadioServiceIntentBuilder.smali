.class public Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;
.super Ljava/lang/Object;
.source "FMRadioServiceIntentBuilder.java"


# static fields
.field public static final DISPATCH_FAIL:I = 0x1

.field public static final DISPATCH_FMSERVICE:I = 0x0

.field public static final DISPATCH_INTERNAL:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioUI][Service]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/fm/uihelper/manager/AudioPathManager;)V
    .locals 0
    .parameter "context"
    .parameter "audioPathManager"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    .line 23
    return-void
.end method

.method private static buildIntent(II)Landroid/content/Intent;
    .locals 2
    .parameter "action"
    .parameter "freq"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fmservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v1, "freq"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method public static getMuteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getRssiOffIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 65
    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getRssiOnIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 61
    const/16 v0, 0x9

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSeekDownIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSeekUpIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSwitchTurnIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.uihelper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "freq"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v1, "command"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    return-object v0
.end method

.method public static getTuneIntent(I)Landroid/content/Intent;
    .locals 1
    .parameter "freq"

    .prologue
    .line 33
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getTurnOffIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getTurnOnIntent(I)Landroid/content/Intent;
    .locals 1
    .parameter "freq"

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getUnmuteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 57
    const/16 v0, 0x8

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->buildIntent(II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private isSendToFMService(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "command"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, what:I
    const/16 v3, 0x64

    if-le v1, v3, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_1
    const-string v3, "command"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "freq"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v3, p0, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mute()V

    goto :goto_1

    .line 101
    :pswitch_1
    iget-object v3, p0, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->mAudioPathManager:Lcom/htc/fm/uihelper/manager/AudioPathManager;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->unmute()V

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 85
    const-string v0, "com.htc.fmservice"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    return-void
.end method


# virtual methods
.method public dispatchTarget(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 76
    const/4 v0, 0x3

    .line 77
    .local v0, target:I
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->isSendToFMService(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/htc/fm/uihelper/utils/FMRadioServiceIntentBuilder;->updateIntent(Landroid/content/Intent;)V

    .line 81
    :cond_0
    return v0
.end method
