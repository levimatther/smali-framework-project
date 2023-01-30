.class public Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;
.super Landroid/database/ContentObserver;
.source "BlockedNumberContentObserver.java"

# interfaces
.implements Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;


# static fields
.field public static final TIMEOUT_MS:I = 0x1388


# instance fields
.field private final asyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final number:Ljava/lang/String;

.field private final timeAddedMillis:J

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;J)V
    .locals 1

    .line 66
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    new-instance v0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver$1;-><init>(Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;)V

    iput-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->timeoutRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->asyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    const-string v0, "context"

    .line 67
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->context:Landroid/content/Context;

    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->handler:Landroid/os/Handler;

    .line 69
    iput-object p3, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->number:Ljava/lang/String;

    .line 70
    iput-wide p4, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->timeAddedMillis:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->unregister()V

    return-void
.end method

.method private unregister()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BlockedNumberContentObserver.unregister"

    const/4 v2, 0x0

    .line 107
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "BlockedNumberContentObserver.onChange"

    const-string v2, "attempting to remove call log entry from blocked number"

    .line 75
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->asyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    new-instance v7, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;

    iget-object v2, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->number:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->timeAddedMillis:J

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;-><init>(Landroid/content/Context;Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;Ljava/lang/String;J)V

    new-array p1, p1, [Ljava/lang/Void;

    const-string v1, "DeleteBlockedCallTask"

    invoke-interface {v0, v1, v7, p1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDeleteBlockedCallTaskComplete(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->unregister()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BlockedNumberContentObserver.register"

    const/4 v3, 0x0

    .line 96
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/util/PermissionsUtil;->hasCallLogReadPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->context:Landroid/content/Context;

    .line 98
    invoke-static {v1}, Lcom/android/dialer/util/PermissionsUtil;->hasCallLogWritePermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    iget-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "no call log read/write permissions."

    .line 102
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
