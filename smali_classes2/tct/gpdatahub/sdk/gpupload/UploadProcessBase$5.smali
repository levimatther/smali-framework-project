.class Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$5;
.super Ljava/lang/Object;
.source "UploadProcessBase.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1210
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$5;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1214
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intervalRunnable.."

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$5;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleIntervalJobs()V

    return-void
.end method
