.class Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;
.super Ljava/lang/Object;
.source "UploadProcessBase.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper$NetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->getTEyeIdFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;


# direct methods
.method constructor <init>(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V
    .locals 0

    .line 840
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Message;)V
    .locals 5

    const-string v0, "teyeId"

    .line 843
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTEyeIdFromServer]: getTEyeIdFromServer  onResult what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 871
    :cond_0
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[getTEyeIdFromServer]: getTEyeIdFromServer failed"

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 846
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 847
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getTEyeIdFromServer]: getTEyeIdFromServer success msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/db/NetworkHelper;->getTeyeIdFromJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 849
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 850
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setTEyeId(Ljava/lang/String;)V

    .line 851
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    .line 852
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1, v2}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$402(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z

    .line 854
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$600(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 857
    :try_start_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$100(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 858
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 859
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 860
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 862
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getTEyeIdFromServer]: getSharedPreferences failed:"

    invoke-static {v0, v1, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 866
    :cond_2
    :goto_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$4;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->schedulerIntervalJobIfNeed()V

    :cond_3
    :goto_1
    return-void
.end method
