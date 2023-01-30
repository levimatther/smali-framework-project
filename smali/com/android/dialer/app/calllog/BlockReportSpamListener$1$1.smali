.class Lcom/android/dialer/app/calllog/BlockReportSpamListener$1$1;
.super Ljava/lang/Object;
.source "BlockReportSpamListener.java"

# interfaces
.implements Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->onClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockComplete(Landroid/net/Uri;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->USER_ACTION_BLOCKED_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 88
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 89
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1$1;->this$1:Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$100(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
