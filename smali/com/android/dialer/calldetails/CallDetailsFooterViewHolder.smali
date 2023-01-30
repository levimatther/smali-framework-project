.class final Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CallDetailsFooterViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;
    }
.end annotation


# instance fields
.field private final container:Landroid/view/View;

.field private final copy:Landroid/view/View;

.field private final edit:Landroid/view/View;

.field private final listener:Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;

.field private number:Ljava/lang/String;

.field private final reportCallerId:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    iput-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->listener:Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;

    const p2, 0x7f09016b

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->container:Landroid/view/View;

    const p2, 0x7f090092

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->copy:Landroid/view/View;

    const p2, 0x7f090093

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->edit:Landroid/view/View;

    const p2, 0x7f090094

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->reportCallerId:Landroid/view/View;

    .line 54
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->copy:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->edit:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->reportCallerId:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->copy:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 72
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->COPY_NUMBER_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 74
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_COPY_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const/4 p1, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->number:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->edit:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 77
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->EDIT_NUMBER_BEFORE_CALL_IN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 79
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->TEXT_CHANGE_WITH_INPUT:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->setIgnoreActionOnce(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 81
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_DETAILS_EDIT_BEFORE_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 82
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/dialer/util/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->reportCallerId:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 85
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->listener:Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->number:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;->reportCallId(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View on click not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->number:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->container:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->listener:Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder$ReportCallIdListener;->canReportCallerId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsFooterViewHolder;->reportCallerId:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
