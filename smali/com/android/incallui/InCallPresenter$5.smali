.class Lcom/android/incallui/InCallPresenter$5;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalCallAdded(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onExternalCallPulled(Landroid/telecom/Call;)V
    .locals 3

    .line 303
    new-instance v0, Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-direct {v0, p1}, Lcom/android/incallui/latencyreport/LatencyReport;-><init>(Landroid/telecom/Call;)V

    .line 304
    invoke-virtual {v0}, Lcom/android/incallui/latencyreport/LatencyReport;->onCallBlockingDone()V

    .line 306
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$100(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/call/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/incallui/call/CallList;->onCallAdded(Landroid/content/Context;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;)V

    .line 307
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method public onExternalCallRemoved(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onExternalCallUpdated(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method
