.class public Ltct/gpdatahub/sdk/gpupload/job/Job;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mJobParams:Landroid/app/job/JobParameters;

.field protected mService:Ltct/gpdatahub/sdk/gpupload/job/JobsService;


# direct methods
.method public constructor <init>(Ltct/gpdatahub/sdk/gpupload/job/JobsService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Ltct/gpdatahub/sdk/gpupload/job/Job;->mService:Ltct/gpdatahub/sdk/gpupload/job/JobsService;

    .line 11
    iput-object p2, p0, Ltct/gpdatahub/sdk/gpupload/job/Job;->mJobParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method protected jobFinished(Z)V
    .locals 2

    .line 18
    iget-object v0, p0, Ltct/gpdatahub/sdk/gpupload/job/Job;->mService:Ltct/gpdatahub/sdk/gpupload/job/JobsService;

    iget-object v1, p0, Ltct/gpdatahub/sdk/gpupload/job/Job;->mJobParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, p1}, Ltct/gpdatahub/sdk/gpupload/job/JobsService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
