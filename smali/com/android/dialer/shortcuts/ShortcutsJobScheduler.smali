.class public Lcom/android/dialer/shortcuts/ShortcutsJobScheduler;
.super Ljava/lang/Object;
.source "ShortcutsJobScheduler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scheduleAllJobs(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ShortcutsJobScheduler.scheduleAllJobs"

    .line 35
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 38
    invoke-static {p0}, Lcom/android/dialer/shortcuts/Shortcuts;->areDynamicShortcutsEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "enabling shortcuts"

    .line 39
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {p0}, Lcom/android/dialer/shortcuts/PeriodicJobService;->schedulePeriodicJob(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "disabling shortcuts"

    .line 43
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {p0}, Lcom/android/dialer/shortcuts/PeriodicJobService;->cancelJob(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
