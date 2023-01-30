.class Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$3;
.super Ljava/lang/Object;
.source "UploadProcessBase.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->requestConfigFromServer()V
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

    .line 484
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$3;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Message;)V
    .locals 3

    .line 487
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestConfigFromServer]: onResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$3;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1100(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Ljava/lang/String;)V

    .line 493
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$3;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$302(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z

    .line 501
    :cond_1
    :goto_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$3;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$1602(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z

    return-void
.end method
