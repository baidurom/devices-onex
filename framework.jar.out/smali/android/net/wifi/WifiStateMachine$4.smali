.class Landroid/net/wifi/WifiStateMachine$4;
.super Landroid/telephony/PhoneStateListener;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1321
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 1325
    const-string v0, "WifiStateMachine"

    const-string v1, "get mPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$502(Landroid/net/wifi/WifiStateMachine;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 1327
    return-void
.end method
