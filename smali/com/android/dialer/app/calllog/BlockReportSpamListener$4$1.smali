.class Lcom/android/dialer/app/calllog/BlockReportSpamListener$4$1;
.super Ljava/lang/Object;
.source "BlockReportSpamListener.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockComplete(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "BlockReportSpamListener"

    if-nez p1, :cond_0

    const-string p1, "block failed"

    .line 221
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "BlockReportSpamListener.onBlock.onBlockComplete"

    .line 224
    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_BLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 226
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 227
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$100(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;

    iget-wide v0, v0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;->val$rowId:J

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setBlockViewId(J)V

    .line 228
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$100(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 229
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;->val$callback:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;->updateCallLogMenubar(I)V

    return-void
.end method
