.class public final Lcom/android/dialer/shortcuts/ShortcutRefresher;
.super Ljava/lang/Object;
.source "ShortcutRefresher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/shortcuts/ShortcutRefresher;->EXECUTOR:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refresh(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 42
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/shortcuts/Shortcuts;->areDynamicShortcutsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 53
    :cond_1
    sget-object v0, Lcom/android/dialer/shortcuts/ShortcutRefresher;->EXECUTOR:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    new-instance v1, Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;

    invoke-direct {v1, p0}, Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/util/List;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, p0, v2

    const-string p1, "ShortcutRefresher.Task"

    invoke-interface {v0, p1, v1, p0}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
