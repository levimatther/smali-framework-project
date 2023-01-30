.class public final Lcom/android/dialer/shortcuts/PeriodicJobService;
.super Landroid/app/job/JobService;
.source "PeriodicJobService.java"


# static fields
.field private static final REFRESH_PERIOD_MILLIS:J


# instance fields
.field private refreshShortcutsTask:Lcom/android/dialer/shortcuts/RefreshShortcutsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/dialer/shortcuts/PeriodicJobService;->REFRESH_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelJob(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "PeriodicJobService.cancelJob"

    .line 83
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 85
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public static schedulePeriodicJob(Landroid/content/Context;)V
    .locals 5

    .line 57
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "PeriodicJobService.schedulePeriodicJob"

    .line 58
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    const/16 v2, 0x64

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "job already scheduled."

    .line 63
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/dialer/shortcuts/PeriodicJobService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v2, Lcom/android/dialer/shortcuts/PeriodicJobService;->REFRESH_PERIOD_MILLIS:J

    .line 70
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 91
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "PeriodicJobService.onStartJob"

    .line 92
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x19

    if-lt v1, v3, :cond_0

    .line 95
    new-instance v0, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;

    invoke-direct {v0, p0}, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;-><init>(Landroid/app/job/JobService;)V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/PeriodicJobService;->refreshShortcutsTask:Lcom/android/dialer/shortcuts/RefreshShortcutsTask;

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/app/job/JobParameters;

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "not running on NMR1, cancelling job"

    .line 100
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {p0}, Lcom/android/dialer/shortcuts/PeriodicJobService;->cancelJob(Landroid/content/Context;)V

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 110
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string p1, "PeriodicJobService.onStopJob"

    .line 111
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/android/dialer/shortcuts/PeriodicJobService;->refreshShortcutsTask:Lcom/android/dialer/shortcuts/RefreshShortcutsTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1, v0}, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->cancel(Z)Z

    :cond_0
    return v0
.end method
