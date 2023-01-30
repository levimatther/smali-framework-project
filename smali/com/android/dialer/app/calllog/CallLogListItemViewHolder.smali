.class public final Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CallLogListItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;,
        Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$HostUi;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field public accountHandle:Landroid/telecom/PhoneAccountHandle;

.field public actionsView:Landroid/view/View;

.field public addToExistingContactButtonView:Landroid/view/View;

.field public asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;"
        }
    .end annotation
.end field

.field public blockId:Ljava/lang/Integer;

.field public blockReportView:Landroid/view/View;

.field public blockView:Landroid/view/View;

.field public callButtonView:Landroid/view/View;

.field public callComposeButtonView:Landroid/view/View;

.field public callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

.field public callIds:[J

.field public final callLogEntryView:Landroid/widget/LinearLayout;

.field public callType:I

.field public callTypeOrLocation:Ljava/lang/CharSequence;

.field public callWithNoteButtonView:Landroid/view/View;

.field public final checkBox:Landroid/widget/CheckBox;

.field public checkBoxView:Landroid/widget/ImageView;

.field public countryIso:Ljava/lang/String;

.field public createNewContactButtonView:Landroid/view/View;

.field public final dayGroupHeader:Landroid/widget/TextView;

.field public dayGroupHeaderText:Ljava/lang/CharSequence;

.field public dayGroupHeaderVisibility:I

.field public detailsButtonView:Landroid/view/View;

.field public displayNumber:Ljava/lang/String;

.field private final hostUi:I

.field public volatile info:Lcom/android/dialer/phonenumbercache/ContactInfo;

.field public isAttachedToWindow:Z

.field public isCallComposerCapable:Z

.field public isLoaded:Z

.field public isRead:Z

.field private isShowPlayVoiceView:Z

.field public isSpam:Z

.field public isSpamFeatureEnabled:Z

.field public lightbringerReady:Z

.field private final longPressListener:Landroid/view/View$OnLongClickListener;

.field public mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

.field private final mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

.field private final mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

.field private final mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mExpandCollapseListener:Landroid/view/View$OnClickListener;

.field private final mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

.field private mVoicemailPrimaryActionButtonClicked:Z

.field public nameOrNumber:Ljava/lang/CharSequence;

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:Ljava/lang/String;

.field private final onActionModeStateChangedListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

.field public final phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

.field public postDialDigits:Ljava/lang/String;

.field public final primaryActionButtonView:Landroid/widget/ImageView;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

.field public reportNotSpamView:Landroid/view/View;

.field public final rootView:Landroid/view/View;

.field public rowId:J

.field public sendMessageView:Landroid/view/View;

.field public sendVoicemailButtonView:Landroid/view/View;

.field public unblockView:Landroid/view/View;

.field public verstat:I

.field public videoCallButtonView:Landroid/view/View;

.field public voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

.field public voicemailUri:Ljava/lang/String;

.field public workIconView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/calllog/CallLogListItemHelper;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/view/View;Lcom/android/dialer/app/calllog/DialerQuickContactBadge;Landroid/view/View;Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p15

    .line 307
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v6, "CallLogListItemViewHolder"

    .line 119
    iput-object v6, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    .line 269
    iput-boolean v6, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isShowPlayVoiceView:Z

    .line 285
    iput v6, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->verstat:I

    .line 309
    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    move-object v7, p3

    .line 310
    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    move-object v7, p5

    .line 311
    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->onActionModeStateChangedListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    move-object v7, p4

    .line 312
    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->longPressListener:Landroid/view/View$OnLongClickListener;

    move-object v7, p6

    .line 313
    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    move-object/from16 v7, p7

    .line 314
    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    move-object/from16 v7, p8

    .line 315
    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-object v7, p2

    .line 316
    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    .line 317
    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object v7

    iput-object v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    const-string v7, "tel"

    .line 321
    invoke-static {p1, v7}, Lcom/android/dialer/telecom/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mDefaultPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 323
    iput-object v2, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rootView:Landroid/view/View;

    move-object/from16 v1, p10

    .line 324
    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    .line 325
    iput-object v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    .line 326
    iput-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    move-object/from16 v1, p13

    .line 327
    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callLogEntryView:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 328
    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    .line 329
    iput-object v5, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const v1, 0x7f090361

    .line 330
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->workIconView:Landroid/widget/ImageView;

    const v1, 0x7f09025a

    .line 331
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBoxView:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 332
    iput-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 335
    iget-object v1, v4, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 336
    iget-object v1, v4, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 339
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/dialer/app/calllog/CallLogActivity;

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;-><init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    :cond_0
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    instance-of v4, v1, Lcom/android/dialer/app/calllog/CallLogActivity;

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 357
    iput v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->hostUi:I

    .line 358
    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    sget-object v6, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 359
    invoke-interface {v1, v4, v6, v7}, Lcom/android/dialer/logging/LoggingBindings;->logQuickContactOnTouch(Landroid/widget/QuickContactBadge;Lcom/android/dialer/logging/InteractionEvent$Type;Z)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-nez v4, :cond_2

    .line 362
    iput v6, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->hostUi:I

    .line 363
    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    sget-object v6, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 364
    invoke-interface {v1, v4, v6, v7}, Lcom/android/dialer/logging/LoggingBindings;->logQuickContactOnTouch(Landroid/widget/QuickContactBadge;Lcom/android/dialer/logging/InteractionEvent$Type;Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    .line 370
    iput v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->hostUi:I

    .line 371
    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v1

    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    sget-object v8, Lcom/android/dialer/logging/InteractionEvent$Type;->OPEN_QUICK_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 372
    invoke-interface {v1, v4, v8, v6}, Lcom/android/dialer/logging/LoggingBindings;->logQuickContactOnTouch(Landroid/widget/QuickContactBadge;Lcom/android/dialer/logging/InteractionEvent$Type;Z)V

    .line 376
    :goto_0
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/voicemail/VVMMainActivity;

    if-eqz v1, :cond_3

    .line 377
    new-instance v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$2;-><init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 388
    :cond_3
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 389
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 392
    :cond_4
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 395
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_1

    .line 398
    :cond_5
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {v1}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v1

    const-string v2, "enable_call_log_multiselect"

    .line 400
    invoke-interface {v1, v2, v7}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 404
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->longPressListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 405
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->onActionModeStateChangedListener:Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setMulitSelectListeners(Landroid/view/View$OnClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;)V

    goto :goto_1

    .line 408
    :cond_6
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Landroid/content/Context;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private bindActionButtons()V
    .locals 13

    .line 773
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "bindActionButtons: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberPresentation:I

    invoke-static {v0, v1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 778
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 779
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 781
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isFullyUndialableVoicemail()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callWithNoteButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callComposeButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockReportView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->unblockView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->reportNotSpamView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0, v3}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 798
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iget-wide v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-boolean v9, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    iget-object v10, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendVoicemailButtonView:Landroid/view/View;

    move-object v8, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->setPlaybackView(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;JLandroid/net/Uri;ZLandroid/view/View;)V

    .line 804
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    .line 805
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 810
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/dialer/app/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 814
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    const v6, 0x7f090088

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v7, 0x7f1100c2

    .line 817
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    if-nez v8, :cond_2

    const-string v8, ""

    :cond_2
    aput-object v8, v7, v3

    .line 816
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 815
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    const v6, 0x7f0900af

    .line 820
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 821
    iget v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    if-ne v6, v4, :cond_3

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callTypeOrLocation:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 822
    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callTypeOrLocation:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 825
    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 827
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 832
    :cond_4
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->showLightbringerPrimaryButton()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 833
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 835
    :cond_5
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/util/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 836
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->hasPlacedCarrierVideoCall()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->canSupportCarrierVideoCall()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 837
    :cond_6
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/dialer/app/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 838
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 839
    :cond_7
    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->lightbringerReady:Z

    if-eqz v1, :cond_8

    .line 840
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/dialer/app/calllog/IntentProvider;->getLightbringerIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 841
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :cond_8
    :goto_1
    iget v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    .line 847
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 848
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v1, v3}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setVisibility(I)V

    .line 850
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 851
    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iget-wide v8, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-boolean v11, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    iget-object v12, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendVoicemailButtonView:Landroid/view/View;

    move-object v10, v1

    invoke-virtual/range {v6 .. v12}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->setPlaybackView(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;JLandroid/net/Uri;ZLandroid/view/View;)V

    .line 857
    iput-boolean v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    .line 858
    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_2

    .line 860
    :cond_9
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setVisibility(I)V

    .line 861
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendVoicemailButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :goto_2
    iget v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    if-ne v1, v4, :cond_a

    .line 865
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 867
    :cond_a
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v6, Lcom/android/dialer/phonenumbercache/ContactInfo;->objectId:Ljava/lang/String;

    .line 870
    invoke-interface {v1, v4, v6}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->canReportAsInvalid(Lcom/android/dialer/logging/ContactSource$Type;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v5

    goto :goto_3

    :cond_b
    move v1, v3

    .line 871
    :goto_3
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    .line 873
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->buildContact()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v7

    .line 872
    invoke-static {v6, v7, v1}, Lcom/android/dialer/app/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v1

    .line 871
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 876
    :goto_4
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpamFeatureEnabled:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v1, v3

    goto :goto_6

    :cond_d
    :goto_5
    move v1, v5

    :goto_6
    if-nez v1, :cond_e

    .line 878
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 879
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v6, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v7, v7, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v8, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget v9, v9, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    .line 880
    invoke-static {v6, v7, v8, v9, v5}, Lcom/android/dialer/app/calllog/IntentProvider;->getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v5

    .line 879
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 882
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v5, v5, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v6, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v7, v7, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget v8, v8, Lcom/android/dialer/phonenumbercache/ContactInfo;->type:I

    .line 885
    invoke-static {v5, v6, v7, v8, v3}, Lcom/android/dialer/app/calllog/IntentProvider;->getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v5

    .line 884
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 887
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 889
    :cond_e
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :goto_7
    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v0, :cond_f

    if-nez v1, :cond_f

    if-nez v4, :cond_f

    .line 895
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/dialer/app/calllog/IntentProvider;->getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 896
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 898
    :cond_f
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :goto_8
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogListItemHelper:Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    invoke-virtual {v0, p0}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;->setActionContentDescriptions(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 903
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->doesAccountSupportCallSubject(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    .line 904
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callWithNoteButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    if-nez v4, :cond_10

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_9

    :cond_10
    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callComposeButtonView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isCallComposerCapable:Z

    if-eqz v1, :cond_11

    move v2, v3

    :cond_11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 909
    invoke-direct {p0, v4}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->updateBlockReportActions(Z)V

    return-void
.end method

.method private buildContact()Lcom/android/dialer/dialercontact/DialerContact;
    .locals 4

    .line 1160
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->newBuilder()Lcom/android/dialer/dialercontact/DialerContact$Builder;

    move-result-object v0

    .line 1161
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-wide v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setPhotoId(J)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1162
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setPhotoUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1166
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setContactUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1168
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1169
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNameOrNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1171
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getContactType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setContactType(I)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1172
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1174
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1175
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setDisplayNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1179
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1180
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNumberLabel(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1185
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1187
    invoke-static {}, Lcom/android/dialer/dialercontact/SimDetails;->newBuilder()Lcom/android/dialer/dialercontact/SimDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->setNetwork(Ljava/lang/String;)Lcom/android/dialer/dialercontact/SimDetails$Builder;

    move-result-object v1

    .line 1188
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v3}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->getAccountColor(Landroid/telecom/PhoneAccountHandle;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->setColor(I)Lcom/android/dialer/dialercontact/SimDetails$Builder;

    .line 1189
    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1191
    :cond_5
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object v0
.end method

.method private canSupportCarrierVideoCall()Z
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->canRelyOnVideoPresence()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget v0, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->carrierPresence:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static create(Landroid/view/View;Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/calllog/CallLogListItemHelper;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 480
    new-instance v17, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-object/from16 v0, v17

    const v10, 0x7f09025b

    .line 490
    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    const v11, 0x7f090254

    .line 491
    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 492
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    move-result-object v12

    const v13, 0x7f0900a4

    .line 493
    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v14, 0x7f09009e

    .line 494
    invoke-virtual {v15, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 p1, v0

    const v0, 0x7f090252

    .line 496
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v18, v1

    move-object v1, v15

    move-object v15, v0

    const v0, 0x7f090077

    .line 497
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v16}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/calllog/CallLogListItemHelper;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/view/View;Lcom/android/dialer/app/calllog/DialerQuickContactBadge;Landroid/view/View;Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;)V

    return-object v17
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-static {p0, v0, v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->createForTest(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public static createForTest(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
    .locals 19

    move-object/from16 v5, p0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 512
    new-instance v4, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    move-object v6, v4

    invoke-direct {v4, v5}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;-><init>(Landroid/content/Context;)V

    .line 513
    new-instance v9, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;

    invoke-direct {v9, v5, v2, v4}, Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;)V

    .line 516
    new-instance v15, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-object v0, v15

    new-instance v10, Lcom/android/dialer/app/calllog/CallLogListItemHelper;

    move-object v7, v10

    invoke-direct {v10, v9, v2, v4}, Lcom/android/dialer/app/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/app/calllog/PhoneCallDetailsHelper;Landroid/content/res/Resources;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;)V

    .line 526
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c0045

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    new-instance v2, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    move-object v10, v2

    invoke-direct {v2, v5}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    move-object v11, v2

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 529
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    move-result-object v12

    new-instance v2, Landroid/widget/LinearLayout;

    move-object v13, v2

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    move-object v14, v2

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ImageView;

    move-object v4, v15

    move-object v15, v2

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/CheckBox;

    move-object/from16 v16, v2

    invoke-direct {v2, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/calllog/CallLogListItemHelper;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/view/View;Lcom/android/dialer/app/calllog/DialerQuickContactBadge;Landroid/view/View;Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;)V

    .line 537
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v2, v18

    iput-object v0, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    .line 538
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    .line 539
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-direct {v0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    .line 540
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->workIconView:Landroid/widget/ImageView;

    .line 541
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBoxView:Landroid/widget/ImageView;

    return-object v2
.end method

.method private getContactType()I
    .locals 5

    .line 1036
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 1037
    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    .line 1040
    invoke-interface {v2, v4}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->isBusiness(Lcom/android/dialer/logging/ContactSource$Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberPresentation:I

    .line 1036
    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getContactTypeFromPrimitives(ZZZIZ)I

    move-result v0

    return v0
.end method

.method private getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v0

    return-object v0
.end method

.method private static hasDialableChar(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 928
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 931
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p0, v2

    .line 932
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private hasPlacedCarrierVideoCall()Z
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllogutils/CallTypeIconsView;

    invoke-virtual {v0}, Lcom/android/dialer/calllogutils/CallTypeIconsView;->isVideoShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_1

    return v1

    .line 946
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mDefaultPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-nez v2, :cond_2

    return v1

    .line 949
    :cond_2
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mDefaultPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFullyUndialableVoicemail()Z
    .locals 2

    .line 913
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->hasDialableChar(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private logCallLogAction(I)V
    .locals 3

    const v0, 0x7f0902ac

    if-ne p1, v0, :cond_0

    .line 1240
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const-string v0, "logCallLogAction: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SEND_MESSAGE:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f090047

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    .line 1243
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_ADD_TO_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1244
    iget p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->hostUi:I

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 1253
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 1256
    :cond_1
    invoke-static {}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1246
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1247
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 1250
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->ADD_TO_A_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f09010c

    if-ne p1, v0, :cond_8

    .line 1259
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_CREATE_NEW_CONTACT:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1260
    iget p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->hostUi:I

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_5

    .line 1270
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_VOICEMAIL:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1271
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 1274
    :cond_5
    invoke-static {}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException()Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    .line 1262
    :cond_6
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_HISTORY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1263
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_0

    .line 1266
    :cond_7
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CREATE_NEW_CONTACT_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1267
    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private maybeShowBlockNumberMigrationDialog(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 1281
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1280
    invoke-static {v0, v1, p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->maybeShowBlockNumberMigrationDialog(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;->onComplete()V

    :cond_0
    return-void
.end method

.method private showLightbringerPrimaryButton()Z
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/lightbringer/Lightbringer;->getPhoneAccountComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->lightbringerReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showOrHideVoicemailTranscriptionView(Z)V
    .locals 2

    .line 1002
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 1007
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1011
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    :goto_0
    const/16 p1, 0x8

    .line 1008
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private startLightbringerActivity(Landroid/content/Intent;)V
    .locals 2

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    .line 1153
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f11004d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private updateBlockReportActions(Z)V
    .locals 2

    .line 1310
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockReportView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->unblockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->reportNotSpamView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_5

    .line 1315
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 1316
    invoke-static {p1, v0, v1}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    .line 1317
    invoke-static {p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1320
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 1322
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->unblockView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1324
    :cond_2
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpamFeatureEnabled:Z

    if-eqz p1, :cond_4

    .line 1325
    iget-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    if-eqz p1, :cond_3

    .line 1326
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->reportNotSpamView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1329
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockReportView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1332
    :cond_4
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updatePrimaryActionButton(Z)V
    .locals 6

    .line 686
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePrimaryActionButton: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "CallLogListItemViewHolder.updatePrimaryActionButton"

    const-string v3, "name or number is null"

    .line 689
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 695
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    .line 698
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const v2, 0x7f0801e6

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v5, 0x7f1101c2

    .line 701
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v1

    .line 700
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 699
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 702
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 704
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 708
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberPresentation:I

    invoke-static {p1, v2}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 709
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {p1, v2, v5}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 711
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->showLightbringerPrimaryButton()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 712
    invoke-static {}, Lcom/android/dialer/callintent/CallIntentBuilder;->increaseLightbringerCallButtonAppearInCollapsedCallLogItemCount()V

    .line 713
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/app/calllog/IntentProvider;->getLightbringerIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 714
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v5, 0x7f1101bf

    .line 716
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v1

    .line 715
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 714
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 717
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const v0, 0x7f0801f5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 718
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 724
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/dialer/app/calllog/IntentProvider;->getReturnVoicemailCallIntentProvider()Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 726
    :cond_5
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->postDialDigits:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 727
    invoke-static {v2}, Lcom/android/dialer/app/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v2

    .line 726
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 730
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v5, 0x7f11018b

    .line 732
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v1

    .line 731
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 730
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 733
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const v0, 0x7f0801b3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 736
    :cond_6
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 737
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bindPlaybackActionButtons(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V
    .locals 9

    .line 748
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    .line 750
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 751
    invoke-virtual {p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setVisibility(I)V

    .line 753
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 754
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-wide v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-boolean v7, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    iget-object v8, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendVoicemailButtonView:Landroid/view/View;

    move-object v3, p1

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->setPlaybackView(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;JLandroid/net/Uri;ZLandroid/view/View;)V

    .line 760
    iput-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    .line 761
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 763
    invoke-virtual {p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setVisibility(I)V

    .line 764
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendVoicemailButtonView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public block()V
    .locals 1

    .line 1296
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;-><init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->maybeShowBlockNumberMigrationDialog(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V

    return-void
.end method

.method public buildContactNew()Lcom/android/dialer/dialercontact/DialerContact;
    .locals 4

    .line 1196
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->newBuilder()Lcom/android/dialer/dialercontact/DialerContact$Builder;

    move-result-object v0

    .line 1199
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    if-eqz v1, :cond_4

    .line 1200
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-wide v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setPhotoId(J)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1204
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1205
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setPhotoUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1207
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 1208
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setContactUri(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1210
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 1211
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNameOrNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1215
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1216
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setDisplayNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1220
    :cond_4
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getContactType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setContactType(I)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1221
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNumber(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1223
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1224
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setNumberLabel(Ljava/lang/String;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1228
    :cond_5
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, v2}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1230
    invoke-static {}, Lcom/android/dialer/dialercontact/SimDetails;->newBuilder()Lcom/android/dialer/dialercontact/SimDetails$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->setNetwork(Ljava/lang/String;)Lcom/android/dialer/dialercontact/SimDetails$Builder;

    move-result-object v1

    .line 1231
    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v3}, Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;->getAccountColor(Landroid/telecom/PhoneAccountHandle;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->setColor(I)Lcom/android/dialer/dialercontact/SimDetails$Builder;

    .line 1232
    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->setSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)Lcom/android/dialer/dialercontact/DialerContact$Builder;

    .line 1234
    :cond_6
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object v0
.end method

.method public getCanReportCallerId()Z
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v2, v2, Lcom/android/dialer/phonenumbercache/ContactInfo;->objectId:Ljava/lang/String;

    .line 420
    invoke-interface {v0, v1, v2}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->canReportAsInvalid(Lcom/android/dialer/logging/ContactSource$Type;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDetailedPhoneDetails()Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object v0
.end method

.method public getmVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    return-object v0
.end method

.method public inflateActionViewStub()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "inflateActionViewStub: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rootView:Landroid/view/View;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f090356

    .line 640
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    .line 641
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setViewHolder(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 643
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    .line 644
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f09032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    .line 647
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    .line 650
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f090047

    .line 653
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    .line 654
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f0902ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    .line 657
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockReportView:Landroid/view/View;

    .line 660
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockView:Landroid/view/View;

    .line 663
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f09031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->unblockView:Landroid/view/View;

    .line 666
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f090267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->reportNotSpamView:Landroid/view/View;

    .line 669
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    .line 672
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callWithNoteButtonView:Landroid/view/View;

    .line 675
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callComposeButtonView:Landroid/view/View;

    .line 678
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v1, 0x7f0902b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->sendVoicemailButtonView:Landroid/view/View;

    .line 681
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public initPrimaryAction()V
    .locals 7

    .line 429
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "initPrimaryAction: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mCachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v3, v3, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/phonenumbercache/ContactInfo;->objectId:Ljava/lang/String;

    .line 433
    invoke-interface {v0, v3, v4}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->canReportAsInvalid(Lcom/android/dialer/logging/ContactSource$Type;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 435
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    const v4, 0x7f090091

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    .line 437
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->buildContact()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v6

    .line 436
    invoke-static {v5, v6, v0}, Lcom/android/dialer/app/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object v0

    .line 435
    invoke-virtual {v3, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/dialer/app/calllog/BlockNumberActivity;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    :cond_1
    return-void
.end method

.method public maybeShowBlockNumberMigrationDialogNew(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 1289
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1288
    invoke-static {v0, v1, p1}, Lcom/android/dialer/blocking/FilteredNumberCompat;->maybeShowBlockNumberMigrationDialog(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    invoke-interface {p1}, Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;->onComplete()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1047
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const-string v1, "onClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090252

    if-ne v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callIds:[J

    invoke-static {v0, v2}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markCallAsRead(Landroid/content/Context;[J)V

    .line 1052
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1053
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_DIRECTLY:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1054
    iput-boolean v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    .line 1055
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1056
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900b2

    if-ne v0, v1, :cond_3

    .line 1057
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-wide v1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v3, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v4, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    .line 1064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    :goto_0
    move-object v7, p1

    iget-object v8, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    .line 1067
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getContactType()I

    move-result v9

    iget-object v10, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1057
    invoke-static/range {v0 .. v10}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->start(Landroid/app/Activity;JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/PhoneAccountHandle;)V

    goto/16 :goto_1

    .line 1069
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09006e

    if-ne v0, v1, :cond_4

    .line 1070
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_REPORT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1071
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$4;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$4;-><init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->maybeShowBlockNumberMigrationDialog(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V

    goto/16 :goto_1

    .line 1079
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09006a

    if-ne v0, v1, :cond_5

    .line 1080
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_BLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1081
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$5;

    invoke-direct {p1, p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$5;-><init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->maybeShowBlockNumberMigrationDialog(Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;)V

    goto/16 :goto_1

    .line 1089
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09031c

    if-ne v0, v1, :cond_6

    .line 1090
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_UNBLOCK_NUMBER:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1091
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-boolean v7, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    iget-object v8, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    invoke-interface/range {v1 .. v8}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;->onUnblock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;)V

    goto/16 :goto_1

    .line 1093
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090267

    if-ne v0, v1, :cond_7

    .line 1094
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_REPORT_AS_NOT_SPAM:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1095
    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget v5, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    invoke-interface/range {v1 .. v6}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;->onReportNotSpam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V

    goto/16 :goto_1

    .line 1097
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09008a

    if-ne v0, v1, :cond_8

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CallLogListItemViewHolder.onClick"

    const-string v1, "share and call pressed"

    .line 1098
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_LOG_SHARE_AND_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1100
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 1102
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->buildContact()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->newIntent(Landroid/content/Context;Lcom/android/dialer/dialercontact/DialerContact;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 1101
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1104
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902b4

    if-ne v0, v1, :cond_9

    .line 1105
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_SHARE_PRESSED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1106
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->shareVoicemail()V

    goto/16 :goto_1

    .line 1108
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->logCallLogAction(I)V

    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/IntentProvider;

    if-nez p1, :cond_a

    return-void

    .line 1115
    :cond_a
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 1123
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1124
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/lightbringer/Lightbringer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1125
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->LIGHTBRINGER_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1126
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->startLightbringerActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1128
    :cond_c
    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->isLaunchIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1129
    sget-object v0, Lcom/android/dialer/logging/UiAction$Type;->OPEN_CALL_DETAIL:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {v0}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 1131
    iget v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->verstat:I

    const-string/jumbo v1, "verstat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1133
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x4

    .line 1134
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1136
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    const-string v1, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    .line 1137
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 1139
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->IMS_VIDEO_REQUESTED_FROM_CALL_LOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 1140
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 1142
    :cond_e
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->postDialDigits:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->isConferenceURICallLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    .line 1143
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1145
    :cond_f
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 594
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090353

    if-ne p1, v0, :cond_0

    .line 597
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 598
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeleted(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 600
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    .line 601
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$3;-><init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Ljava/lang/String;)V

    .line 612
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 613
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f090355

    if-ne p1, v0, :cond_1

    .line 615
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 616
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsUnread(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f090354

    if-ne p1, v0, :cond_2

    .line 619
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 620
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDetailedPhoneDetails(Lcom/android/dialer/calldetails/CallDetailsEntries;)V
    .locals 0

    .line 1338
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-void
.end method

.method public showActions(Z)V
    .locals 1

    .line 965
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->TAG:Ljava/lang/String;

    const-string v0, "showActions: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->initPrimaryAction()V

    return-void
.end method

.method public updatePhoto()V
    .locals 9

    .line 1015
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1017
    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpamFeatureEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/DialerQuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v0, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v0, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    .line 1023
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->quickContactView:Lcom/android/dialer/app/calllog/DialerQuickContactBadge;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v3, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-wide v4, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoId:J

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 1030
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getContactType()I

    move-result v8

    .line 1024
    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method
