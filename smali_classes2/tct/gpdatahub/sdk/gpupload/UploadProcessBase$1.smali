.class Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;
.super Ljava/lang/Object;
.source "UploadProcessBase.java"

# interfaces
.implements Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;
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

    .line 139
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationExit(Ljava/lang/String;)V
    .locals 1

    .line 266
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->isEnableUploadOnApplicationExit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 269
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .line 186
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDateUpdate()V
    .locals 2

    .line 176
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->readyReceiveEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 181
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onInsertEvent(JI)V
    .locals 1

    .line 219
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->handleOnInsertEvent(JI)V

    return-void
.end method

.method public onPhoneStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->readyReceiveEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onPhoneStatusChanged]"

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 149
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$100(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 150
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1, v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$202(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z

    .line 152
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$300(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$400(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 153
    :cond_1
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->onRequestConfigFromServer(I)V

    .line 155
    :cond_2
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->schedulerIntervalJobIfNeed()V

    goto :goto_0

    .line 157
    :cond_3
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$202(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;Z)Z

    .line 159
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$500(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 164
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$600(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$300(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$400(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    .line 165
    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getExpectTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 166
    invoke-static {}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->getCurrentHourAndMinuteTime()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->getExpectTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltct/gpdatahub/sdk/common/utils/TimeUtils;->compareTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 168
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->uploadFixedRecIfNeed()Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onRegisterPackage(Ljava/lang/String;)V
    .locals 4

    .line 254
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$100(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/common/utils/AppUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 255
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$900(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ltct/gpdatahub/sdk/gpupload/db/ConfigSettings;->addBaseInfo(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onRegisterPackage]: pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", versionCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onRequireUploadNewTask()V
    .locals 2

    .line 240
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 242
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRequireUploadNewTask(I)V
    .locals 4

    .line 247
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 249
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onScreenChanged(Z)V
    .locals 3

    .line 224
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScreenChanged]: screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$300(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isDataHubEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    iget-object v2, v2, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->intervalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 191
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 196
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->readyReceiveEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$800(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onUserSetUpComplete()Z
    .locals 2

    .line 204
    invoke-static {}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onUserSetUpComplete]: "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->isUserSetUpComplete()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->setUserSetUpComplete(Z)V

    .line 211
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase$1;->this$0:Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;->access$700(Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;)Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/db/UploadConfigInfo;->updateConfigs()V

    :cond_1
    return v1
.end method
