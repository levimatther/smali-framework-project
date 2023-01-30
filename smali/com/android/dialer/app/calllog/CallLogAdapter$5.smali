.class Lcom/android/dialer/app/calllog/CallLogAdapter$5;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "enable_call_log_multiselect"

    const/4 v2, 0x1

    .line 320
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090254

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09025b

    if-ne v0, v1, :cond_2

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_ENTER_MULTI_SELECT_MODE:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 325
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 327
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$600(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_LONG_PRESS_TAP_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 330
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    .line 332
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setVisibility(I)V

    .line 333
    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBoxView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$5;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$700(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return v2
.end method
