.class Landroid/webkit/WebView$InvokeListBox;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkit/WebView$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

.field private mMultiple:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[II)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selection"

    .prologue
    .line 11142
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11143
    iput p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    .line 11144
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 11146
    array-length v1, p2

    .line 11147
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 11148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11149
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 11150
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 11151
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 11152
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 11148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11154
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[IILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 10959
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[II)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[I)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selected"

    .prologue
    .line 11128
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11129
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    .line 11130
    iput-object p4, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    .line 11132
    array-length v1, p2

    .line 11133
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebView$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    .line 11134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11135
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V

    aput-object v3, v2, v0

    .line 11136
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 11137
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    .line 11138
    iget-object v2, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    .line 11134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11140
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[ILandroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 10959
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$12000(Landroid/webkit/WebView$InvokeListBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10959
    iget-boolean v0, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$12100(Landroid/webkit/WebView$InvokeListBox;)[Landroid/webkit/WebView$InvokeListBox$Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10959
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 11201
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebView;->access$12800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x2090080

    const/4 v10, 0x0

    invoke-virtual {v1, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 11206
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v5, p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    .line 11209
    .local v5, adapter:Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
    const/4 v7, 0x0

    .line 11210
    .local v7, ctx:Landroid/content/Context;
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-boolean v1, v1, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    if-eqz v1, :cond_0

    .line 11211
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 11212
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #ctx:Landroid/content/Context;
    check-cast v7, Landroid/content/Context;

    .line 11214
    .restart local v7       #ctx:Landroid/content/Context;
    :cond_0
    if-nez v7, :cond_1

    .line 11215
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebView;->access$12900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v7

    .line 11219
    :cond_1
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v6

    .line 11225
    .local v6, b:Lcom/htc/dialog/HtcAlertDialog$Builder;
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_2

    .line 11226
    const v1, 0x104000a

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$1;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebView$InvokeListBox$1;-><init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v6, v1, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 11233
    const/high16 v1, 0x104

    new-instance v3, Landroid/webkit/WebView$InvokeListBox$2;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$InvokeListBox$2;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v6, v1, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 11240
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v6}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v3

    #setter for: Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v1, v3}, Landroid/webkit/WebView;->access$13002(Landroid/webkit/WebView;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;

    .line 11241
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11242
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 11249
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 11250
    iget-boolean v1, p0, Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_4

    .line 11251
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 11252
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    array-length v9, v1

    .line 11253
    .local v9, length:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_5

    .line 11254
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v8

    invoke-virtual {v4, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 11253
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 11249
    .end local v8           #i:I
    .end local v9           #length:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 11257
    :cond_4
    new-instance v1, Landroid/webkit/WebView$InvokeListBox$3;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$InvokeListBox$3;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11268
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 11269
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 11270
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 11271
    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 11272
    new-instance v0, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkit/WebView$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebView$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 11274
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11277
    .end local v0           #observer:Landroid/database/DataSetObserver;
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebView$InvokeListBox$4;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$InvokeListBox$4;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 11287
    iget-object v1, p0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v1}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 11288
    return-void
.end method
