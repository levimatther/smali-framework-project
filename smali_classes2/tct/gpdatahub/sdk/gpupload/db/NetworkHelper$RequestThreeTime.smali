.class abstract Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
.super Ljava/lang/Object;
.source "NetworkHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "RequestThreeTime"
.end annotation


# static fields
.field private static final MAX_TRY_TIMES:I = 0x3


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mContext:Landroid/content/Context;

.field protected mFailedMsg:I

.field protected mHandler:Landroid/os/Handler;

.field protected mSuccessMsg:I

.field protected mTryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 460
    invoke-direct/range {v0 .. v7}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 451
    iput p5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mTryCount:I

    const/4 p5, 0x0

    .line 452
    iput-object p5, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mBundle:Landroid/os/Bundle;

    .line 465
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mContext:Landroid/content/Context;

    .line 466
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mHandler:Landroid/os/Handler;

    .line 467
    iput p3, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mSuccessMsg:I

    .line 468
    iput p4, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mFailedMsg:I

    .line 469
    iput p7, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mTryCount:I

    .line 470
    iput-object p6, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method abstract getNewSubInstance()Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 523
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage result code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NetworkHelper"

    invoke-static {v2, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage curTime is "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mTryCount:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "post fail mTryCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mTryCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->getNewSubInstance()Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "post fail 3"

    .line 532
    invoke-static {v2, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 533
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->notifyBeforeRunQuit([Ljava/lang/Object;)V

    .line 534
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mHandler:Landroid/os/Handler;

    iget v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mFailedMsg:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 535
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 510
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->notifyBeforeRunQuit([Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mHandler:Landroid/os/Handler;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mSuccessMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 512
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    if-eqz v1, :cond_3

    .line 513
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    .line 514
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getProtocolCode()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 515
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mHandler:Landroid/os/Handler;

    iget v1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mFailedMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 517
    :cond_2
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResponse()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 520
    :cond_3
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method varargs notifyBeforeRunQuit([Ljava/lang/Object;)V
    .locals 1

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[notifyBeforeRunQuit] falter, DEBUG_NO_DELETE_UPLOAD_FILE="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Ltct/gpdatahub/sdk/common/constant/Debug;->DEBUG_NO_DELETE_UPLOAD_FILE:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkHelper"

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkHelper"

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestThreeTime start  time  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 495
    invoke-virtual {p0, v2}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->runImp([Ljava/lang/Object;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;

    move-result-object v2

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestThreeTime  end time  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 500
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResultCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    .line 501
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    :cond_0
    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/upload/model/Response;->getResultCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 504
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$RequestThreeTime;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method varargs abstract runImp([Ljava/lang/Object;)Ltct/gpdatahub/sdk/gpupload/upload/model/Response;
.end method
