.class final Lcom/android/dialer/shortcuts/RefreshShortcutsTask;
.super Landroid/os/AsyncTask;
.source "RefreshShortcutsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/job/JobParameters;",
        "Ljava/lang/Void;",
        "Landroid/app/job/JobParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final jobService:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->jobService:Landroid/app/job/JobService;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 4

    .line 45
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const-string v0, "RefreshShortcutsTask.doInBackground"

    .line 46
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/android/dialer/shortcuts/DynamicShortcuts;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->jobService:Landroid/app/job/JobService;

    new-instance v2, Lcom/android/dialer/shortcuts/IconFactory;

    iget-object v3, p0, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->jobService:Landroid/app/job/JobService;

    invoke-direct {v2, v3}, Lcom/android/dialer/shortcuts/IconFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/shortcuts/DynamicShortcuts;-><init>(Landroid/content/Context;Lcom/android/dialer/shortcuts/IconFactory;)V

    invoke-virtual {v0}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->updateIcons()V

    .line 58
    new-instance v0, Lcom/android/dialer/shortcuts/PinnedShortcuts;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->jobService:Landroid/app/job/JobService;

    invoke-direct {v0, v1}, Lcom/android/dialer/shortcuts/PinnedShortcuts;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/dialer/shortcuts/PinnedShortcuts;->refresh()V

    const/4 v0, 0x0

    .line 60
    aget-object p1, p1, v0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->doInBackground([Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 66
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const-string v0, "RefreshShortcutsTask.onPostExecute"

    .line 67
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->jobService:Landroid/app/job/JobService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/android/dialer/shortcuts/RefreshShortcutsTask;->onPostExecute(Landroid/app/job/JobParameters;)V

    return-void
.end method
