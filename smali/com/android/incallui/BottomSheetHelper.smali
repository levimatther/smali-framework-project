.class public Lcom/android/incallui/BottomSheetHelper;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;


# static fields
.field private static final ASSURED_TRANSFER:I = 0x1

.field private static final BLIND_TRANSFER:I = 0x0

.field private static final CONSULTATIVE_TRANSFER:I = 0x2

.field private static final INVALID_INDEX:I = -0x1

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static mHelper:Lcom/android/incallui/BottomSheetHelper;


# instance fields
.field private callTransferDialog:Landroid/app/AlertDialog;

.field private mCall:Lcom/android/incallui/call/DialerCall;

.field private mCanDisablePipMode:Z

.field private mCancelModifyCallDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mHasSentCancelUpgradeRequest:Z

.field private mIsHideMe:Z

.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

.field private mResources:Landroid/content/res/Resources;

.field private modifyCallDialog:Landroid/app/AlertDialog;

.field private moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private moreOptionsSheet:Lcom/android/incallui/ExtBottomSheetFragment;

.field private voiceNetworkType:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mIsHideMe:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mHasSentCancelUpgradeRequest:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper"

    const-string v2, " "

    .line 112
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private acceptIncomingCallOrUpgradeRequest(I)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BottomSheetHelper.acceptIncomingCallOrUpgradeRequest"

    const-string v1, "Call is null. Return"

    .line 735
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 739
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/videotech/VideoTech;->acceptVideoRequest(I)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/DialerCall;->answer(I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/BottomSheetHelper;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/incallui/BottomSheetHelper;->onCallTransferItemClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/BottomSheetHelper;)Lcom/android/incallui/call/DialerCall;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/BottomSheetHelper;Lcom/android/incallui/call/DialerCall;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BottomSheetHelper;->changeToVideoClicked(Lcom/android/incallui/call/DialerCall;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/BottomSheetHelper;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/incallui/BottomSheetHelper;->cancelUpgradeClicked(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method private callTransferClicked(I)V
    .locals 0

    return-void
.end method

.method private cancelUpgradeClicked(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    const-string v0, "BottomSheetHelper.cancelUpgradeClicked"

    .line 874
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "call is null"

    .line 876
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private changeToVideoClicked(Lcom/android/incallui/call/DialerCall;I)V
    .locals 0

    .line 857
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/incallui/videotech/VideoTech;->upgradeToVideo(I)V

    return-void
.end method

.method private deflectCall()V
    .locals 3

    const-string v0, "BottomSheetHelper.onDeflect"

    .line 491
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "mCall is null"

    .line 493
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Number not set. Provide the number via IMS settings and retry."

    .line 503
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private displayCallTransferOptions()V
    .locals 4

    .line 631
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.displayCallTransferOptions"

    const-string v2, "inCallActivity is NULL"

    .line 633
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->getCallTransferOptions()Ljava/util/ArrayList;

    move-result-object v2

    .line 637
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1103ce

    .line 638
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 640
    new-instance v3, Lcom/android/incallui/BottomSheetHelper$1;

    invoke-direct {v3, p0, v2}, Lcom/android/incallui/BottomSheetHelper$1;-><init>(Lcom/android/incallui/BottomSheetHelper;Ljava/util/ArrayList;)V

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 648
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 649
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->callTransferDialog:Landroid/app/AlertDialog;

    .line 650
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getCallTransferCapabilities()I
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "transferType"

    .line 530
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1
.end method

.method private getCallTransferOptions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->getCallTransferCapabilities()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    const v3, 0x7f1103d2

    const v4, 0x7f1103d3

    if-eqz v2, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1103d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/BottomSheetHelper;
    .locals 1

    .line 116
    sget-object v0, Lcom/android/incallui/BottomSheetHelper;->mHelper:Lcom/android/incallui/BottomSheetHelper;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/incallui/BottomSheetHelper;

    invoke-direct {v0}, Lcom/android/incallui/BottomSheetHelper;-><init>()V

    sput-object v0, Lcom/android/incallui/BottomSheetHelper;->mHelper:Lcom/android/incallui/BottomSheetHelper;

    .line 119
    :cond_0
    sget-object v0, Lcom/android/incallui/BottomSheetHelper;->mHelper:Lcom/android/incallui/BottomSheetHelper;

    return-object v0
.end method

.method private getMoreOptionsFromRes(I)[[Ljava/lang/String;
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 324
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 325
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private getPhoneIdExtra(Lcom/android/incallui/call/DialerCall;)I
    .locals 2

    .line 369
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "phoneId"

    .line 375
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private hideMeClicked(Z)V
    .locals 4

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isHideMe = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper.hideMeClicked"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iput-boolean p1, p0, Lcom/android/incallui/BottomSheetHelper;->mIsHideMe:Z

    const v0, 0x7f1103d1

    const v1, 0x7f1103d0

    if-eqz p1, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->notifyStaticImageStateChanged(Z)V

    return-void
.end method

.method private isAddParticipantSupported()Z
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v3, 0x1000000

    .line 381
    invoke-virtual {v0, v3}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    .line 382
    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 383
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 384
    :goto_0
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 385
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "add_participant_only_in_conference"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private isCancelModifyCallOptionsVisible()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 211
    iget-boolean v1, p0, Lcom/android/incallui/BottomSheetHelper;->mHasSentCancelUpgradeRequest:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isModifyCallOptionsVisible()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/16 v1, 0x8

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 200
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->hasVoiceOrVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 201
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->isCancelModifyCallOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOneWayVideoOptionsVisible()Z
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/videotech/VideoTech;->getRequestedVideoState()I

    move-result v1

    .line 188
    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 189
    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x4

    if-eq v1, v0, :cond_1

    const/4 v1, 0x5

    if-ne v1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 193
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->isVideoBidirectional(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTtyEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.isTtyEnabled"

    const-string v2, "Context is null..."

    .line 915
    invoke-static {v1, v2, p0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 921
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "preferred_tty_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isUpdateAudioConfCallToVideo()Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    .line 394
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 395
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 396
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/incallui/videotech/VideoTech;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 397
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 398
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 399
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->wasParentCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private manageConferenceCall()V
    .locals 3

    .line 586
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.manageConferenceCall"

    const-string v2, "inCallActivity is null"

    .line 588
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 592
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    return-void
.end method

.method private maybeUpdateAddParticipantInMap()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f11005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->isAddParticipantSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 405
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateAudioConfCallToVideoInMap()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1104c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->isUpdateAudioConfCallToVideo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 410
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateCancelModifyCallInMap()V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->isCancelModifyCallOptionsVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 729
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateDeflectInMap()V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 479
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 480
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 481
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 483
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1103cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 483
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateDialpadOptionInMap()V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getActualState()I

    move-result v0

    .line 610
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 614
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1101fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateHideMeInMap()V
    .locals 5

    .line 544
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasCameraPermissionAndShownPrivacyToast(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsHideMe = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/BottomSheetHelper;->mIsHideMe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BottomSheetHelper.maybeUpdateHideMeInMap"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iget-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mIsHideMe:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1103d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1103d1

    .line 550
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 552
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 553
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 551
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateManageConferenceInMap()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    const/16 v1, 0x80

    .line 221
    invoke-virtual {v0, v1}, Lcom/android/incallui/call/DialerCall;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1102eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateModifyCallInMap()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11031c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->isModifyCallOptionsVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 724
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateOneWayVideoOptionsInMap()V
    .locals 4

    .line 718
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->isOneWayVideoOptionsVisible()Z

    move-result v0

    .line 719
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1104ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1104ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdatePipModeInMap()V
    .locals 4

    .line 228
    invoke-virtual {p0}, Lcom/android/incallui/BottomSheetHelper;->canDisablePipMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 232
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1103aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateTransferInMap()V
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1103ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->getCallTransferCapabilities()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 535
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onCallTransferItemClicked(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 690
    invoke-direct {p0, p1}, Lcom/android/incallui/BottomSheetHelper;->callTransferClicked(I)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/BottomSheetHelper;->callTransferClicked(I)V

    goto :goto_0

    .line 678
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/BottomSheetHelper;->callTransferClicked(I)V

    :goto_0
    return-void
.end method

.method private static prepareSheetOptions([[Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 179
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 180
    aget-object v3, p0, v2

    aget-object v3, v3, v1

    aget-object v4, p0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private showDialpad()V
    .locals 3

    .line 596
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.showDialpad"

    const-string v2, "inCallActivity is null"

    .line 598
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 602
    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    return-void
.end method

.method private startAddMultiParticipantActivity()V
    .locals 8

    const/4 v0, 0x0

    .line 424
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->getAddParticipantsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/call/DialerCall;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    :cond_0
    const-string v2, "BottomSheetHelper.startAddMultiParticipantActivity"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 427
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 429
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v6

    .line 430
    invoke-virtual {v6, v5}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    .line 431
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 432
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 433
    aget-object v5, v5, v3

    .line 435
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "current_participant_list"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "sendAddMultiParticipantsIntent, childCallIdList null."

    .line 439
    invoke-static {v2, v4, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity not found. Exception = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private startAddParticipantActivity()V
    .locals 3

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getAddParticipantsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity not found. Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper.startAddParticipantActivity"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private transferCall()V
    .locals 3

    const-string v0, "BottomSheetHelper.transferCall"

    .line 618
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mCall is null"

    .line 620
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->displayCallTransferOptions()V

    return-void
.end method

.method private upgradeAudioConfCallToVideo()V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.upgradeAudioConfCallToVideo"

    const-string v2, "Call is null"

    .line 748
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 752
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallLowBatteryListener;->onChangeToVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->upgradeToVideo()V

    :cond_1
    return-void
.end method


# virtual methods
.method public canDisablePipMode()Z
    .locals 1

    .line 926
    iget-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCanDisablePipMode:Z

    return v0
.end method

.method public dismissBottomSheet()V
    .locals 3

    .line 253
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 254
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsSheet:Lcom/android/incallui/ExtBottomSheetFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/ExtBottomSheetFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsSheet:Lcom/android/incallui/ExtBottomSheetFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ExtBottomSheetFragment;->dismiss()V

    .line 261
    iput-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsSheet:Lcom/android/incallui/ExtBottomSheetFragment;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->callTransferDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->callTransferDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 265
    iput-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->callTransferDialog:Landroid/app/AlertDialog;

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->modifyCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->modifyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 270
    iput-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->modifyCallDialog:Landroid/app/AlertDialog;

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCancelModifyCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCancelModifyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 275
    iput-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mCancelModifyCallDialog:Landroid/app/AlertDialog;

    :cond_4
    return-void

    :cond_5
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.dismissBottomSheet"

    const-string v2, "In call activity is either null or not visible"

    .line 255
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public displayCancelModifyCallOptions()V
    .locals 3

    .line 826
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.displayCancelModifyCallOptions"

    const-string v2, "inCallActivity is NULL"

    .line 828
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 831
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11010f

    .line 832
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f110110

    .line 833
    new-instance v2, Lcom/android/incallui/BottomSheetHelper$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/BottomSheetHelper$3;-><init>(Lcom/android/incallui/BottomSheetHelper;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f110348

    .line 839
    new-instance v2, Lcom/android/incallui/BottomSheetHelper$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/BottomSheetHelper$4;-><init>(Lcom/android/incallui/BottomSheetHelper;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 845
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCancelModifyCallDialog:Landroid/app/AlertDialog;

    .line 846
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public displayModifyCallOptions()V
    .locals 6

    .line 762
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    const-string v1, "BottomSheetHelper.displayModifyCallOptions"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "inCallActivity is NULL"

    .line 764
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 768
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-nez v3, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Can\'t display modify call options. Call is null"

    .line 769
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 774
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/BottomSheetHelper;->isTtyEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "modify call is allowed only when TTY is off."

    .line 775
    invoke-static {v1, v3, v2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f1104e4

    .line 777
    invoke-static {v0, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    return-void

    .line 781
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 782
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 785
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->hasVoiceCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v4}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 786
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f11031e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->hasReceiveVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->isVideoRxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 791
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f110320

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 792
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->hasTransmitVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->isVideoTxOnly(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 796
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f110321

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 797
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->hasReceiveVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 801
    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->hasTransmitVideoCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 802
    invoke-static {v4}, Lcom/android/incallui/QtiCallUtils;->isVideoBidirectional(Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 803
    iget-object v4, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f11031f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    .line 804
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11031d

    .line 808
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 810
    new-instance v0, Lcom/android/incallui/BottomSheetHelper$2;

    invoke-direct {v0, p0, v3}, Lcom/android/incallui/BottomSheetHelper$2;-><init>(Lcom/android/incallui/BottomSheetHelper;Ljava/util/ArrayList;)V

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 820
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const/4 v2, -0x1

    invoke-virtual {v4, v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 821
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->modifyCallDialog:Landroid/app/AlertDialog;

    .line 822
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public downgradeToVoiceCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    const/4 v0, 0x0

    .line 850
    invoke-direct {p0, p1, v0}, Lcom/android/incallui/BottomSheetHelper;->changeToVideoClicked(Lcom/android/incallui/call/DialerCall;I)V

    return-void
.end method

.method public getPhoneId()I
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "BottomSheetHelper.getPhoneId"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "mPrimaryCallTracker is null."

    .line 456
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 460
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "primaryCall is null."

    .line 462
    invoke-static {v3, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 466
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/incallui/BottomSheetHelper;->getPhoneIdExtra(Lcom/android/incallui/call/DialerCall;)I

    move-result v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public getPrimaryCallTracker()Lcom/android/incallui/PrimaryCallTracker;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    return-object v0
.end method

.method public isHideMeSelected()Z
    .locals 3

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsHideMe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/BottomSheetHelper;->mIsHideMe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper.isHideMeSelected"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    iget-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mIsHideMe:Z

    return v0
.end method

.method public isManageConferenceVisible()Z
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const v3, 0x7f1102eb

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 243
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "isManageConferenceVisible"

    const-string v3, "moreOptionsMap or mResources is null"

    .line 238
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/android/incallui/BottomSheetHelper;->dismissBottomSheet()V

    :cond_0
    return-void
.end method

.method public onPrimaryCallChanged(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 907
    invoke-virtual {p0}, Lcom/android/incallui/BottomSheetHelper;->dismissBottomSheet()V

    return-void
.end method

.method public onSendStaticImageStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public optionSelected(Ljava/lang/String;)V
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper.optionSelected"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 284
    invoke-static {}, Lcom/android/operatorutils/CarrierConfigManagerEx;->getOperatorBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "add_multi_participants_enabled"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->startAddMultiParticipantActivity()V

    goto/16 :goto_1

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->startAddParticipantActivity()V

    goto/16 :goto_1

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1103cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->deflectCall()V

    goto/16 :goto_1

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1103ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->transferCall()V

    goto/16 :goto_1

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1102eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->manageConferenceCall()V

    goto/16 :goto_1

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1103d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1103d0

    .line 296
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1101fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->showDialpad()V

    goto/16 :goto_1

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1104ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x1

    .line 301
    invoke-direct {p0, p1}, Lcom/android/incallui/BottomSheetHelper;->acceptIncomingCallOrUpgradeRequest(I)V

    goto :goto_1

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1104ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x2

    .line 303
    invoke-direct {p0, p1}, Lcom/android/incallui/BottomSheetHelper;->acceptIncomingCallOrUpgradeRequest(I)V

    goto :goto_1

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f11031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    invoke-virtual {p0}, Lcom/android/incallui/BottomSheetHelper;->displayModifyCallOptions()V

    goto :goto_1

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1103aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->showPipModeMenu()V

    goto :goto_1

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f11010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 309
    invoke-virtual {p0}, Lcom/android/incallui/BottomSheetHelper;->displayCancelModifyCallOptions()V

    goto :goto_1

    .line 310
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1104c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 311
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->upgradeAudioConfCallToVideo()V

    goto :goto_1

    .line 297
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/incallui/BottomSheetHelper;->hideMeClicked(Z)V

    :cond_d
    :goto_1
    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsSheet:Lcom/android/incallui/ExtBottomSheetFragment;

    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper"

    const-string v3, "setUp"

    .line 123
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f030004

    .line 126
    invoke-direct {p0, p1}, Lcom/android/incallui/BottomSheetHelper;->getMoreOptionsFromRes(I)[[Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/android/incallui/BottomSheetHelper;->prepareSheetOptions([[Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 128
    new-instance p1, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {p1}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 129
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {p1, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 130
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {p1, v1}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 131
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 132
    iget-object p1, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {p1, p0}, Lcom/android/incallui/PrimaryCallTracker;->addListener(Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;)V

    .line 133
    iget-object p1, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "disable_pip_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCanDisablePipMode:Z

    return-void
.end method

.method public shallShowMoreButton(Landroid/app/Activity;)Z
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 336
    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 338
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v2

    .line 339
    invoke-static {p1}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 340
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isEmergencyCall()Z

    move-result p1

    if-nez p1, :cond_2

    .line 341
    invoke-static {v2}, Lcom/android/incallui/call/DialerCall$State;->isDialing(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xd

    if-ne p1, v2, :cond_1

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/16 p1, 0x9

    if-eq p1, v2, :cond_2

    .line 345
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 348
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->isCancelModifyCallOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BottomSheetHelper shallShowMoreButton"

    const-string v2, "returns false"

    .line 351
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public sheetDismissed()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.sheetDismissed"

    const-string v2, " "

    .line 317
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsSheet:Lcom/android/incallui/ExtBottomSheetFragment;

    return-void
.end method

.method public showBottomSheet(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moreOptionsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper.showBottomSheet"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/android/incallui/ExtBottomSheetFragment;->newInstance(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/incallui/ExtBottomSheetFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsSheet:Lcom/android/incallui/ExtBottomSheetFragment;

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/ExtBottomSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public tearDown()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper"

    const-string v3, "tearDown"

    .line 138
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 140
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 141
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 142
    iput-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mIsHideMe:Z

    .line 143
    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1, p0}, Lcom/android/incallui/PrimaryCallTracker;->removeListener(Lcom/android/incallui/PrimaryCallTracker$PrimaryCallChangeListener;)V

    .line 145
    iput-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 147
    :cond_0
    iput-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mContext:Landroid/content/Context;

    .line 148
    iput-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    .line 149
    iput-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    iput-boolean v0, p0, Lcom/android/incallui/BottomSheetHelper;->mHasSentCancelUpgradeRequest:Z

    return-void
.end method

.method public updateMap()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "BottomSheetHelper.updateMap : "

    const-string v2, "PrimaryCallTracker is null"

    .line 155
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper.updateMap"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->moreOptionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateDialpadOptionInMap()V

    .line 163
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateDeflectInMap()V

    .line 164
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateAddParticipantInMap()V

    .line 165
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateTransferInMap()V

    .line 166
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateHideMeInMap()V

    .line 167
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateManageConferenceInMap()V

    .line 168
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateOneWayVideoOptionsInMap()V

    .line 169
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateModifyCallInMap()V

    .line 170
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdatePipModeInMap()V

    .line 171
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateCancelModifyCallInMap()V

    .line 172
    invoke-direct {p0}, Lcom/android/incallui/BottomSheetHelper;->maybeUpdateAudioConfCallToVideoInMap()V

    :cond_1
    return-void
.end method

.method public updateMoreButtonVisibility(ZLandroid/view/View;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/BottomSheetHelper;->dismissBottomSheet()V

    .line 364
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
