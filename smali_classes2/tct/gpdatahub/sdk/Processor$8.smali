.class Ltct/gpdatahub/sdk/Processor$8;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->insertActivitySession(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$activity_name:Ljava/lang/String;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$8;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-object p2, p0, Ltct/gpdatahub/sdk/Processor$8;->val$activity_name:Ljava/lang/String;

    iput p3, p0, Ltct/gpdatahub/sdk/Processor$8;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$8;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v0, v0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/Processor$8;->val$activity_name:Ljava/lang/String;

    iget v2, p0, Ltct/gpdatahub/sdk/Processor$8;->val$duration:I

    invoke-virtual {v0, v1, v2}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->insertActivitySession(Ljava/lang/String;I)V

    return-void
.end method
