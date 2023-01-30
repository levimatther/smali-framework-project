.class public Lcom/android/dialer/callcomposer/CallComposerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CallComposerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;
.implements Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;


# static fields
.field private static final ARG_CALL_COMPOSER_CONTACT:Ljava/lang/String; = "CALL_COMPOSER_CONTACT"

.field private static final ARG_CALL_COMPOSER_CONTACT_BASE64:Ljava/lang/String; = "CALL_COMPOSER_CONTACT_BASE64"

.field private static final CURRENT_INDEX_KEY:Ljava/lang/String; = "current_index_key"

.field private static final ENTRANCE_ANIMATION_DURATION_MILLIS:I = 0x1f4

.field private static final ENTRANCE_ANIMATION_KEY:Ljava/lang/String; = "entrance_animation_key"

.field private static final EXIT_ANIMATION_DURATION_MILLIS:I = 0x1f4

.field public static final KEY_CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field private static final KEY_IS_FIRST_CALL_COMPOSE:Ljava/lang/String; = "is_first_call_compose"

.field private static final SEND_AND_CALL_READY_KEY:Ljava/lang/String; = "send_and_call_ready_key"

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "session_id_key"

.field private static final VIEW_PAGER_STATE_KEY:Ljava/lang/String; = "view_pager_state_key"


# instance fields
.field private adapter:Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;

.field private background:Landroid/widget/FrameLayout;

.field private cameraIcon:Landroid/widget/ImageView;

.field private contact:Lcom/android/dialer/dialercontact/DialerContact;

.field private contactContainer:Landroid/widget/RelativeLayout;

.field private contactPhoto:Landroid/widget/QuickContactBadge;

.field private currentIndex:I

.field private galleryIcon:Landroid/widget/ImageView;

.field private inFullscreenMode:Z

.field private interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field private isSendAndCallHidingOrHidden:Z

.field private loading:Landroid/widget/ProgressBar;

.field private messageIcon:Landroid/widget/ImageView;

.field private nameView:Landroid/widget/TextView;

.field private numberView:Landroid/widget/TextView;

.field private pager:Lcom/android/dialer/widget/LockableViewPager;

.field private sendAndCall:Landroid/view/View;

.field private sendAndCallReady:Z

.field private sendAndCallText:Landroid/widget/TextView;

.field private sessionId:Ljava/lang/Long;

.field private final sessionStartedTimedOut:Ljava/lang/Runnable;

.field private shouldAnimateEntrance:Z

.field private final timeoutHandler:Landroid/os/Handler;

.field private toolbar:Lcom/android/dialer/widget/DialerToolbar;

.field private windowContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 115
    invoke-static {}, Lcom/android/dialer/common/concurrent/ThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->timeoutHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$nsXKrrF8hfL7hvXcn8JrH0GxkQc;

    invoke-direct {v0, p0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$nsXKrrF8hfL7hvXcn8JrH0GxkQc;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionStartedTimedOut:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->shouldAnimateEntrance:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->isSendAndCallHidingOrHidden:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/callcomposer/CallComposerActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->isSendAndCallHidingOrHidden:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/dialer/callcomposer/CallComposerActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->isSendAndCallHidingOrHidden:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/dialer/callcomposer/CallComposerActivity;)Landroid/view/View;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    return-object p0
.end method

.method private animateSendAndCall(Z)V
    .locals 10

    .line 639
    invoke-static {p0}, Lcom/android/dialer/util/ViewUtil;->areAnimationsDisabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 640
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->isSendAndCallHidingOrHidden:Z

    .line 641
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 646
    :cond_1
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->isSendAndCallHidingOrHidden:Z

    if-eq v0, p1, :cond_4

    .line 647
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 648
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    if-eqz p1, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    if-eqz p1, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    move v7, v4

    .line 655
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    const/4 v1, 0x1

    new-instance v9, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;

    move-object v2, v9

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$PBWmfbwkjWjUAPduxXkdwo3iq9o;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;IIIIZ)V

    invoke-static {v0, v1, v9}, Lcom/android/dialer/util/ViewUtil;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;
    .locals 1

    .line 703
    invoke-static {p0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    return-object v0
.end method

.method private grantUriPermission(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    const-string v0, "com.google.android.apps.messaging"

    const/4 v1, 0x1

    .line 420
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object p1
.end method

.method static synthetic lambda$sendAndCall$3(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "CallComposerActivity.onCopyFailed"

    const-string v1, "copy Failed"

    .line 354
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Lcom/android/dialer/dialercontact/DialerContact;)Landroid/content/Intent;
    .locals 2

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/callcomposer/CallComposerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "CALL_COMPOSER_CONTACT"

    .line 152
    invoke-static {v0, p0, p1}, Lcom/android/dialer/protos/ProtoParsers;->put(Landroid/content/Intent;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 485
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CALL_COMPOSER_CONTACT_BASE64"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 490
    :try_start_0
    invoke-static {p1}, Lcom/android/dialer/dialercontact/DialerContact;->parseFrom([B)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createAssertionFailException(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 497
    :cond_0
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    const-string v1, "CALL_COMPOSER_CONTACT"

    .line 496
    invoke-static {p1, v1, v0}, Lcom/android/dialer/protos/ProtoParsers;->getTrusted(Landroid/content/Intent;Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/dialercontact/DialerContact;

    iput-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 499
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->updateContactInfo()V

    return-void
.end method

.method private placeRCSCall(Lcom/android/dialer/multimedia/MultimediaData$Builder;)V
    .locals 5

    .line 393
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->build()Lcom/android/dialer/multimedia/MultimediaData;

    move-result-object p1

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placing enriched call, data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CallComposerActivity.placeRCSCall"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_PLACE_RCS_CALL:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 396
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->sendCallComposerData(JLcom/android/dialer/multimedia/MultimediaData;)V

    .line 397
    new-instance v0, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 399
    invoke-virtual {v2}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_COMPOSER:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {v0, v2, v3}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    invoke-virtual {v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 397
    invoke-static {p0, v0}, Lcom/android/dialer/telecom/TelecomUtil;->placeCall(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 v0, -0x1

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setResult(I)V

    .line 402
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->getDefaultSharedPreferenceForDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "is_first_call_compose"

    const/4 v3, 0x1

    .line 405
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/android/dialer/multimedia/MultimediaData;->hasImageData()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f110264

    goto :goto_0

    :cond_0
    const p1, 0x7f110315

    .line 408
    :goto_0
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 409
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07021b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/16 v4, 0x51

    .line 410
    invoke-virtual {p1, v4, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 411
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->finish()V

    return-void
.end method

.method private refreshUiForCallComposerState()V
    .locals 5

    .line 247
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getSession(J)Lcom/android/dialer/enrichedcall/Session;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-interface {v0}, Lcom/android/dialer/enrichedcall/Session;->getState()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 256
    invoke-static {v0}, Lcom/android/dialer/enrichedcall/extensions/StateExtension;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "CallComposerActivity.refreshUiForCallComposerState"

    const-string v4, "state: %s"

    .line 253
    invoke-static {v3, v4, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setFailedResultAndFinish()V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionStartedTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallReady:Z

    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall()V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionStartedTimedOut:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getSessionStartedTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallReady:Z

    if-eqz v0, :cond_4

    .line 262
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->showLoadingUi()V

    :cond_4
    :goto_0
    return-void
.end method

.method private runEntranceAnimation()V
    .locals 9

    .line 539
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->shouldAnimateEntrance:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->shouldAnimateEntrance:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->isLandscapeLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    new-array v3, v2, [F

    int-to-float v1, v1

    aput v1, v3, v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput v1, v3, v4

    .line 545
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 546
    iget-object v3, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x1f4

    .line 547
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 548
    new-instance v3, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$GDnsJ0RUwOGRPsCdIAmdi1ByhWA;

    invoke-direct {v3, p0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$GDnsJ0RUwOGRPsCdIAmdi1ByhWA;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->isLandscapeLayout()Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x106000d

    .line 558
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const v7, 0x7f06004f

    .line 559
    invoke-static {p0, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 560
    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    .line 561
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v8, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 562
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 564
    new-instance v2, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$IukFdUJ0qFIwsMUBrO0p56opPpc;

    invoke-direct {v2, p0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$IukFdUJ0qFIwsMUBrO0p56opPpc;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 567
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 568
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 569
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 571
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method private runExitAnimation()V
    .locals 9

    .line 577
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->isLandscapeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    int-to-float v0, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 578
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 579
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x1f4

    .line 580
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 581
    new-instance v2, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$8Q8MMH3LbSCEjEtu-85a0NaBhBE;

    invoke-direct {v2, p0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$8Q8MMH3LbSCEjEtu-85a0NaBhBE;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->isLandscapeLayout()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x106000d

    .line 594
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const v7, 0x7f06004f

    .line 595
    invoke-static {p0, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 596
    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    .line 597
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v8, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 600
    new-instance v2, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$BxaWIIW4V9ZOLd0CIZcwDFqDRKQ;

    invoke-direct {v2, p0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$BxaWIIW4V9ZOLd0CIZcwDFqDRKQ;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 603
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 604
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 605
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 607
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method private sessionReady()Z
    .locals 3

    .line 388
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getSession(J)Lcom/android/dialer/enrichedcall/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0}, Lcom/android/dialer/enrichedcall/Session;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setFailedResultAndFinish()V
    .locals 3

    .line 696
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 697
    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 696
    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setResult(ILandroid/content/Intent;)V

    .line 698
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->finish()V

    return-void
.end method

.method private setMediaIconSelected(I)V
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->cameraIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 691
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->galleryIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 692
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->messageIcon:Landroid/widget/ImageView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private showLoadingUi()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->loading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/LockableViewPager;->setSwipingLocked(Z)V

    return-void
.end method

.method private updateContactInfo()V
    .locals 9

    .line 509
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contactPhoto:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 512
    invoke-virtual {v2}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactUri()Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v2}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v8

    :goto_0
    iget-object v3, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 513
    invoke-virtual {v3}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 514
    invoke-virtual {v5}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoUri()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v5}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v8

    :goto_1
    iget-object v6, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 515
    invoke-virtual {v6}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 516
    invoke-virtual {v7}, Lcom/android/dialer/dialercontact/DialerContact;->getContactType()I

    move-result v7

    .line 510
    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadDialerThumbnailOrPhoto(Landroid/widget/QuickContactBadge;Landroid/net/Uri;JLandroid/net/Uri;Ljava/lang/String;I)V

    .line 518
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->nameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->toolbar:Lcom/android/dialer/widget/DialerToolbar;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v1}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/DialerToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->numberView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 523
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 524
    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const v0, 0x7f1100f5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 527
    invoke-virtual {v3}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    .line 528
    invoke-virtual {v3}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 525
    invoke-virtual {p0, v0, v2}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 529
    :goto_2
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->numberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->toolbar:Lcom/android/dialer/widget/DialerToolbar;

    invoke-virtual {v1, v0}, Lcom/android/dialer/widget/DialerToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->numberView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public composeCall(Lcom/android/dialer/callcomposer/CallComposerFragment;)V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->adapter:Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    iget v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/CallComposerFragment;->shouldHide()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->animateSendAndCall(Z)V

    return-void
.end method

.method public getSessionStartedTimeoutMillis()J
    .locals 4

    .line 285
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object v0

    const-string v1, "ec_session_started_timeout"

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isFullscreen()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->inFullscreenMode:Z

    return v0
.end method

.method public isLandscapeLayout()Z
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$animateSendAndCall$9$CallComposerActivity(IIIIZ)V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    int-to-float p3, p3

    int-to-float p4, p4

    .line 660
    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 662
    new-instance p2, Lcom/android/dialer/callcomposer/CallComposerActivity$1;

    invoke-direct {p2, p0, p5}, Lcom/android/dialer/callcomposer/CallComposerActivity$1;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 683
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public synthetic lambda$new$0$CallComposerActivity()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallComposerActivity.sessionStartedTimedOutRunnable"

    const-string v2, "session never started"

    .line 118
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setFailedResultAndFinish()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$CallComposerActivity()V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->inFullscreenMode:Z

    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->showFullscreen(Z)V

    .line 207
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->runEntranceAnimation()V

    return-void
.end method

.method public synthetic lambda$runEntranceAnimation$5$CallComposerActivity(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 550
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->isLandscapeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$runEntranceAnimation$6$CallComposerActivity(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public synthetic lambda$runExitAnimation$7$CallComposerActivity(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 583
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->isLandscapeLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 588
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fee666666666666L    # 0.95

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->finish()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$runExitAnimation$8$CallComposerActivity(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public synthetic lambda$sendAndCall$2$CallComposerActivity(Lcom/android/dialer/multimedia/MultimediaData$Builder;Landroidx/core/util/Pair;)V
    .locals 2

    .line 345
    invoke-static {}, Lcom/android/dialer/constants/Constants;->get()Lcom/android/dialer/constants/Constants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/constants/Constants;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    .line 343
    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 348
    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->grantUriPermission(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->setImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;

    .line 349
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->placeRCSCall(Lcom/android/dialer/multimedia/MultimediaData$Builder;)V

    return-void
.end method

.method public synthetic lambda$sendAndCall$4$CallComposerActivity(Lcom/android/dialer/multimedia/MultimediaData$Builder;Lcom/android/dialer/callcomposer/CameraComposerFragment;Landroid/net/Uri;)V
    .locals 0

    .line 376
    invoke-direct {p0, p3}, Lcom/android/dialer/callcomposer/CallComposerActivity;->grantUriPermission(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->setImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;

    .line 377
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->placeRCSCall(Lcom/android/dialer/multimedia/MultimediaData$Builder;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->isSendAndCallHidingOrHidden:Z

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->adapter:Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    iget v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callcomposer/CallComposerFragment;

    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/CallComposerFragment;->clearComposer()V

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    .line 465
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->endCallComposerSession(J)V

    .line 466
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->runExitAnimation()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "CallComposerActivity.onClick"

    .line 296
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->cameraIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 298
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/widget/LockableViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->galleryIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 300
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {p1, v1, v1}, Lcom/android/dialer/widget/LockableViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->messageIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 302
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/widget/LockableViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall()V

    :goto_0
    return-void

    .line 306
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View on click not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 158
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c003d

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setContentView(I)V

    const v0, 0x7f0900df

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->nameView:Landroid/widget/TextView;

    const v0, 0x7f090237

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->numberView:Landroid/widget/TextView;

    const v0, 0x7f0900e0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contactPhoto:Landroid/widget/QuickContactBadge;

    const v0, 0x7f09008b

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->cameraIcon:Landroid/widget/ImageView;

    const v0, 0x7f09008f

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->galleryIcon:Landroid/widget/ImageView;

    const v0, 0x7f09008e

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->messageIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900da

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contactContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f090090

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/LockableViewPager;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    const v0, 0x7f090067

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->background:Landroid/widget/FrameLayout;

    const v0, 0x7f09008c

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f090303

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/DialerToolbar;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->toolbar:Lcom/android/dialer/widget/DialerToolbar;

    const v0, 0x7f0902a9

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    const v0, 0x7f0902aa

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallText:Landroid/widget/TextView;

    const v0, 0x7f09008d

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->loading:Landroid/widget/ProgressBar;

    .line 176
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 177
    new-instance v0, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;

    .line 179
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->adapter:Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;

    .line 181
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v1, v0}, Lcom/android/dialer/widget/LockableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v0, p0}, Lcom/android/dialer/widget/LockableViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->cameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->galleryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->messageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->onHandleIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "entrance_animation_key"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->shouldAnimateEntrance:Z

    const-string v0, "send_and_call_ready_key"

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallReady:Z

    .line 194
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    const-string/jumbo v1, "view_pager_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/LockableViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "current_index_key"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    const-wide/16 v0, -0x1

    const-string v2, "session_id_key"

    .line 196
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    .line 197
    iget p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->onPageSelected(I)V

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$C-IBzHZaTYt9jlPpKzZvr3GtSng;

    invoke-direct {v1, p0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$C-IBzHZaTYt9jlPpKzZvr3GtSng;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;)V

    invoke-static {p1, v0, v1}, Lcom/android/dialer/util/ViewUtil;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 210
    iget p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setMediaIconSelected(I)V

    return-void
.end method

.method public onEnrichedCallStateChanged()V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->refreshUiForCallComposerState()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 290
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallText:Landroid/widget/TextView;

    const v2, 0x7f110429

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallText:Landroid/widget/TextView;

    const v2, 0x7f110436

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 433
    :goto_0
    iget v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    if-ne v1, v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->windowContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/android/dialer/common/UiUtil;->hideKeyboardFrom(Landroid/content/Context;Landroid/view/View;)V

    .line 436
    :cond_1
    iput p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    .line 437
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->adapter:Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callcomposer/CallComposerFragment;

    .line 438
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/CallComposerFragment;->shouldHide()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->animateSendAndCall(Z)V

    .line 439
    invoke-direct {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setMediaIconSelected(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 236
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 237
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    .line 238
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionStartedTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 215
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 216
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->registerStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v4, "CallComposerActivity.onResume"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v5, "creating new session"

    .line 218
    invoke-static {v4, v5, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v5}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->startCallComposerSession(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getSession(J)Lcom/android/dialer/enrichedcall/Session;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v5, "session closed while activity paused, creating new"

    .line 221
    invoke-static {v4, v5, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contact:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v5}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->startCallComposerSession(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v5, "session still open, using old"

    .line 225
    invoke-static {v4, v5, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "failed to create call composer session"

    .line 228
    invoke-static {v4, v1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->setFailedResultAndFinish()V

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->refreshUiForCallComposerState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 450
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 451
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v0}, Lcom/android/dialer/widget/LockableViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    const-string/jumbo v1, "view_pager_state_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 452
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->shouldAnimateEntrance:Z

    const-string v1, "entrance_animation_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallReady:Z

    const-string v1, "send_and_call_ready_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 454
    iget v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    const-string v1, "current_index_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "session_id_key"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public sendAndCall()V
    .locals 6

    .line 312
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->sessionReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCallReady:Z

    .line 314
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->showLoadingUi()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CallComposerActivity.onClick"

    const-string v2, "sendAndCall pressed, but the session isn\'t ready"

    .line 315
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->CALL_COMPOSER_ACTIVITY_SEND_AND_CALL_PRESSED_WHEN_SESSION_NOT_READY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 317
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->sendAndCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->adapter:Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    iget v2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->currentIndex:I

    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callcomposer/CallComposerFragment;

    .line 325
    invoke-static {}, Lcom/android/dialer/multimedia/MultimediaData;->builder()Lcom/android/dialer/multimedia/MultimediaData$Builder;

    move-result-object v1

    .line 327
    instance-of v2, v0, Lcom/android/dialer/callcomposer/MessageComposerFragment;

    if-eqz v2, :cond_1

    .line 328
    move-object v2, v0

    check-cast v2, Lcom/android/dialer/callcomposer/MessageComposerFragment;

    .line 329
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->setText(Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;

    .line 330
    invoke-direct {p0, v1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->placeRCSCall(Lcom/android/dialer/multimedia/MultimediaData$Builder;)V

    .line 332
    :cond_1
    instance-of v2, v0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;

    if-eqz v2, :cond_3

    .line 333
    move-object v2, v0

    check-cast v2, Lcom/android/dialer/callcomposer/GalleryComposerFragment;

    .line 335
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedDataIsCopy()Z

    move-result v3

    if-nez v3, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/android/dialer/callcomposer/CopyAndResizeImageWorker;

    .line 339
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dialer/callcomposer/CopyAndResizeImageWorker;-><init>(Landroid/content/Context;)V

    const-string v5, "copyAndResizeImageToSend"

    .line 336
    invoke-static {v3, v5, v4}, Lcom/android/dialer/common/concurrent/DialerExecutors;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$cDxFVyenYs_rAP5qfS7OF4P2Mls;

    invoke-direct {v4, p0, v1}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$cDxFVyenYs_rAP5qfS7OF4P2Mls;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;Lcom/android/dialer/multimedia/MultimediaData$Builder;)V

    .line 340
    invoke-interface {v3, v4}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;->INSTANCE:Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$r3N-lKxmJxIyfvIPah0yMStXVTo;

    .line 351
    invoke-interface {v3, v4}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v3

    .line 356
    invoke-interface {v3}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object v3

    .line 357
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getGalleryData()Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-static {}, Lcom/android/dialer/constants/Constants;->get()Lcom/android/dialer/constants/Constants;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/constants/Constants;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    .line 363
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getGalleryData()Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-static {p0, v3, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 366
    invoke-direct {p0, v3}, Lcom/android/dialer/callcomposer/CallComposerActivity;->grantUriPermission(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 367
    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getGalleryData()Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {v1, v3, v2}, Lcom/android/dialer/multimedia/MultimediaData$Builder;->setImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/dialer/multimedia/MultimediaData$Builder;

    .line 369
    invoke-direct {p0, v1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->placeRCSCall(Lcom/android/dialer/multimedia/MultimediaData$Builder;)V

    .line 372
    :cond_3
    :goto_0
    instance-of v2, v0, Lcom/android/dialer/callcomposer/CameraComposerFragment;

    if-eqz v2, :cond_4

    .line 373
    check-cast v0, Lcom/android/dialer/callcomposer/CameraComposerFragment;

    .line 374
    new-instance v2, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;-><init>(Lcom/android/dialer/callcomposer/CallComposerActivity;Lcom/android/dialer/multimedia/MultimediaData$Builder;Lcom/android/dialer/callcomposer/CameraComposerFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/CameraComposerFragment;->getCameraUriWhenReady(Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;)V

    :cond_4
    return-void
.end method

.method public showFullscreen(Z)V
    .locals 5

    .line 613
    iput-boolean p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->inFullscreenMode:Z

    .line 614
    iget-object v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {v0}, Lcom/android/dialer/widget/LockableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 615
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->isLandscapeLayout()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 616
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 617
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->toolbar:Lcom/android/dialer/widget/DialerToolbar;

    invoke-virtual {p1, v3}, Lcom/android/dialer/widget/DialerToolbar;->setVisibility(I)V

    .line 618
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contactContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 619
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f05001a

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07008f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 626
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->toolbar:Lcom/android/dialer/widget/DialerToolbar;

    invoke-virtual {p1, v3}, Lcom/android/dialer/widget/DialerToolbar;->setVisibility(I)V

    .line 627
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contactContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 620
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->background:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget-object v3, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->toolbar:Lcom/android/dialer/widget/DialerToolbar;

    invoke-virtual {v3}, Lcom/android/dialer/widget/DialerToolbar;->getHeight()I

    move-result v3

    sub-int/2addr p1, v3

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 621
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->toolbar:Lcom/android/dialer/widget/DialerToolbar;

    invoke-virtual {p1, v1}, Lcom/android/dialer/widget/DialerToolbar;->setVisibility(I)V

    .line 622
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->contactContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 629
    :goto_1
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity;->pager:Lcom/android/dialer/widget/LockableViewPager;

    invoke-virtual {p1, v0}, Lcom/android/dialer/widget/LockableViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
