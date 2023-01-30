.class Ltct/gpdatahub/sdk/gpupload/RomDevice$1;
.super Ljava/lang/Object;
.source "RomDevice.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/gpupload/RomDevice;->requestUploadFixedRec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/gpupload/RomDevice;)V
    .locals 0

    .line 279
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Message;)V
    .locals 4

    .line 282
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestUploadFixedRec]: onResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    .line 294
    invoke-static {v2}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$100(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getUploadFixedRecIntervalSeconds()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 293
    invoke-static {p1, v0, v1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$302(Ltct/gpdatahub/sdk/gpupload/RomDevice;J)J

    goto :goto_0

    .line 286
    :cond_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$100(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object p1

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentDay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setLastUploadFixedRecDate(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$100(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 289
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$200(Ltct/gpdatahub/sdk/gpupload/RomDevice;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 290
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$302(Ltct/gpdatahub/sdk/gpupload/RomDevice;J)J

    .line 297
    :goto_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/RomDevice$1;->this$0:Ltct/gpdatahub/sdk/gpupload/RomDevice;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/gpupload/RomDevice;->access$402(Ltct/gpdatahub/sdk/gpupload/RomDevice;Z)Z

    return-void
.end method
