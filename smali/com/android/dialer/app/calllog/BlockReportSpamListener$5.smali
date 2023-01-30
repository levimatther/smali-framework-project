.class Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;
.super Ljava/lang/Object;
.source "BlockReportSpamListener.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/BlockReportSpamListener;->onUnblockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

.field final synthetic val$blockId:Ljava/lang/Integer;

.field final synthetic val$callType:I

.field final synthetic val$callback:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

.field final synthetic val$contactSourceType:Lcom/android/dialer/logging/ContactSource$Type;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$isSpam:Z

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$rowId:J


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;ZLjava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;Ljava/lang/Integer;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    iput-boolean p2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$isSpam:Z

    iput-object p3, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$countryIso:Ljava/lang/String;

    iput p5, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$callType:I

    iput-object p6, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$contactSourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iput-wide p7, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$rowId:J

    iput-object p9, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$callback:Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    iput-object p10, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$blockId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BlockReportSpamListener.onUnblock"

    const-string v2, "onClick"

    .line 254
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$isSpam:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isSpamEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_AS_NOT_SPAM_VIA_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 257
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 258
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$countryIso:Ljava/lang/String;

    iget v4, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$callType:I

    sget-object v5, Lcom/android/dialer/logging/ReportingLocation$Type;->CALL_LOG_HISTORY:Lcom/android/dialer/logging/ReportingLocation$Type;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$contactSourceType:Lcom/android/dialer/logging/ContactSource$Type;

    .line 259
    invoke-interface/range {v1 .. v6}, Lcom/android/dialer/spam/SpamBindings;->reportNotSpamFromCallHistory(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactSource$Type;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$200(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5$1;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;)V

    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;->val$blockId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Ljava/lang/Integer;)V

    return-void
.end method
