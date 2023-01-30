.class Ltct/gpdatahub/sdk/Processor$17;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$day:Ljava/lang/String;

.field final synthetic val$last_upload_time:Ljava/lang/String;

.field final synthetic val$split_process:I

.field final synthetic val$start_id:J

.field final synthetic val$upload_fail_times:I

.field final synthetic val$upload_flag:I

.field final synthetic val$upload_state:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$17;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-object p2, p0, Ltct/gpdatahub/sdk/Processor$17;->val$day:Ljava/lang/String;

    iput-wide p3, p0, Ltct/gpdatahub/sdk/Processor$17;->val$start_id:J

    iput-object p5, p0, Ltct/gpdatahub/sdk/Processor$17;->val$upload_state:Ljava/lang/String;

    iput p6, p0, Ltct/gpdatahub/sdk/Processor$17;->val$upload_fail_times:I

    iput-object p7, p0, Ltct/gpdatahub/sdk/Processor$17;->val$last_upload_time:Ljava/lang/String;

    iput p8, p0, Ltct/gpdatahub/sdk/Processor$17;->val$split_process:I

    iput p9, p0, Ltct/gpdatahub/sdk/Processor$17;->val$upload_flag:I

    iput-object p10, p0, Ltct/gpdatahub/sdk/Processor$17;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 248
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$17;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v1, v0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    iget-object v2, p0, Ltct/gpdatahub/sdk/Processor$17;->val$day:Ljava/lang/String;

    iget-wide v3, p0, Ltct/gpdatahub/sdk/Processor$17;->val$start_id:J

    iget-object v5, p0, Ltct/gpdatahub/sdk/Processor$17;->val$upload_state:Ljava/lang/String;

    iget v6, p0, Ltct/gpdatahub/sdk/Processor$17;->val$upload_fail_times:I

    iget-object v7, p0, Ltct/gpdatahub/sdk/Processor$17;->val$last_upload_time:Ljava/lang/String;

    iget v8, p0, Ltct/gpdatahub/sdk/Processor$17;->val$split_process:I

    iget v9, p0, Ltct/gpdatahub/sdk/Processor$17;->val$upload_flag:I

    iget-object v10, p0, Ltct/gpdatahub/sdk/Processor$17;->val$data:Ljava/lang/String;

    invoke-virtual/range {v1 .. v10}, Ltct/gpdatahub/sdk/handler/UploadHandler;->updateUpload(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method
