.class Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)V
    .locals 0

    .line 113
    iput-object p1, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;->this$0:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 116
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;->this$0:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    invoke-static {v0}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->access$000(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;->this$0:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    invoke-static {v0}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->access$100(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;->this$0:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->access$002(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;Z)Z

    .line 119
    :try_start_0
    invoke-static {}, Ltct/gpdatahub/sdk/factory/DaoFactory;->getInstance()Ltct/gpdatahub/sdk/factory/DaoFactory;

    move-result-object v0

    invoke-static {}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->access$200()Z

    move-result v1

    iget-object v2, p0, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks$1;->this$0:Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    invoke-static {v2}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->access$300(Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltct/gpdatahub/sdk/factory/DaoFactory;->getMobileEventDao(ZLandroid/content/Context;)Ltct/gpdatahub/sdk/dao/IMobileEventDao;

    move-result-object v0

    invoke-interface {v0}, Ltct/gpdatahub/sdk/dao/IMobileEventDao;->batchInsertAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
