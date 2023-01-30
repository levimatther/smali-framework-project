.class public final synthetic Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$6gM57wcxc_b8B7Q_OQ1hpbAoHiU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;


# instance fields
.field public final synthetic f$0:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$6gM57wcxc_b8B7Q_OQ1hpbAoHiU;->f$0:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$6gM57wcxc_b8B7Q_OQ1hpbAoHiU;->f$0:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/MissedCallNotificationReceiver;->lambda$onReceive$1(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Throwable;)V

    return-void
.end method
