.class public Lcom/android/dialer/app/calllog/MissedCallNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissedCallNotificationReceiver.java"


# static fields
.field public static final ACTION_SHOW_MISSED_CALLS_NOTIFICATION:Ljava/lang/String; = "android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION"

.field public static final EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_COUNT"

.field public static final EXTRA_NOTIFICATION_PHONE_NUMBER:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Void;)V
    .locals 2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "MissedCallNotificationReceiver.onReceive"

    const-string/jumbo v1, "update missed call notifications successful"

    .line 59
    invoke-static {v0, v1, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {p0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotificationReceiver;->updateBadgeCount(Landroid/content/Context;I)V

    .line 63
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method static synthetic lambda$onReceive$1(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Throwable;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MissedCallNotificationReceiver.onReceive"

    const-string/jumbo v1, "update missed call notifications failed"

    .line 67
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method private static updateBadgeCount(Landroid/content/Context;I)V
    .locals 2

    .line 77
    invoke-static {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 82
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "MissedCallNotificationReceiver.updateBadgeCount"

    const-string/jumbo p1, "update badge count: %d success: %b"

    .line 78
    invoke-static {p0, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "android.telecom.extra.NOTIFICATION_COUNT"

    .line 50
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

    .line 52
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/MissedCallNotificationReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 56
    invoke-static {p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getIstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/MissedCallNotifier;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/common/concurrent/DialerExecutors;->createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;

    invoke-direct {v3, p1, v0, v1}, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V

    .line 57
    invoke-interface {v2, v3}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    new-instance v2, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$6gM57wcxc_b8B7Q_OQ1hpbAoHiU;

    invoke-direct {v2, v1}, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$6gM57wcxc_b8B7Q_OQ1hpbAoHiU;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 65
    invoke-interface {p1, v2}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p1

    new-instance v1, Landroidx/core/util/Pair;

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method
