.class Lcom/htc/fm/uihelper/service/UIService$7;
.super Lcom/htc/fm/uihelper/receiver/TaskManagerReceiver;
.source "UIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/uihelper/service/UIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/uihelper/service/UIService;


# direct methods
.method constructor <init>(Lcom/htc/fm/uihelper/service/UIService;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/htc/fm/uihelper/service/UIService$7;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    invoke-direct {p0}, Lcom/htc/fm/uihelper/receiver/TaskManagerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKilledEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 846
    const-string v0, "TaskManagerReceiver"

    const-string v1, "+handleKilledEvent()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$7;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #getter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOn:Z
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$000(Lcom/htc/fm/uihelper/service/UIService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$7;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isTurnOffByHeadsetUnplugged:Z
    invoke-static {v0, v1}, Lcom/htc/fm/uihelper/service/UIService;->access$502(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 850
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$7;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #setter for: Lcom/htc/fm/uihelper/service/UIService;->isForceTurnOff:Z
    invoke-static {v0, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$1902(Lcom/htc/fm/uihelper/service/UIService;Z)Z

    .line 851
    const-string v0, "TaskManagerReceiver"

    const-string v1, "  handleKilledEvent() disableAudioPath()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$7;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->disableAudioPath()V
    invoke-static {v0}, Lcom/htc/fm/uihelper/service/UIService;->access$3900(Lcom/htc/fm/uihelper/service/UIService;)V

    .line 853
    iget-object v0, p0, Lcom/htc/fm/uihelper/service/UIService$7;->this$0:Lcom/htc/fm/uihelper/service/UIService;

    #calls: Lcom/htc/fm/uihelper/service/UIService;->switchFMRadioState(Z)V
    invoke-static {v0, v2}, Lcom/htc/fm/uihelper/service/UIService;->access$600(Lcom/htc/fm/uihelper/service/UIService;Z)V

    .line 855
    :cond_0
    const-string v0, "TaskManagerReceiver"

    const-string v1, "-handleKilledEvent()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return-void
.end method
