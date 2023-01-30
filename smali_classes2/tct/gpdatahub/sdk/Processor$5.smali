.class Ltct/gpdatahub/sdk/Processor$5;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->insertEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$eventType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 76
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$5;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-object p2, p0, Ltct/gpdatahub/sdk/Processor$5;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Ltct/gpdatahub/sdk/Processor$5;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$5;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v0, v0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/Processor$5;->val$eventType:Ljava/lang/String;

    iget-object v2, p0, Ltct/gpdatahub/sdk/Processor$5;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->insertEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
