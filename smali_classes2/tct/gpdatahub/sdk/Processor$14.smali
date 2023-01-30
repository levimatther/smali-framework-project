.class Ltct/gpdatahub/sdk/Processor$14;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->insertUploadRecordByStartId(JIIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$isSuccessRecord:Z

.field final synthetic val$split_process:I

.field final synthetic val$startId:J

.field final synthetic val$upload_flag:I


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;JIIZLjava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$14;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-wide p2, p0, Ltct/gpdatahub/sdk/Processor$14;->val$startId:J

    iput p4, p0, Ltct/gpdatahub/sdk/Processor$14;->val$upload_flag:I

    iput p5, p0, Ltct/gpdatahub/sdk/Processor$14;->val$split_process:I

    iput-boolean p6, p0, Ltct/gpdatahub/sdk/Processor$14;->val$isSuccessRecord:Z

    iput-object p7, p0, Ltct/gpdatahub/sdk/Processor$14;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 224
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$14;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v1, v0, Ltct/gpdatahub/sdk/Processor;->mUploadHandler:Ltct/gpdatahub/sdk/handler/UploadHandler;

    iget-wide v2, p0, Ltct/gpdatahub/sdk/Processor$14;->val$startId:J

    iget v4, p0, Ltct/gpdatahub/sdk/Processor$14;->val$upload_flag:I

    iget v5, p0, Ltct/gpdatahub/sdk/Processor$14;->val$split_process:I

    iget-boolean v6, p0, Ltct/gpdatahub/sdk/Processor$14;->val$isSuccessRecord:Z

    iget-object v7, p0, Ltct/gpdatahub/sdk/Processor$14;->val$data:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Ltct/gpdatahub/sdk/handler/UploadHandler;->insertUploadRecordByStartId(JIIZLjava/lang/String;)V

    return-void
.end method
