.class public Lcom/htc/fm/ui/widget/FreqRollBar;
.super Landroid/widget/LinearLayout;
.source "FreqRollBar.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/fm/ui/helper/RollBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio_FreqRollBar"


# instance fields
.field private final SETFREQUENCY:I

.field private final SETSEEKFREQUENCY:I

.field private containershandler:Landroid/os/Handler;

.field private dfdepthZ:F

.field private dfoffsetY:F

.field dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field private fddepthZ:F

.field private fdoffsetY:F

.field fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field private fudepthZ:F

.field private fuoffsetY:F

.field furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field private handleranimation:Z

.field private handlerfreq:I

.field private mActionHandler:Landroid/os/Handler;

.field private mImageIds:[I

.field private mImageIds2:[I

.field private mImageIds3:[I

.field private mImageIds4:[I

.field private mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mSwitcher2:Landroid/widget/ImageSwitcher;

.field private mSwitcher3:Landroid/widget/ImageSwitcher;

.field private mSwitcher4:Landroid/widget/ImageSwitcher;

.field private mcontext:Landroid/content/Context;

.field mforwordcurrentindex:I

.field mforwordcurrentindex2:I

.field mforwordcurrentindex3:I

.field mforwordcurrentindex4:I

.field mfreq:I

.field private rotatetime:I

.field private rotatetime2:I

.field private rotatetime3:I

.field private rotatetime4:I

.field private ufdepthZ:F

.field private ufoffsetY:F

.field ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 536
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETFREQUENCY:I

    .line 537
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETSEEKFREQUENCY:I

    .line 538
    iput v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 539
    iput-boolean v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    .line 540
    new-instance v0, Lcom/htc/fm/ui/widget/FreqRollBar$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/ui/widget/FreqRollBar$1;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    .line 701
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    .line 703
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    .line 705
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    .line 707
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    .line 62
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mcontext:Landroid/content/Context;

    .line 63
    const-string v0, "FMRadio_FreqRollBar"

    const-string v1, "[FreqRollBar] constructor "

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 701
    nop

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 703
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 705
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 707
    :array_3
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attributeset"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 536
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETFREQUENCY:I

    .line 537
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETSEEKFREQUENCY:I

    .line 538
    iput v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 539
    iput-boolean v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    .line 540
    new-instance v0, Lcom/htc/fm/ui/widget/FreqRollBar$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/ui/widget/FreqRollBar$1;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    .line 701
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    .line 703
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    .line 705
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    .line 707
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    .line 69
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mcontext:Landroid/content/Context;

    .line 70
    return-void

    .line 701
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 703
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 705
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 707
    :array_3
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/ui/widget/FreqRollBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fm/ui/widget/FreqRollBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fm/ui/widget/FreqRollBar;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/ui/widget/FreqRollBar;->setFreqInternal(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/fm/ui/widget/FreqRollBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/fm/ui/widget/FreqRollBar;->setFreqbySeekInternal(I)V

    return-void
.end method

.method private setFreqInternal(IZ)V
    .locals 24
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    .line 573
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreq]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 577
    .local v13, originalfreq:I
    move/from16 v0, p1

    if-eq v13, v0, :cond_1

    .line 579
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 581
    move/from16 v0, p1

    if-ge v13, v0, :cond_0

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 614
    :goto_0
    move/from16 v0, p1

    div-int/lit16 v14, v0, 0x3e8

    .line 615
    .local v14, p1:I
    move/from16 v0, p1

    rem-int/lit16 v15, v0, 0x3e8

    .line 621
    .local v15, r:I
    div-int/lit8 v5, v15, 0x64

    .line 623
    .local v5, forwordcurrentindex:I
    rem-int/lit8 v6, v14, 0xa

    .line 624
    .local v6, forwordcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v7, v20, 0xa

    .line 625
    .local v7, forwordcurrentindex3:I
    div-int/lit8 v8, v14, 0x64

    .line 627
    .local v8, forwordcurrentindex4:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 630
    .local v9, msg:Landroid/os/Message;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 632
    .local v3, TimeStampOfUiStartingAdjust:J
    new-instance v16, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v16 .. v16}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 633
    .local v16, seed:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 634
    move-object/from16 v0, v16

    iput v5, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 636
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 639
    move-object/from16 v0, v16

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 641
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 644
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreq]TimeStampOfUIStartingAdjust:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 650
    .local v10, msg2:Landroid/os/Message;
    new-instance v17, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v17 .. v17}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 651
    .local v17, seed2:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 652
    move-object/from16 v0, v17

    iput v6, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 654
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 655
    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 656
    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    if-eqz p2, :cond_2

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x50

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 663
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 665
    .local v11, msg3:Landroid/os/Message;
    new-instance v18, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v18 .. v18}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 666
    .local v18, seed3:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 667
    move-object/from16 v0, v18

    iput v7, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 669
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 670
    move-object/from16 v0, v18

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 671
    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 673
    if-eqz p2, :cond_3

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0xa0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 678
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 680
    .local v12, msg4:Landroid/os/Message;
    new-instance v19, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v19 .. v19}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 681
    .local v19, seed4:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 682
    move-object/from16 v0, v19

    iput v8, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 684
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 685
    move-object/from16 v0, v19

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 686
    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 690
    if-eqz p2, :cond_4

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0xd2

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 694
    .end local v3           #TimeStampOfUiStartingAdjust:J
    .end local v5           #forwordcurrentindex:I
    .end local v6           #forwordcurrentindex2:I
    .end local v7           #forwordcurrentindex3:I
    .end local v8           #forwordcurrentindex4:I
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #msg2:Landroid/os/Message;
    .end local v11           #msg3:Landroid/os/Message;
    .end local v12           #msg4:Landroid/os/Message;
    .end local v14           #p1:I
    .end local v15           #r:I
    .end local v16           #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    .end local v17           #seed2:Lcom/htc/fm/ui/widget/RotateSeed;
    .end local v18           #seed3:Lcom/htc/fm/ui/widget/RotateSeed;
    .end local v19           #seed4:Lcom/htc/fm/ui/widget/RotateSeed;
    :goto_3
    return-void

    .line 596
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 610
    :cond_1
    const-string v20, "FMRadio_FreqRollBar"

    const-string v21, "[FMRadio][RollBar] Don\'t have to update"

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 661
    .restart local v3       #TimeStampOfUiStartingAdjust:J
    .restart local v5       #forwordcurrentindex:I
    .restart local v6       #forwordcurrentindex2:I
    .restart local v7       #forwordcurrentindex3:I
    .restart local v8       #forwordcurrentindex4:I
    .restart local v9       #msg:Landroid/os/Message;
    .restart local v10       #msg2:Landroid/os/Message;
    .restart local v14       #p1:I
    .restart local v15       #r:I
    .restart local v16       #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    .restart local v17       #seed2:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 676
    .restart local v11       #msg3:Landroid/os/Message;
    .restart local v18       #seed3:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 693
    .restart local v12       #msg4:Landroid/os/Message;
    .restart local v19       #seed4:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3
.end method

.method private setFreqbySeekInternal(I)V
    .locals 23
    .parameter "freq"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 416
    .local v13, originalfreq:I
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreqbySeek] :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    move/from16 v0, p1

    if-eq v13, v0, :cond_6

    .line 419
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 421
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 449
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    move-object/from16 v21, v0

    move/from16 v0, p1

    if-ge v13, v0, :cond_5

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/MirrorFace;->setRotateDirection(Z)V

    .line 456
    move/from16 v0, p1

    div-int/lit16 v14, v0, 0x3e8

    .line 457
    .local v14, p1:I
    move/from16 v0, p1

    rem-int/lit16 v15, v0, 0x3e8

    .line 463
    .local v15, r:I
    div-int/lit8 v5, v15, 0x64

    .line 465
    .local v5, forwordcurrentindex:I
    rem-int/lit8 v6, v14, 0xa

    .line 466
    .local v6, forwordcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v7, v20, 0xa

    .line 467
    .local v7, forwordcurrentindex3:I
    div-int/lit8 v8, v14, 0x64

    .line 471
    .local v8, forwordcurrentindex4:I
    div-int/lit16 v14, v13, 0x3e8

    .line 472
    rem-int/lit16 v15, v13, 0x3e8

    .line 478
    div-int/lit8 v9, v15, 0x64

    .line 480
    .local v9, nowcurrentindex:I
    rem-int/lit8 v10, v14, 0xa

    .line 481
    .local v10, nowcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v11, v20, 0xa

    .line 482
    .local v11, nowcurrentindex3:I
    div-int/lit8 v12, v14, 0x64

    .line 484
    .local v12, nowcurrentindex4:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 485
    .local v3, TimeStampOfUIStartingAdjust:J
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreqbySeek]TimeStampOfUIStartingAdjust:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    if-eq v9, v5, :cond_0

    .line 489
    new-instance v16, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 490
    .local v16, rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x0

    move/from16 v0, p1

    if-ge v13, v0, :cond_7

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v9, v5}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 491
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 492
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 493
    invoke-virtual/range {v16 .. v16}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 496
    .end local v16           #rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_0
    if-eq v10, v6, :cond_1

    .line 497
    new-instance v17, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 498
    .local v17, rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x1

    move/from16 v0, p1

    if-ge v13, v0, :cond_8

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v10, v6}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 499
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 500
    const/16 v20, 0x50

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 501
    invoke-virtual/range {v17 .. v17}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 504
    .end local v17           #rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_1
    if-eq v11, v7, :cond_2

    .line 505
    new-instance v18, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 506
    .local v18, rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x2

    move/from16 v0, p1

    if-ge v13, v0, :cond_9

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v11, v7}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 507
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 508
    const/16 v20, 0xa0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 509
    invoke-virtual/range {v18 .. v18}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 512
    .end local v18           #rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_2
    if-eq v12, v8, :cond_3

    .line 513
    new-instance v19, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 514
    .local v19, rotatethread4:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x3

    move/from16 v0, p1

    if-ge v13, v0, :cond_a

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v12, v8}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 515
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 516
    const/16 v20, 0xd2

    invoke-virtual/range {v19 .. v20}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 517
    invoke-virtual/range {v19 .. v19}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 521
    .end local v3           #TimeStampOfUIStartingAdjust:J
    .end local v5           #forwordcurrentindex:I
    .end local v6           #forwordcurrentindex2:I
    .end local v7           #forwordcurrentindex3:I
    .end local v8           #forwordcurrentindex4:I
    .end local v9           #nowcurrentindex:I
    .end local v10           #nowcurrentindex2:I
    .end local v11           #nowcurrentindex3:I
    .end local v12           #nowcurrentindex4:I
    .end local v14           #p1:I
    .end local v15           #r:I
    .end local v19           #rotatethread4:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_3
    :goto_6
    return-void

    .line 436
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 449
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 452
    :cond_6
    const-string v20, "FMRadio_FreqRollBar"

    const-string v21, "[FMRadio][RollBar] Don\'t have to update"

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 490
    .restart local v3       #TimeStampOfUIStartingAdjust:J
    .restart local v5       #forwordcurrentindex:I
    .restart local v6       #forwordcurrentindex2:I
    .restart local v7       #forwordcurrentindex3:I
    .restart local v8       #forwordcurrentindex4:I
    .restart local v9       #nowcurrentindex:I
    .restart local v10       #nowcurrentindex2:I
    .restart local v11       #nowcurrentindex3:I
    .restart local v12       #nowcurrentindex4:I
    .restart local v14       #p1:I
    .restart local v15       #r:I
    .restart local v16       #rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 498
    .end local v16           #rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    .restart local v17       #rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 506
    .end local v17           #rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    .restart local v18       #rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 514
    .end local v18           #rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    .restart local v19       #rotatethread4:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_5
.end method


# virtual methods
.method public getFrequency()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    return v0
.end method

.method getInt(I)I
    .locals 1
    .parameter "integer"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FreqRollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getRotateTime()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    return v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 77
    return-object v0
.end method

.method public onCreate(ZI)V
    .locals 10
    .parameter "bIsPortrait"
    .parameter "freq"

    .prologue
    .line 127
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    .line 128
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    .line 129
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    .line 130
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    .line 132
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 133
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 136
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    .line 137
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 140
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    .line 141
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 144
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    .line 145
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, upCenterX:F
    const/4 v4, 0x0

    .line 151
    .local v4, upCenterY:F
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->getInt(I)I

    move-result v0

    int-to-float v4, v0

    .line 153
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 154
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 155
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 156
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 159
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 160
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 161
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 164
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 165
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 166
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 169
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 170
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 171
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 173
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 174
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 175
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 176
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 178
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 179
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 180
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 181
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 184
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 185
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 186
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 189
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 190
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 191
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 194
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 195
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 196
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 198
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 199
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 200
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 201
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 203
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 204
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 205
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 206
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 209
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 210
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 211
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 213
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 214
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 215
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 216
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 218
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 219
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 220
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 221
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 223
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 224
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 225
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 226
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 229
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 230
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 231
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 233
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 235
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    div-int/lit16 v8, v0, 0x3e8

    .line 236
    .local v8, p1:I
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    rem-int/lit16 v9, v0, 0x3e8

    .line 242
    .local v9, r:I
    div-int/lit8 v0, v9, 0x64

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    .line 244
    rem-int/lit8 v0, v8, 0xa

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    .line 245
    div-int/lit8 v0, v8, 0xa

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    .line 246
    div-int/lit8 v0, v8, 0x64

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    .line 248
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 251
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 261
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 262
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 265
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    .line 266
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    .line 267
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    .line 268
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    .line 269
    return-void
.end method

.method public rotateSwitcher(IIII)Z
    .locals 5
    .parameter "SWITCHER"
    .parameter "forwordcurrentindex"
    .parameter "duration"
    .parameter "InterpolatorType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 275
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher]+SWITCHER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-nez p1, :cond_1

    .line 277
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher] mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    if-eq v2, p2, :cond_0

    .line 280
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    .line 281
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 282
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 283
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 284
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 285
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 286
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 335
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 289
    goto :goto_0

    .line 292
    :cond_1
    if-ne p1, v0, :cond_3

    .line 293
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    if-eq v2, p2, :cond_2

    .line 294
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    .line 295
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 296
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 297
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 298
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 299
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 300
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 303
    goto :goto_0

    .line 306
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 307
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    if-eq v2, p2, :cond_4

    .line 308
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    .line 309
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 310
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 311
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 312
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 313
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 314
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 317
    goto :goto_0

    .line 320
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 321
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher] mforwordcurrentindex4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    if-eq v2, p2, :cond_6

    .line 323
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    .line 324
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 325
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 326
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 327
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 328
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 329
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 332
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 335
    goto/16 :goto_0
.end method

.method public setFreq(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->setFreq(IZ)V

    .line 526
    return-void
.end method

.method public setFreq(IZ)V
    .locals 2
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    .line 529
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    if-ne v0, p1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 532
    iput-boolean p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    .line 533
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setFreqbySeek(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 404
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 405
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method public setMirror(Lcom/htc/fm/ui/widget/MirrorFace;)V
    .locals 0
    .parameter "Mirrorface"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    .line 82
    return-void
.end method

.method public setRotateTime(IIII)V
    .locals 0
    .parameter "Rotatetime"
    .parameter "Rotatetime2"
    .parameter "Rotatetime3"
    .parameter "Rotatetime4"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    .line 94
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    .line 95
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    .line 96
    iput p4, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    .line 97
    return-void
.end method

.method public setSwitcherInterpolatorType(II)V
    .locals 3
    .parameter "Switcher"
    .parameter "InterpolatorType"

    .prologue
    const/high16 v2, 0x4000

    .line 340
    packed-switch p2, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 342
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 345
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 347
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 351
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 352
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 353
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 356
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 359
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 362
    :pswitch_4
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 363
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 364
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 372
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 374
    :pswitch_6
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 375
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 376
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 377
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 380
    :pswitch_7
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 381
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 382
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 383
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 386
    :pswitch_8
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 387
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 388
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 389
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 392
    :pswitch_9
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 393
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 394
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 342
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 372
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setXasisRotationAngle(IFF)V
    .locals 0
    .parameter "direction"
    .parameter "DepthZ"
    .parameter "OffsetY"

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    .line 108
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    goto :goto_0

    .line 111
    :pswitch_1
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    .line 112
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    goto :goto_0

    .line 115
    :pswitch_2
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    .line 116
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    goto :goto_0

    .line 119
    :pswitch_3
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    .line 120
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
