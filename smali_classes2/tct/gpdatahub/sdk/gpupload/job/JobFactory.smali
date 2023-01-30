.class public Ltct/gpdatahub/sdk/gpupload/job/JobFactory;
.super Ljava/lang/Object;
.source "JobFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Ltct/gpdatahub/sdk/gpupload/job/JobFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/gpupload/job/JobFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ltct/gpdatahub/sdk/gpupload/job/JobsService;Landroid/app/job/JobParameters;)Ltct/gpdatahub/sdk/gpupload/job/Job;
    .locals 2

    .line 11
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 29
    sget-object p0, Ltct/gpdatahub/sdk/gpupload/job/JobFactory;->TAG:Ljava/lang/String;

    const-string p1, "Warning,can\'t create the Job"

    invoke-static {p0, p1}, Ltct/gpdatahub/sdk/common/utils/TimerLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;

    invoke-direct {v0, p0, p1}, Ltct/gpdatahub/sdk/gpupload/job/UploadDataJob;-><init>(Ltct/gpdatahub/sdk/gpupload/job/JobsService;Landroid/app/job/JobParameters;)V

    return-object v0
.end method
