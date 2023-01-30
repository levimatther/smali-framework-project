.class Ltct/gpdatahub/sdk/Processor$1;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/Processor;->processCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/Processor;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$eventSubType:Ljava/lang/String;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/Processor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 41
    iput-object p1, p0, Ltct/gpdatahub/sdk/Processor$1;->this$0:Ltct/gpdatahub/sdk/Processor;

    iput-object p2, p0, Ltct/gpdatahub/sdk/Processor$1;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Ltct/gpdatahub/sdk/Processor$1;->val$eventSubType:Ljava/lang/String;

    iput-object p4, p0, Ltct/gpdatahub/sdk/Processor$1;->val$eventId:Ljava/lang/String;

    iput-object p5, p0, Ltct/gpdatahub/sdk/Processor$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 43
    iget-object v0, p0, Ltct/gpdatahub/sdk/Processor$1;->this$0:Ltct/gpdatahub/sdk/Processor;

    iget-object v0, v0, Ltct/gpdatahub/sdk/Processor;->mMobileEventHandler:Ltct/gpdatahub/sdk/handler/MobileEventHandler;

    iget-object v1, p0, Ltct/gpdatahub/sdk/Processor$1;->val$eventType:Ljava/lang/String;

    iget-object v2, p0, Ltct/gpdatahub/sdk/Processor$1;->val$eventSubType:Ljava/lang/String;

    iget-object v3, p0, Ltct/gpdatahub/sdk/Processor$1;->val$eventId:Ljava/lang/String;

    iget-object v4, p0, Ltct/gpdatahub/sdk/Processor$1;->val$map:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Ltct/gpdatahub/sdk/handler/MobileEventHandler;->insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
