.class Ltct/gpdatahub/sdk/Processor$20;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->trackActivityLifecycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;)V
    .locals 0

    .line 270
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$20;->this$0:Ltct/gpdatahub/sdk/Processor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 272
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$20;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v0, v0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->trackActivityLifecycle()V

    return-void
.end method
