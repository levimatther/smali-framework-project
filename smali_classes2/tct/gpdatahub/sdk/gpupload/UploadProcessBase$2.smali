.class Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;
.super Ljava/lang/Object;
.source "UploadProcessBase.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V
    .locals 0

    .line 275
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 278
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UploadCallback] msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/16 v2, 0x63

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    .line 348
    :pswitch_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1500(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    goto/16 :goto_1

    .line 345
    :pswitch_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnDateUpdated()V

    goto/16 :goto_1

    .line 341
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    .line 342
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1400(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    goto/16 :goto_1

    .line 284
    :pswitch_3
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnBootCompleted()V

    goto/16 :goto_1

    .line 335
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 336
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 337
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1300(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)V

    goto/16 :goto_1

    .line 332
    :pswitch_5
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->requestUploadFixedRec()V

    goto/16 :goto_1

    .line 329
    :pswitch_6
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnApplicationExit()V

    goto/16 :goto_1

    .line 322
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 323
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnNewPkgRegister(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 319
    :pswitch_8
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1200(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V

    goto/16 :goto_1

    .line 315
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 316
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1100(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :pswitch_a
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->updateExpectTime()V

    goto :goto_1

    .line 326
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnStop()V

    goto :goto_1

    .line 302
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 303
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    .line 304
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPLOAD_TASK_FAILED failed!! path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v2, v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleTaskFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    goto :goto_1

    .line 291
    :cond_2
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MSG_UPLOAD_TASK_SUCCESS success!!"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;

    if-eqz p1, :cond_4

    .line 293
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    .line 294
    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->alreadyExistTask(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleTaskSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "upload success, but no UploadParams...WTF!"

    .line 295
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_5
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1000(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ljava/lang/Object;)V

    goto :goto_1

    .line 281
    :cond_6
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$2;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnStart()V

    :cond_7
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
