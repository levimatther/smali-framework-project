.class Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;
.super Ljava/lang/Object;
.source "BlockReportSpamListener.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/BlockReportSpamListener;->onBlockReportSpam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

.field final synthetic val$callType:I

.field final synthetic val$contactSourceType:Lcom/android/dialer/logging/ContactSource$Type;

.field final synthetic val$countryIso:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$countryIso:Ljava/lang/String;

    iput p4, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$callType:I

    iput-object p5, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$contactSourceType:Lcom/android/dialer/logging/ContactSource$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Z)V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BlockReportSpamListener.onBlockReportSpam"

    const-string v2, "onClick"

    .line 69
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/spam/SpamBindings;->isSpamEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->REPORT_CALL_AS_SPAM_VIA_CALL_LOG_BLOCK_REPORT_SPAM_SENT_VIA_BLOCK_NUMBER_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 72
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 75
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$countryIso:Ljava/lang/String;

    iget v3, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$callType:I

    sget-object v4, Lcom/android/dialer/logging/ReportingLocation$Type;->CALL_LOG_HISTORY:Lcom/android/dialer/logging/ReportingLocation$Type;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$contactSourceType:Lcom/android/dialer/logging/ContactSource$Type;

    .line 76
    invoke-interface/range {v0 .. v5}, Lcom/android/dialer/spam/SpamBindings;->reportSpamFromCallHistory(Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ReportingLocation$Type;Lcom/android/dialer/logging/ContactSource$Type;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->this$0:Lcom/android/dialer/app/calllog/BlockReportSpamListener;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->access$200(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1$1;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;)V

    iget-object v1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;->val$countryIso:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
