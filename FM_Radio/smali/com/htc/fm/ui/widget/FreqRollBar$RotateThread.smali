.class Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
.super Ljava/lang/Thread;
.source "FreqRollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/ui/widget/FreqRollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateThread"
.end annotation


# instance fields
.field private TimeStampOfUIStartingAdjust:J

.field private bincrease:Z

.field private currentstarttime:I

.field private end:I

.field private from:I

.field private switcher:I

.field final synthetic this$0:Lcom/htc/fm/ui/widget/FreqRollBar;


# direct methods
.method private constructor <init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x12c

    const/16 v11, 0x64

    const/16 v10, 0x1f4

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 737
    const/4 v1, 0x0

    .line 740
    .local v1, count:I
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->from:I

    .line 741
    .local v2, moveindex:I
    const/16 v0, 0x32

    .line 743
    .local v0, FastRotationInterval:I
    iget-boolean v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->bincrease:Z

    if-eqz v5, :cond_10

    .line 746
    :cond_0
    new-instance v4, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct {v4}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 747
    .local v4, seed:Lcom/htc/fm/ui/widget/RotateSeed;
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 748
    .local v3, msg:Landroid/os/Message;
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    iput v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 750
    const/16 v5, 0x9

    if-ne v2, v5, :cond_1

    .line 751
    const/4 v2, 0x0

    .line 752
    add-int/lit8 v1, v1, 0x1

    .line 758
    :goto_0
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-lt v5, v2, :cond_9

    .line 759
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v5, v2

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 760
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 761
    iput v10, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 762
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 816
    :goto_1
    iput v2, v4, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 817
    iget-wide v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    iput-wide v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 818
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    int-to-long v6, v6

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 822
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v2, v5, :cond_0

    .line 899
    :goto_2
    return-void

    .line 754
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    :cond_2
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v5, v2, :cond_4

    .line 765
    if-eq v1, v8, :cond_3

    .line 766
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v5, v5, 0x154

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 767
    :cond_3
    iput v10, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 768
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 770
    :cond_4
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v5, v2

    if-ne v5, v8, :cond_6

    .line 771
    if-eq v1, v8, :cond_5

    .line 772
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v5, v5, 0x12c

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 773
    :cond_5
    const/16 v5, 0x154

    iput v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 774
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 775
    :cond_6
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v5, v2

    if-ne v5, v9, :cond_8

    .line 776
    if-eq v1, v8, :cond_7

    .line 777
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 778
    :cond_7
    iput v12, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 779
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 781
    :cond_8
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 782
    iput v11, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 783
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 789
    :cond_9
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v5, v5, 0xa

    sub-int/2addr v5, v2

    const/4 v6, 0x3

    if-le v5, v6, :cond_a

    .line 790
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 791
    iput v10, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 792
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_1

    .line 795
    :cond_a
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v5, v5, 0xa

    sub-int/2addr v5, v2

    if-ne v5, v8, :cond_c

    .line 796
    if-eq v1, v8, :cond_b

    .line 797
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v5, v5, 0x12c

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 798
    :cond_b
    const/16 v5, 0x154

    iput v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 799
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 800
    :cond_c
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    add-int/lit8 v5, v5, 0xa

    sub-int/2addr v5, v2

    if-ne v5, v9, :cond_e

    .line 801
    if-eq v1, v8, :cond_d

    .line 802
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 803
    :cond_d
    iput v12, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 804
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 806
    :cond_e
    if-eq v1, v8, :cond_f

    .line 807
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 808
    :cond_f
    iput v11, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 809
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_1

    .line 825
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_10
    new-instance v4, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct {v4}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 826
    .restart local v4       #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 827
    .restart local v3       #msg:Landroid/os/Message;
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    iput v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 829
    if-nez v2, :cond_11

    .line 830
    const/16 v2, 0x9

    .line 831
    add-int/lit8 v1, v1, 0x1

    .line 837
    :goto_3
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-lt v2, v5, :cond_19

    .line 838
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int v5, v2, v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_12

    .line 839
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 840
    iput v10, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 841
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 893
    :goto_4
    iput v2, v4, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 894
    iget-wide v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    iput-wide v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 895
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 896
    iget-object v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->this$0:Lcom/htc/fm/ui/widget/FreqRollBar;

    #getter for: Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/fm/ui/widget/FreqRollBar;->access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    int-to-long v6, v6

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 897
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v2, v5, :cond_10

    goto/16 :goto_2

    .line 833
    :cond_11
    add-int/lit8 v2, v2, -0x1

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 844
    :cond_12
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    if-ne v5, v2, :cond_14

    .line 845
    if-eq v1, v8, :cond_13

    .line 846
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v5, v5, 0x154

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 847
    :cond_13
    iput v10, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 848
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 849
    :cond_14
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int v5, v2, v5

    if-ne v5, v8, :cond_16

    .line 850
    if-eq v1, v8, :cond_15

    .line 851
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v5, v5, 0x12c

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 852
    :cond_15
    const/16 v5, 0x154

    iput v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 853
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 854
    :cond_16
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int v5, v2, v5

    if-ne v5, v9, :cond_18

    .line 855
    if-eq v1, v8, :cond_17

    .line 856
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 857
    :cond_17
    iput v12, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 858
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 860
    :cond_18
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 861
    iput v11, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 862
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 868
    :cond_19
    add-int/lit8 v5, v2, 0xa

    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v5, v6

    if-le v5, v9, :cond_1a

    .line 869
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 870
    const/16 v5, 0x46

    iput v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 871
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto :goto_4

    .line 874
    :cond_1a
    add-int/lit8 v5, v2, 0xa

    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v5, v6

    if-ne v5, v8, :cond_1c

    .line 875
    if-eq v1, v8, :cond_1b

    .line 876
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit16 v5, v5, 0x12c

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 877
    :cond_1b
    const/16 v5, 0x154

    iput v5, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 878
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4

    .line 879
    :cond_1c
    add-int/lit8 v5, v2, 0xa

    iget v6, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    sub-int/2addr v5, v6

    if-ne v5, v9, :cond_1e

    .line 880
    if-eq v1, v8, :cond_1d

    .line 881
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 882
    :cond_1d
    iput v12, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 883
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4

    .line 885
    :cond_1e
    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 886
    iput v11, v4, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 887
    iput v8, v4, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    goto/16 :goto_4
.end method

.method public setNextRotateTime(I)V
    .locals 0
    .parameter "NextRotateTime"

    .prologue
    .line 733
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->currentstarttime:I

    .line 734
    return-void
.end method

.method public setSwitcher(IZII)V
    .locals 3
    .parameter "Switcher"
    .parameter "bIncrease"
    .parameter "From"
    .parameter "End"

    .prologue
    .line 718
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    .line 719
    iput-boolean p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->bincrease:Z

    .line 720
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->from:I

    .line 721
    iput p4, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    .line 722
    const-string v0, "FMRadio_FreqRollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RotateThread][setSwitcher] switcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->switcher:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bincrease:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->bincrease:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->from:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->end:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public setTimeStampOfUIStartingAdjust(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 727
    iput-wide p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->TimeStampOfUIStartingAdjust:J

    .line 728
    return-void
.end method
