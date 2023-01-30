.class Ltct/gpdatahub/sdk/internal/UploadSdkManager$1;
.super Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;
.source "UploadSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/internal/UploadSdkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/internal/UploadSdkManager;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/internal/UploadSdkManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager$1;->this$0:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    invoke-direct {p0}, Lcom/tct/internal/gpdatahub/IDataHubStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataHubStateChanged(Z)V
    .locals 3

    .line 49
    invoke-static {}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDataHubStateChanged]  isCollectEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager$1;->this$0:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->enableTrackFromServer()V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/internal/UploadSdkManager$1;->this$0:Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->disableTrackFromServer()V

    :goto_0
    return-void
.end method

.method public onDebugStateChanged(Z)V
    .locals 3

    .line 58
    invoke-static {}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDebugStateChanged]  isDebugEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->setDEBUG(Z)V

    return-void
.end method
