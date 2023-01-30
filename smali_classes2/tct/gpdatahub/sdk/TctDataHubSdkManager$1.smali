.class Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;
.super Ljava/lang/Object;
.source "TctDataHubSdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/TctDataHubSdkManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Landroid/content/Context;)V
    .locals 0

    .line 71
    iput-object p1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    iput-object p2, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 74
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    iget-object v1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$000(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/GeneralUtils;->getDatahubEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    new-instance v1, Ltct/gpdatahub/sdk/Processor;

    iget-object v2, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Ltct/gpdatahub/sdk/Processor;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$202(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Ltct/gpdatahub/sdk/Processor;)Ltct/gpdatahub/sdk/Processor;

    .line 79
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$302(Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;)Ltct/gpdatahub/sdk/common/utils/AppConfigSettings;

    .line 80
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object v0

    invoke-static {v0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$402(Ltct/gpdatahub/sdk/internal/UploadSdkManager;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    .line 81
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    iget-object v1, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$502(Ltct/gpdatahub/sdk/TctDataHubSdkManager;Landroid/content/Context;)Landroid/content/Context;

    .line 82
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/handler/ExceptionHandler;->init(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$600(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    invoke-static {v0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$700(Ltct/gpdatahub/sdk/TctDataHubSdkManager;)V

    .line 85
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    invoke-static {v0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$800(Ltct/gpdatahub/sdk/TctDataHubSdkManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    invoke-static {v0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$900(Ltct/gpdatahub/sdk/TctDataHubSdkManager;)Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Ltct/gpdatahub/sdk/TctDataHubSdkManager$1;->this$0:Ltct/gpdatahub/sdk/TctDataHubSdkManager;

    invoke-static {v0}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$900(Ltct/gpdatahub/sdk/TctDataHubSdkManager;)Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/ActivityLifecycleCallbacks;->insertAppOpen()V

    :cond_1
    return-void

    .line 75
    :cond_2
    :goto_0
    invoke-static {}, Ltct/gpdatahub/sdk/TctDataHubSdkManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit initialization!!"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
