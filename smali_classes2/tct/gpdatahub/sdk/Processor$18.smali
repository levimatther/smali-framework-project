.class Ltct/gpdatahub/sdk/Processor$18;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->deleteMobileEventById(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$endId:J

.field final synthetic val$startId:J


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;JJ)V
    .locals 0

    .line 254
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$18;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-wide p2, p0, Ltct/gpdatahub/sdk/Processor$18;->val$startId:J

    iput-wide p4, p0, Ltct/gpdatahub/sdk/Processor$18;->val$endId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 256
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$18;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v0, v0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    iget-wide v1, p0, Ltct/gpdatahub/sdk/Processor$18;->val$startId:J

    iget-wide v3, p0, Ltct/gpdatahub/sdk/Processor$18;->val$endId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->deleteMobileEventById(JJ)V

    return-void
.end method
