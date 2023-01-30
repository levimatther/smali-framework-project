.class Lcom/android/incallui/InCallPresenter$7;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->maybeBlockCall(Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$timeAdded:J


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/incallui/latencyreport/LatencyReport;Landroid/telecom/Call;Ljava/lang/String;J)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$7;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$7;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter$7;->val$runnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/incallui/InCallPresenter$7;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    iput-object p6, p0, Lcom/android/incallui/InCallPresenter$7;->val$call:Landroid/telecom/Call;

    iput-object p7, p0, Lcom/android/incallui/InCallPresenter$7;->val$number:Ljava/lang/String;

    iput-wide p8, p0, Lcom/android/incallui/InCallPresenter$7;->val$timeAdded:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 6

    .line 696
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isReadyForTearDown()Z

    move-result v0

    const-string v1, "InCallPresenter.onCheckComplete"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "torn down, not adding call"

    .line 697
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$7;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$7;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$7;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-nez p1, :cond_2

    .line 704
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    .line 705
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-virtual {p1}, Lcom/android/incallui/latencyreport/LatencyReport;->onCallBlockingDone()V

    .line 706
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/call/CallList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$7;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/incallui/call/CallList;->onCallAdded(Landroid/content/Context;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "invalid number, skipping block checking"

    .line 709
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5

    .line 712
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$7;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 714
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-virtual {p1}, Lcom/android/incallui/latencyreport/LatencyReport;->onCallBlockingDone()V

    .line 715
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/call/CallList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->val$call:Landroid/telecom/Call;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$7;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/incallui/call/CallList;->onCallAdded(Landroid/content/Context;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V

    goto :goto_0

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Rejecting incoming call from blocked number"

    .line 718
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->val$call:Landroid/telecom/Call;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 721
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/InteractionEvent$Type;->CALL_BLOCKED:Lcom/android/dialer/logging/InteractionEvent$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 728
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 733
    :cond_4
    new-instance p1, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    .line 734
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$7;->val$number:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/incallui/InCallPresenter$7;->val$timeAdded:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;J)V

    .line 735
    invoke-virtual {p1}, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->register()V

    :cond_5
    :goto_0
    return-void
.end method
