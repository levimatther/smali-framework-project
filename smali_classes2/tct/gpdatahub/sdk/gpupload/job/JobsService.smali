.class public Ltct/gpdatahub/sdk/gpupload/job/JobsService;
.super Landroid/app/job/JobService;
.source "JobsService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 8
    invoke-static {p0, p1}, Ltct/gpdatahub/sdk/gpupload/job/JobFactory;->create(Ltct/gpdatahub/sdk/gpupload/job/JobsService;Landroid/app/job/JobParameters;)Ltct/gpdatahub/sdk/gpupload/job/Job;

    move-result-object p1

    invoke-static {p1}, Ltct/gpdatahub/sdk/gpupload/job/JobProcessor;->Process(Ltct/gpdatahub/sdk/gpupload/job/Job;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
