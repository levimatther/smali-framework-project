.class public Lcom/android/dialer/shortcuts/ShortcutUsageReporter;
.super Ljava/lang/Object;
.source "ShortcutUsageReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/shortcuts/ShortcutUsageReporter$Task;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/shortcuts/ShortcutUsageReporter;->EXECUTOR:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onOutgoingCallAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 69
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/android/dialer/shortcuts/ShortcutUsageReporter;->EXECUTOR:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    new-instance v1, Lcom/android/dialer/shortcuts/ShortcutUsageReporter$Task;

    invoke-direct {v1, p0}, Lcom/android/dialer/shortcuts/ShortcutUsageReporter$Task;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, p0, v2

    const-string p1, "ShortcutUsageReporter.Task"

    invoke-interface {v0, p1, v1, p0}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
