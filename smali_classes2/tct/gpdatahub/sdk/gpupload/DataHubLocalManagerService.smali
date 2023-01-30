.class public Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;
.super Ljava/lang/Object;
.source "DataHubLocalManagerService.java"

# interfaces
.implements Lcom/tct/internal/gpdatahub/IDataHubManager;
.implements Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataHubManagerService-Local"

.field private static sInstance:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;


# instance fields
.field private alreadyStopTrack:Z

.field private mBroadcastReceiver:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;

.field private mContext:Landroid/content/Context;

.field private mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

.field private mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->alreadyStopTrack:Z

    .line 35
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;

    invoke-direct {v0, p1}, Ltct/gpdatahub/sdk/gpupload/UploadProcessBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    .line 37
    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getEventNotify()Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    .line 38
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {p1, p0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->setDatahubStateCallback(Ltct/gpdatahub/sdk/gpupload/IProcessor$IDatahubStateCallback;)V

    .line 41
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->onStart()V

    return-void
.end method

.method static synthetic access$000(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;
    .locals 0

    .line 21
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    return-object p0
.end method

.method static synthetic access$100(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)Ltct/gpdatahub/sdk/gpupload/IProcessor;
    .locals 0

    .line 21
    iget-object p0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;
    .locals 2

    const-class v0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->sInstance:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->sInstance:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    .line 50
    :cond_0
    sget-object p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->sInstance:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onStart()V
    .locals 2

    const-string v0, "DataHubManagerService-Local"

    const-string v1, "[onStart]"

    .line 55
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onStart()V

    .line 58
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->onRequestConfigFromServer(I)V

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->alreadyStopTrack:Z

    .line 61
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->registerBroadcasts()V

    return-void
.end method

.method private onStop()V
    .locals 2

    const-string v0, "DataHubManagerService-Local"

    const-string v1, "[onStop]"

    .line 66
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onStop()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    :cond_0
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->alreadyStopTrack:Z

    .line 72
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->unRegisterReceiver()V

    return-void
.end method

.method private registerBroadcasts()V
    .locals 3

    .line 76
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mBroadcastReceiver:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;

    invoke-direct {v1, p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;-><init>(Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;)V

    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mBroadcastReceiver:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;

    .line 85
    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReceiver()V
    .locals 3

    const-string v0, "DataHubManagerService-Local"

    const-string v1, "[unRegisterReceiver]"

    .line 122
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mBroadcastReceiver:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mBroadcastReceiver:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTeyeId()Ljava/lang/String;
    .locals 3

    const-string v0, "DataHubManagerService-Local"

    const-string v1, "[getTEyeId]: enter"

    .line 233
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTEyeId]: id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v2}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getTEyeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->getTEyeId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnableDataHub()Z
    .locals 1

    .line 206
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableDataHub()Z

    move-result v0

    return v0

    .line 209
    :cond_0
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->alreadyStopTrack:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableScheduleUtilScreenOff()Z
    .locals 1

    .line 224
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isEnableScheduleUtilScreenOff()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMaybeNewRecordGenerate()Z
    .locals 1

    .line 216
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor;->isMaybeNewRecordGenerate()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyConfigFromServerUpdate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->enableTrackFromServer()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/internal/UploadSdkManager;

    move-result-object p1

    invoke-virtual {p1}, Ltct/gpdatahub/sdk/internal/UploadSdkManager;->disableTrackFromServer()V

    .line 161
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->onStop()V

    .line 164
    :goto_0
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/common/utils/AppUtils;->isTctLauncher(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tct.datahubdemo2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 166
    invoke-direct {p0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->unRegisterReceiver()V

    :cond_1
    return-void
.end method

.method public notifyUploadFailed(ILtct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)Z
    .locals 3

    const-string v0, "DataHubManagerService-Local"

    const-string v1, "[onUploadFailed] "

    .line 136
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tct.action.upload.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "reason"

    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p2}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "path"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v2
.end method

.method public notifyUploadSuccess(Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;)V
    .locals 3

    const-string v0, "DataHubManagerService-Local"

    const-string v1, "[onUploadSuccess] "

    .line 147
    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tct.action.upload.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1}, Ltct/gpdatahub/sdk/gpupload/upload/AbsUploadParams;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object p1, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onApplicationExit(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onActivityPaused]: pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHubManagerService-Local"

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    invoke-interface {v0, p1}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onApplicationExit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInsertEvent(JI)V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onInsertEvent]: insertId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", insertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHubManagerService-Local"

    invoke-static {v1, v0}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    invoke-interface {v0, p1, p2, p3}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onInsertEvent(JI)V

    :cond_0
    return-void
.end method

.method public onRequestUploadTask()V
    .locals 1

    .line 200
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mUploadProcessor:Ltct/gpdatahub/sdk/gpupload/IProcessor;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->mEventNotify:Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;

    invoke-interface {v0}, Ltct/gpdatahub/sdk/gpupload/IProcessor$IEventNotify;->onRequireUploadNewTask()V

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/tct/internal/gpdatahub/IDataHubStatusListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterListener(Lcom/tct/internal/gpdatahub/IDataHubStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
