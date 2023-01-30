.class Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "VisualVoicemailCallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment$1;->this$0:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DELTA_SYNC_VOICEMAIL_DONE"

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment$1;->this$0:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment$1;->this$0:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->fetchCalls()V

    .line 256
    iget-object p1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment$1;->this$0:Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method
