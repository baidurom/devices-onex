.class public Lcom/htc/content/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/htc/content/AsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/content/AsyncQueryHandler;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget-object v3, v3, Lcom/htc/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    .line 145
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v9, 0x0

    .line 148
    .local v9, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 149
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v9           #args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    check-cast v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    .line 151
    .restart local v9       #args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    .line 152
    .local v16, token:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 154
    .local v12, event:I
    packed-switch v12, :pswitch_data_0

    .line 263
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v3, 0x7

    if-eq v12, v3, :cond_0

    .line 264
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 265
    .local v14, reply:Landroid/os/Message;
    iput-object v9, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    iput v3, v14, Landroid/os/Message;->arg1:I

    .line 267
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    iput v3, v14, Landroid/os/Message;->arg2:I

    .line 274
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 157
    .end local v14           #reply:Landroid/os/Message;
    :pswitch_1
    const/4 v10, 0x0

    .line 159
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v5, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v6, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 164
    if-eqz v10, :cond_4

    .line 165
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_4
    :goto_2
    iput-object v10, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 167
    :catch_0
    move-exception v11

    .line 168
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "AsyncQueryHandler"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v10, :cond_5

    .line 170
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 182
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 183
    :catch_1
    move-exception v11

    .line 184
    .restart local v11       #e:Ljava/lang/Exception;
    iput-object v11, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 185
    const/4 v3, 0x5

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 186
    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 194
    .end local v11           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v6, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v7, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 196
    :catch_2
    move-exception v11

    .line 197
    .restart local v11       #e:Ljava/lang/Exception;
    iput-object v11, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 198
    const/4 v3, 0x5

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 199
    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 207
    .end local v11           #e:Ljava/lang/Exception;
    :pswitch_4
    :try_start_3
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v6, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 208
    :catch_3
    move-exception v11

    .line 209
    .restart local v11       #e:Ljava/lang/Exception;
    iput-object v11, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 210
    const/4 v3, 0x5

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 211
    const/4 v3, 0x4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 218
    .end local v11           #e:Ljava/lang/Exception;
    :pswitch_5
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 219
    .local v17, token_tmp:[I
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .line 222
    .local v8, tag_tmp:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 223
    .local v13, isUpdated:Z
    :try_start_4
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .local v18, values:Landroid/content/ContentValues;
    const-string v15, ""

    .line 225
    .local v15, tag:Ljava/lang/String;
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v5, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v6, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 228
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 229
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget-object v4, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-virtual/range {v3 .. v8}, Lcom/htc/content/AsyncQueryHandler;->isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V

    .line 231
    const/4 v3, 0x0

    aget v16, v17, v3

    .line 232
    const/4 v3, 0x0

    aget-object v15, v8, v3

    .line 234
    const/16 v3, 0x3f0

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 235
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task_tag=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 237
    :cond_6
    const/4 v13, 0x1

    .line 239
    :cond_7
    if-eqz v5, :cond_8

    .line 240
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_8
    if-nez v13, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget-object v4, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v4, v0, v1}, Lcom/htc/content/AsyncQueryHandler;->prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V

    .line 245
    const/4 v3, 0x0

    aget v16, v17, v3

    .line 246
    iget-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 249
    .end local v5           #c:Landroid/database/Cursor;
    .end local v15           #tag:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_4
    move-exception v11

    .line 250
    .restart local v11       #e:Ljava/lang/Exception;
    iput-object v11, v9, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 251
    const/4 v3, 0x5

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 252
    const/4 v3, 0x6

    move-object/from16 v0, p1

    iput v3, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 257
    .end local v8           #tag_tmp:[Ljava/lang/String;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #isUpdated:Z
    .end local v17           #token_tmp:[I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$000(Lcom/htc/content/AsyncQueryHandler;)Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->forceProcessingOperations()V

    goto/16 :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
