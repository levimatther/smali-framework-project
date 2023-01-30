.class Lcom/android/incallui/InCallPresenter$6;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/incallui/latencyreport/LatencyReport;Landroid/telecom/Call;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$6;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$6;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter$6;->val$call:Landroid/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$6;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 686
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$6;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-virtual {v0}, Lcom/android/incallui/latencyreport/LatencyReport;->onCallBlockingDone()V

    .line 687
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$6;->val$call:Landroid/telecom/Call;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$6;->val$latencyReport:Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/call/CallList;->onCallAdded(Landroid/content/Context;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V

    return-void
.end method
