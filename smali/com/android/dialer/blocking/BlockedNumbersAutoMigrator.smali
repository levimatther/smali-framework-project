.class public Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;
.super Ljava/lang/Object;
.source "BlockedNumbersAutoMigrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;
    }
.end annotation


# static fields
.field static final HAS_CHECKED_AUTO_MIGRATE_KEY:Ljava/lang/String; = "checkedAutoMigrate"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final dialerExecutorFactory:Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

.field private final queryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/common/concurrent/DialerExecutorFactory;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->appContext:Landroid/content/Context;

    .line 57
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iput-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->queryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 58
    invoke-static {p3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    iput-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->dialerExecutorFactory:Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method private autoMigrate(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BlockedNumbersAutoMigrator"

    const-string v1, "attempting to auto-migrate."

    .line 79
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->queryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    new-instance v0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$1;-><init>(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;)V

    invoke-virtual {p1, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->hasBlockedNumbers(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnHasBlockedNumbersListener;)V

    return-void
.end method

.method public static synthetic lambda$zaSs002ouJWjTK8tnZo-pf949Qs(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->autoMigrate(Z)V

    return-void
.end method


# virtual methods
.method public asyncAutoMigrate()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->dialerExecutorFactory:Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    new-instance v1, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;

    iget-object v2, p0, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator$ShouldAttemptAutoMigrate;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/blocking/-$$Lambda$BlockedNumbersAutoMigrator$zaSs002ouJWjTK8tnZo-pf949Qs;

    invoke-direct {v1, p0}, Lcom/android/dialer/blocking/-$$Lambda$BlockedNumbersAutoMigrator$zaSs002ouJWjTK8tnZo-pf949Qs;-><init>(Lcom/android/dialer/blocking/BlockedNumbersAutoMigrator;)V

    .line 64
    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method
