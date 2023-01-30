.class final Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;
.super Lcom/android/dialer/common/concurrent/FallibleAsyncTask;
.source "ShortcutRefresher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/shortcuts/ShortcutRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dialer/common/concurrent/FallibleAsyncTask<",
        "Ljava/util/List<",
        "Lcom/android/contacts/common/list/ContactEntry;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "ShortcutRefresher.Task"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/dialer/common/concurrent/FallibleAsyncTask;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundFallible([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 56
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;->doInBackgroundFallible([Ljava/util/List;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs doInBackgroundFallible([Ljava/util/List;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 74
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const-string v0, "ShortcutRefresher.Task.doInBackground"

    .line 75
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/dialer/shortcuts/DynamicShortcuts;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/dialer/shortcuts/IconFactory;

    iget-object v3, p0, Lcom/android/dialer/shortcuts/ShortcutRefresher$Task;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/dialer/shortcuts/IconFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/shortcuts/DynamicShortcuts;-><init>(Landroid/content/Context;Lcom/android/dialer/shortcuts/IconFactory;)V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->refresh(Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method
