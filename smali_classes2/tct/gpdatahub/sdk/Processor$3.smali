.class Ltct/gpdatahub/sdk/Processor$3;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$paraType:I

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$3;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-object p2, p0, Ltct/gpdatahub/sdk/Processor$3;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Ltct/gpdatahub/sdk/Processor$3;->val$eventId:Ljava/lang/String;

    iput-object p4, p0, Ltct/gpdatahub/sdk/Processor$3;->val$info:Ljava/lang/String;

    iput p5, p0, Ltct/gpdatahub/sdk/Processor$3;->val$paraType:I

    iput-object p6, p0, Ltct/gpdatahub/sdk/Processor$3;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 61
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$3;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v1, v0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    iget-object v2, p0, Ltct/gpdatahub/sdk/Processor$3;->val$eventType:Ljava/lang/String;

    iget-object v3, p0, Ltct/gpdatahub/sdk/Processor$3;->val$eventId:Ljava/lang/String;

    iget-object v4, p0, Ltct/gpdatahub/sdk/Processor$3;->val$info:Ljava/lang/String;

    iget v5, p0, Ltct/gpdatahub/sdk/Processor$3;->val$paraType:I

    iget-object v6, p0, Ltct/gpdatahub/sdk/Processor$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
