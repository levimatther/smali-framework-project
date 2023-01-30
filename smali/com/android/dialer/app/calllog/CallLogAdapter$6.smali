.class Lcom/android/dialer/app/calllog/CallLogAdapter$6;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 351
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isLightbringerCallButtonVisible(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 429
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 432
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/IntentProvider;

    if-nez p1, :cond_2

    return v0

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 437
    invoke-static {v1}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/lightbringer/Lightbringer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 354
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->CLICK_CALL_LOG_ITEM:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 361
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iput-boolean v4, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectAllMode:Z

    .line 362
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iput-boolean v4, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->deselectAllMode:Z

    .line 363
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$100(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;->setSelectAllModeToFalse()V

    .line 364
    iget-object p1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$800(Ljava/lang/String;)I

    move-result p1

    .line 365
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_UNSELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 367
    invoke-interface {v1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 368
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v1, v0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$900(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;I)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_SINGLE_PRESS_SELECT_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 371
    invoke-interface {p1, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 372
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1000(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 374
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItemCount()I

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    .line 378
    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getItemCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    .line 379
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "mExpandCollapseListener.onClick"

    const-string v1, "getitem count %d is equal to items select count %d, check select all box"

    .line 375
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$100(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;->tapSelectAll()V

    :cond_2
    :goto_0
    return-void

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-eqz v1, :cond_4

    .line 388
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->resetAll()V

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    .line 395
    invoke-static {v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1100(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v1

    iget-object v5, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-interface {v1, v5}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 397
    invoke-virtual {v1}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsCallComposer()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isCallComposerCapable:Z

    .line 398
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 400
    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getDetailedPhoneDetails()Lcom/android/dialer/calldetails/CallDetailsEntries;

    move-result-object v3

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v6, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 401
    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getDetailedPhoneDetails()Lcom/android/dialer/calldetails/CallDetailsEntries;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1200(Lcom/android/dialer/app/calllog/CallLogAdapter;Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;

    move-result-object v5

    .line 398
    invoke-static {v1, v3, v5}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1300(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;Ljava/util/Map;)Lcom/android/dialer/calldetails/CallDetailsEntries;

    .line 403
    iget-wide v5, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1400(Lcom/android/dialer/app/calllog/CallLogAdapter;)J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_6

    .line 405
    invoke-virtual {v0, v4}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->showActions(Z)V

    .line 407
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1502(Lcom/android/dialer/app/calllog/CallLogAdapter;I)I

    .line 408
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1402(Lcom/android/dialer/app/calllog/CallLogAdapter;J)J

    goto :goto_2

    .line 410
    :cond_6
    iget v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    iget v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    const/16 v3, 0x3ea

    if-ne v1, v3, :cond_8

    .line 412
    :cond_7
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callIds:[J

    invoke-static {v1, v3}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markCallAsRead(Landroid/content/Context;[J)V

    .line 413
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1600(Lcom/android/dialer/app/calllog/CallLogAdapter;)I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/DialtactsActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/DialtactsActivity;->updateTabUnreadCounts()V

    .line 417
    :cond_8
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1700(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 419
    iget-object p1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter$6;->isLightbringerCallButtonVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 420
    invoke-static {}, Lcom/android/dialer/callintent/CallIntentBuilder;->increaseLightbringerCallButtonAppearInExpandedCallLogItemCount()V

    :cond_9
    :goto_2
    return-void
.end method
