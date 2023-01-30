.class public Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;
.super Ltct/gpdatahub/sdk/gpupload/job/Job;
.source "UploadDataJob.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dataHubManagerService:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ltct/gpdatahub/sdk/gpupload/job/JobsService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ltct/gpdatahub/sdk/gpupload/job/Job;-><init>(Ltct/gpdatahub/sdk/gpupload/job/JobsService;Landroid/app/job/JobParameters;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->dataHubManagerService:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 24
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->mService:Ltct/gpdatahub/sdk/gpupload/job/JobsService;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/job/JobsService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ltct/gpdatahub/sdk/common/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->TAG:Ljava/lang/String;

    const-string v1, "Wifi is not connected "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-static {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->getInstance(Landroid/content/Context;)Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->dataHubManagerService:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    .line 29
    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->onRequestUploadTask()V

    .line 30
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->TAG:Ljava/lang/String;

    const-string v1, "postThread start id is "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_1
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->dataHubManagerService:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->isMaybeNewRecordGenerate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->dataHubManagerService:Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;

    invoke-virtual {v0}, Ltct/gpdatahub/sdk/gpupload/DataHubLocalManagerService;->isEnableScheduleUtilScreenOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->TAG:Ljava/lang/String;

    const-string v2, "schedule wait for new record"

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v1}, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->jobFinished(Z)V

    goto :goto_2

    .line 39
    :cond_2
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->TAG:Ljava/lang/String;

    const-string v1, "remove schedule!!! "

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->jobFinished(Z)V

    goto :goto_2

    .line 43
    :cond_3
    sget-object v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->TAG:Ljava/lang/String;

    const-string v2, "jobFinished true "

    invoke-static {v0, v2}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v1}, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;->jobFinished(Z)V

    :goto_2
    return-void
.end method
