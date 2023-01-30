.class Ltct/gpdatahub/sdk/Processor$19;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->deleteMobileEventByDay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$date:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$19;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-object p2, p0, Ltct/gpdatahub/sdk/Processor$19;->val$date:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 264
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$19;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v0, v0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/Processor$19;->val$date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->deleteMobileEventByDay(Ljava/lang/String;)V

    return-void
.end method
