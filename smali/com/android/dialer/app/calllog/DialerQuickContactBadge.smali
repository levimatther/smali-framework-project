.class Lcom/android/dialer/app/calllog/DialerQuickContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "DialerQuickContactBadge.java"


# instance fields
.field private mExtraOnClickListener:Landroid/view/View$OnClickListener;

.field private onActionModeStateChangeListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->mExtraOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->onActionModeStateChangeListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    .line 48
    invoke-interface {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;->isActionModeStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_TAP_VIA_CONTACT_BADGE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 50
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 51
    iget-object v0, p0, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->mExtraOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setMulitSelectListeners(Landroid/view/View$OnClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->mExtraOnClickListener:Landroid/view/View$OnClickListener;

    .line 61
    iput-object p2, p0, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->onActionModeStateChangeListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    return-void
.end method
