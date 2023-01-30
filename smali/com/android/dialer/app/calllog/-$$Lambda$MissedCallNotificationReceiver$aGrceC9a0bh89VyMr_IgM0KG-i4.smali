.class public final synthetic Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;->f$1:I

    iput-object p3, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;->f$1:I

    iget-object v2, p0, Lcom/android/dialer/app/calllog/-$$Lambda$MissedCallNotificationReceiver$aGrceC9a0bh89VyMr_IgM0KG-i4;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/android/dialer/app/calllog/MissedCallNotificationReceiver;->lambda$onReceive$0(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Void;)V

    return-void
.end method
