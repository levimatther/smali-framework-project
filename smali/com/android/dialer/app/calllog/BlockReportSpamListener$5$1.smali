.class Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;
.super Ljava/lang/Object;
.source "BlockReportSpamListener.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnblockComplete(ILandroid/content/ContentValues;)V
    .locals 2

    const-string p1, "BlockReportSpamListener"

    if-nez p2, :cond_0

    const-string/jumbo p2, "unblock failed"

    .line 272
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "BlockReportSpamListener.onUnblock.onUnblockComplete"

    .line 275
    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_UNBLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 277
    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 278
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$100(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;

    iget-wide v0, p2, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$rowId:J

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->setBlockViewId(J)V

    .line 279
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$100(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 280
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$callback:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;->updateCallLogMenubar(I)V

    return-void
.end method
