.class public Lcom/android/incallui/InCallActivityCommon;
.super Ljava/lang/Object;
.source "InCallActivityCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivityCommon$DialpadRequestType;
    }
.end annotation


# static fields
.field private static final DIALPAD_REQUEST_HIDE:I = 0x3

.field private static final DIALPAD_REQUEST_NONE:I = 0x1

.field private static final DIALPAD_REQUEST_SHOW:I = 0x2

.field private static final DIALPAD_TEXT_KEY:Ljava/lang/String; = "InCallActivity.dialpad_text"

.field private static final INTENT_EXTRA_FOR_FULL_SCREEN:Ljava/lang/String; = "InCallActivity.for_full_screen_intent"

.field private static final INTENT_EXTRA_INCOMING_CALL:Ljava/lang/String; = "incoming_call"

.field private static final INTENT_EXTRA_NEW_OUTGOING_CALL:Ljava/lang/String; = "InCallActivity.new_outgoing_call"

.field private static final INTENT_EXTRA_SHOW_DIALPAD:Ljava/lang/String; = "InCallActivity.show_dialpad"

.field private static final TAG_DIALPAD_FRAGMENT:Ljava/lang/String; = "tag_dialpad_fragment"

.field private static final TAG_INTERNATIONAL_CALL_ON_WIFI:Ljava/lang/String; = "tag_international_call_on_wifi"

.field private static final TAG_SELECT_ACCOUNT_FRAGMENT:Ljava/lang/String; = "tag_select_account_fragment"


# instance fields
.field private animateDialpadOnShow:Z

.field private dialog:Landroid/app/Dialog;

.field private dialpadSlideInAnimation:Landroid/view/animation/Animation;

.field private dialpadSlideOutAnimation:Landroid/view/animation/Animation;

.field private dismissKeyguard:Z

.field private dtmfTextToPreopulate:Ljava/lang/String;

.field private final inCallActivity:Lcom/android/incallui/InCallActivity;

.field private inCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

.field private inComingRttCallDialog:Lcom/android/incallui/InComingRttCallDialog;

.field private internationalCallOnWifiCallback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

.field private mDontShowAgain:Z

.field private rttEndDialog:Landroid/app/TctDialog;

.field private final selectAccountListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private selectPhoneAccountDialogFragment:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

.field private showDialpadRequest:I

.field private showPostCharWaitDialogCallId:Ljava/lang/String;

.field private showPostCharWaitDialogChars:Ljava/lang/String;

.field private showPostCharWaitDialogOnResume:Z

.field private tctDialog:Landroid/app/TctDialog;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivityCommon;->mDontShowAgain:Z

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/android/incallui/InCallActivityCommon;->showDialpadRequest:I

    .line 132
    new-instance v0, Lcom/android/incallui/InCallActivityCommon$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivityCommon$1;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->selectAccountListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 158
    new-instance v0, Lcom/android/incallui/InCallActivityCommon$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivityCommon$2;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->internationalCallOnWifiCallback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

    .line 188
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallActivityCommon;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->performHideDialpadFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallActivityCommon;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallActivityCommon;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/android/incallui/InCallActivityCommon;->mDontShowAgain:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/incallui/InCallActivityCommon;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivityCommon;->mDontShowAgain:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/incallui/InCallActivityCommon;Landroid/app/TctDialog;)Landroid/app/TctDialog;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallActivityCommon;)Lcom/android/incallui/InCallActivity;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    return-object p0
.end method

.method private getDialpadFragment()Lcom/android/incallui/DialpadFragment;
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "tag_dialpad_fragment"

    .line 939
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadFragment;

    return-object v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 486
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "InCallActivityCommon.handleDialerKeyDown"

    const-string v2, "keyCode %d, event: %s"

    invoke-static {p1, v2, v0}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p1, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 5

    .line 963
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InCallActivity.show_dialpad"

    .line 967
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "InCallActivityCommon.internalResolveIntent"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 971
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivityCommon;->relaunchedFromDialer(Z)V

    .line 977
    :cond_1
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_2

    .line 979
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getPendingOutgoingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    :cond_2
    const-string v1, "InCallActivity.new_outgoing_call"

    .line 982
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 983
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 988
    invoke-static {}, Lcom/android/dialer/compat/CompatUtils;->isMSIMCompatible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 989
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/call/DialerCall;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "call with no valid accounts, disconnecting"

    .line 990
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    :cond_3
    const/4 p1, 0x1

    .line 996
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivityCommon;->dismissKeyguard(Z)V

    .line 999
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->maybeShowAccountSelectionDialog()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1001
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->hideMainInCallFragment()V

    :cond_5
    return-void
.end method

.method private maybeShowAccountSelectionDialog()Z
    .locals 5

    .line 1006
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getWaitingForAccountCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1011
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "selectPhoneAccountAccounts"

    .line 1015
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 1017
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const v2, 0x7f110426

    .line 1020
    iget-object v3, p0, Lcom/android/incallui/InCallActivityCommon;->selectAccountListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 1026
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    .line 1021
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;Ljava/lang/String;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->selectPhoneAccountDialogFragment:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 1027
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1028
    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tag_select_account_fragment"

    .line 1027
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v4
.end method

.method private onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    .line 739
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->onErrorDialogDismissed()V

    .line 740
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method private performHideDialpadFragment()V
    .locals 4

    .line 910
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "InCallActivityCommon.performHideDialpadFragment"

    const-string v2, "child fragment manager is null"

    .line 912
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 917
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 919
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 920
    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 921
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 922
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 923
    invoke-virtual {v2, v1}, Lcom/android/incallui/DialpadFragment;->setUserVisibleHint(Z)V

    :cond_1
    return-void
.end method

.method private performShowDialpadFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 4

    .line 893
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 894
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 897
    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getDialpadContainerId()I

    move-result v1

    new-instance v2, Lcom/android/incallui/DialpadFragment;

    invoke-direct {v2}, Lcom/android/incallui/DialpadFragment;-><init>()V

    const-string v3, "tag_dialpad_fragment"

    .line 896
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 899
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v2, 0x1

    .line 900
    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadFragment;->setUserVisibleHint(Z)V

    .line 903
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 904
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 906
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL_DIALPAD:Lcom/android/dialer/logging/ScreenEvent$Type;

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-interface {p1, v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return-void
.end method

.method private relaunchedFromDialer(Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 568
    :goto_0
    iput p1, p0, Lcom/android/incallui/InCallActivityCommon;->showDialpadRequest:I

    .line 569
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivityCommon;->animateDialpadOnShow:Z

    if-ne p1, v0, :cond_1

    .line 574
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 576
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->unhold()V

    :cond_1
    return-void
.end method

.method public static setIntentExtras(Landroid/content/Intent;ZZZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "InCallActivity.show_dialpad"

    .line 180
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string p1, "InCallActivity.new_outgoing_call"

    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "InCallActivity.for_full_screen_intent"

    .line 183
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "incoming_call"

    .line 184
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private showErrorDialog(Landroid/app/Dialog;Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "InCallActivityCommon.showErrorDialog"

    const-string v3, "message: %s"

    .line 620
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 624
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 629
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    .line 643
    new-instance p1, Landroid/app/TctDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {p1, v0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    .line 644
    invoke-virtual {p1, p2}, Landroid/app/TctDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 645
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    const p2, 0x104000a

    new-instance v0, Lcom/android/incallui/InCallActivityCommon$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivityCommon$4;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 651
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    new-instance p2, Lcom/android/incallui/InCallActivityCommon$5;

    invoke-direct {p2, p0}, Lcom/android/incallui/InCallActivityCommon$5;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {p1, p2}, Landroid/app/TctDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 659
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method private showRttEndDialog()V
    .locals 5

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inCallActivity.isVisible() ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallActivityCommon.showRttEndDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    if-nez v0, :cond_1

    .line 699
    new-instance v0, Landroid/app/TctDialog;

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    .line 700
    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    const v1, 0x7f1103f9

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setDialogTitle(I)Landroid/app/TctDialog;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 703
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110403

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 704
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    new-instance v3, Lcom/android/incallui/InCallActivityCommon$8;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivityCommon$8;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/TctDialog;->setCheckedItems([Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)Landroid/app/TctDialog;

    .line 711
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    invoke-virtual {v0, v2}, Landroid/app/TctDialog;->setChecked(Z)Landroid/app/TctDialog;

    .line 712
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    const v1, 0x7f110408

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    const v1, 0x7f11006d

    new-instance v2, Lcom/android/incallui/InCallActivityCommon$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivityCommon$9;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 723
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    new-instance v1, Lcom/android/incallui/InCallActivityCommon$10;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivityCommon$10;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 732
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->rttEndDialog:Landroid/app/TctDialog;

    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    :cond_2
    return-void
.end method

.method private showRttFailDialog()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivityCommon.showRttFailDialog"

    const-string v3, ""

    .line 664
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    const v2, 0x7f1103fb

    if-nez v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    new-instance v0, Landroid/app/TctDialog;

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v1}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    .line 672
    invoke-virtual {v0, v2}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 673
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/InCallActivityCommon$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivityCommon$6;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 679
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    new-instance v1, Lcom/android/incallui/InCallActivityCommon$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivityCommon$7;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 686
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissKeyguard(Z)V
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivityCommon;->dismissKeyguard:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 503
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivityCommon;->dismissKeyguard:Z

    const/high16 v0, 0x400000

    if-eqz p1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method dismissPendingDialogs()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/app/TctDialog;->dismiss()V

    .line 585
    iput-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->tctDialog:Landroid/app/TctDialog;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 589
    iput-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->selectPhoneAccountDialogFragment:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    if-eqz v0, :cond_2

    .line 599
    invoke-virtual {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->dismiss()V

    .line 600
    iput-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->selectPhoneAccountDialogFragment:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 606
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_international_call_on_wifi"

    .line 607
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallActivityCommon.dismissPendingDialogs"

    const-string v3, "dismissing InternationalCallOnWifiDialogFragment"

    .line 609
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    invoke-virtual {v0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->dismiss()V

    .line 615
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCsRedialHandler;->dismissPendingDialogs()V

    .line 616
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->dismissBottomSheet()V

    return-void
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 745
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    invoke-virtual {p1}, Lcom/android/incallui/InCallOrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public hasPendingDialogs()Z
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCsRedialHandler;->hasPendingDialogs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .line 928
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/disconnectdialog/DisconnectMessage;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "InCallActivityCommon.maybeShowErrorDialogOnDisconnect"

    const-string v2, "disconnect cause: %s"

    .line 527
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p1, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p1, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->dialog:Landroid/app/Dialog;

    iget-object p1, p1, Lcom/android/incallui/disconnectdialog/DisconnectMessage;->toastMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/InCallActivityCommon;->showErrorDialog(Landroid/app/Dialog;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public maybeShowRttEndDialogOnDisconnect()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivityCommon.maybeShowRttEndDialogOnDisconnect"

    const-string v2, ""

    .line 547
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->showRttEndDialog()V

    :cond_0
    return-void
.end method

.method public maybeShowRttFailDialogOnDisconnect()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivityCommon.maybeShowRttFailDialogOnDisconnect"

    const-string v2, ""

    .line 540
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->showRttFailDialog()V

    :cond_0
    return-void
.end method

.method public maybeShowRttIncomingCall(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivityCommon.maybeShowRttIncomingCall"

    const-string v2, ""

    .line 554
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivityCommon;->showRttIncomCallDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivityCommon.onBackPressed"

    const-string v3, ""

    .line 386
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 399
    invoke-virtual {p1}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 400
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1, v0, v3}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    return v3

    .line 405
    :cond_2
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-eqz p1, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "consume Back press for an incoming call"

    .line 407
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x288000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 201
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->setContentView(I)V

    .line 203
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivityCommon;->internalResolveIntent(Landroid/content/Intent;)V

    .line 205
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 206
    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 208
    :goto_0
    invoke-static {}, Lcom/android/dialer/util/ViewUtil;->isRtl()Z

    move-result v4

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_1

    const v5, 0x7f010021

    goto :goto_1

    :cond_1
    const v5, 0x7f010022

    .line 212
    :goto_1
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialpadSlideInAnimation:Landroid/view/animation/Animation;

    .line 214
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_2

    const v4, 0x7f010024

    goto :goto_2

    :cond_2
    const v4, 0x7f010025

    .line 215
    :goto_2
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialpadSlideOutAnimation:Landroid/view/animation/Animation;

    goto :goto_3

    .line 219
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    const v4, 0x7f010020

    .line 220
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialpadSlideInAnimation:Landroid/view/animation/Animation;

    .line 221
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    const v4, 0x7f010023

    .line 222
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialpadSlideOutAnimation:Landroid/view/animation/Animation;

    .line 225
    :goto_3
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialpadSlideInAnimation:Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/dialer/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialpadSlideOutAnimation:Landroid/view/animation/Animation;

    sget-object v4, Lcom/android/dialer/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dialpadSlideOutAnimation:Landroid/view/animation/Animation;

    new-instance v4, Lcom/android/incallui/InCallActivityCommon$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/InCallActivityCommon$3;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-string v1, "InCallActivity.show_dialpad"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 237
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x3

    .line 238
    :goto_4
    iput v2, p0, Lcom/android/incallui/InCallActivityCommon;->showDialpadRequest:I

    .line 239
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivityCommon;->animateDialpadOnShow:Z

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "InCallActivity.dialpad_text"

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->dtmfTextToPreopulate:Ljava/lang/String;

    .line 248
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 250
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "tag_select_account_fragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    if-eqz p1, :cond_6

    .line 252
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->selectAccountListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 256
    :cond_6
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 259
    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "tag_international_call_on_wifi"

    .line 260
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;

    if-eqz p1, :cond_7

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "InCallActivityCommon.onCreate"

    const-string v2, "international fragment exists attaching callback"

    .line 262
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->internationalCallOnWifiCallback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

    invoke-virtual {p1, v0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->setCallback(Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;)V

    .line 267
    :cond_7
    new-instance p1, Lcom/android/incallui/InCallOrientationEventListener;

    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/incallui/InCallOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallOrientationEventListener:Lcom/android/incallui/InCallOrientationEventListener;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 358
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    .line 359
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inComingRttCallDialog:Lcom/android/incallui/InComingRttCallDialog;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "yang"

    const-string v0, "inComingRttCallDialog != null"

    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inComingRttCallDialog:Lcom/android/incallui/InComingRttCallDialog;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x5

    const-string v1, "InCallActivityCommon.onKeyDown"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    .line 461
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/android/incallui/call/TelecomAdapter;->mute(Z)V

    return v3

    .line 466
    :cond_1
    invoke-static {}, Lcom/android/dialer/common/LogUtil;->isVerboseEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "----------- InCallActivity View dump --------------"

    .line 467
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 473
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View dump:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 482
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivityCommon;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    return v3

    .line 432
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "InCallPresenter should always handle KEYCODE_CALL in onKeyDown"

    .line 434
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v3
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 416
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onNewIntent(Landroid/content/Intent;Z)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivityCommon.onNewIntent"

    const-string v2, ""

    .line 363
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->setIntent(Landroid/content/Intent;)V

    if-nez p2, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivityCommon;->internalResolveIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 335
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 337
    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 340
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/InCallActivity;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 290
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isReadyForTearDown()Z

    move-result v0

    const-string v1, "InCallActivityCommon.onResume"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "InCallPresenter is ready for tear down, not sending updates"

    .line 291
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivityCommon;->updateTaskDescription()V

    .line 296
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 300
    :goto_0
    iget v0, p0, Lcom/android/incallui/InCallActivityCommon;->showDialpadRequest:I

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 304
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 306
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivityCommon;->animateDialpadOnShow:Z

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    .line 307
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivityCommon;->animateDialpadOnShow:Z

    .line 309
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->dtmfTextToPreopulate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->setDtmfText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->dtmfTextToPreopulate:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "force hide dialpad"

    .line 315
    invoke-static {v1, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    .line 320
    :cond_2
    :goto_1
    iput v2, p0, Lcom/android/incallui/InCallActivityCommon;->showDialpadRequest:I

    .line 323
    :cond_3
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogOnResume:Z

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogCallId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogChars:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_4
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 329
    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "InCallActivity.for_full_screen_intent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 328
    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->onInCallUiShown(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivityCommon;->isDialpadVisible()Z

    move-result v0

    const-string v1, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->getDialpadFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->getDtmfText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallActivity.dialpad_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 281
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 282
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 283
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivityCommon;->enableInCallOrientationEventListener(Z)V

    .line 286
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStarted()V

    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivityCommon;->enableInCallOrientationEventListener(Z)V

    .line 348
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    .line 349
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v2, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivityCommon.onStop"

    const-string v2, "Another activity already set.Ignore."

    .line 353
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 351
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onActivityStopped()V

    :goto_1
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 6

    .line 752
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getTaskId()I

    move-result v1

    const/4 v2, 0x0

    .line 754
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 755
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 757
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v4, v1, :cond_0

    .line 758
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "InCallActivityCommon.setExcludeFromRecents"

    const-string v5, "RuntimeException when excluding task from recents."

    .line 761
    invoke-static {v4, v5, v3}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showDialpadFragment(ZZ)Z
    .locals 6

    .line 846
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivityCommon;->isDialpadVisible()Z

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 850
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 851
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 852
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "InCallActivityCommon.showDialpadFragment"

    const-string v5, "show: %b, animate: %b, isDialpadVisible: %b"

    .line 847
    invoke-static {v2, v5, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v0, :cond_0

    return v3

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string/jumbo p2, "unable to show or hide dialpad fragment"

    .line 859
    invoke-static {v2, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    .line 871
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallActivityCommon;->performHideDialpadFragment()V

    .line 884
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 886
    invoke-virtual {p2, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    .line 888
    :cond_4
    iput v4, p0, Lcom/android/incallui/InCallActivityCommon;->showDialpadRequest:I

    return v4
.end method

.method showInternationalCallOnWifiDialog(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    const-string v0, "InCallActivityCommon.showInternationalCallOnWifiDialog"

    .line 770
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->shouldShow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "InternationalCallOnWifiDialogFragment.shouldShow returned false"

    .line 772
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 780
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->internationalCallOnWifiCallback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

    .line 779
    invoke-static {p1, v0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->newInstance(Ljava/lang/String;Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;)Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;

    move-result-object p1

    .line 781
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_international_call_on_wifi"

    invoke-virtual {p1, v0, v1}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "postCharWait"

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/PostCharDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 516
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogOnResume:Z

    const/4 p1, 0x0

    .line 517
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogCallId:Ljava/lang/String;

    .line 518
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogChars:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogOnResume:Z

    .line 521
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogCallId:Ljava/lang/String;

    .line 522
    iput-object p2, p0, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialogChars:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public showRttIncomCallDialog(Ljava/lang/String;)V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inComingRttCallDialog:Lcom/android/incallui/InComingRttCallDialog;

    if-nez v0, :cond_0

    .line 1035
    new-instance v0, Lcom/android/incallui/InComingRttCallDialog;

    iget-object v1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, p1, v1}, Lcom/android/incallui/InComingRttCallDialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inComingRttCallDialog:Lcom/android/incallui/InComingRttCallDialog;

    .line 1036
    new-instance p1, Lcom/android/incallui/-$$Lambda$BdiRyPMtlxPTIT5wFhngVDwrrQo;

    invoke-direct {p1, p0}, Lcom/android/incallui/-$$Lambda$BdiRyPMtlxPTIT5wFhngVDwrrQo;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/InComingRttCallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1039
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inComingRttCallDialog:Lcom/android/incallui/InComingRttCallDialog;

    invoke-virtual {p1}, Lcom/android/incallui/InComingRttCallDialog;->show()V

    return-void
.end method

.method public showWifiFailedDialog(Lcom/android/incallui/call/DialerCall;)V
    .locals 7

    .line 795
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->showWifiHandoverAlertAsToast()Z

    move-result v0

    const-string v1, "InCallActivityCommon.showWifiFailedDialog"

    const v2, 0x7f1104e2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "as toast"

    .line 796
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivityCommon;->dismissPendingDialogs()V

    .line 805
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1104e3

    .line 807
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 811
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0113

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09032b

    .line 813
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 814
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 818
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 819
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/InCallActivityCommon$12;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivityCommon$12;-><init>(Lcom/android/incallui/InCallActivityCommon;)V

    .line 820
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v4, Lcom/android/incallui/InCallActivityCommon$11;

    invoke-direct {v4, p0, p1, v5}, Lcom/android/incallui/InCallActivityCommon$11;-><init>(Lcom/android/incallui/InCallActivityCommon;Lcom/android/incallui/call/DialerCall;Landroid/widget/CheckBox;)V

    .line 827
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 838
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "as dialog"

    .line 840
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showWifiToLteHandoverToast(Lcom/android/incallui/call/DialerCall;)V
    .locals 3

    .line 785
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->hasShownWiFiToLteHandoverToast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    const v1, 0x7f1104ed

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 791
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->setHasShownWiFiToLteHandoverToast()V

    return-void
.end method

.method public updateTaskDescription()V
    .locals 4

    .line 943
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    .line 945
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06018a

    .line 946
    iget-object v2, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    .line 948
    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 947
    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_0

    .line 950
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getThemeColorManager()Lcom/android/incallui/ThemeColorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/ThemeColorManager;->getSecondaryColor()I

    move-result v1

    .line 953
    :goto_0
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    const v3, 0x7f110375

    .line 954
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 955
    iget-object v0, p0, Lcom/android/incallui/InCallActivityCommon;->inCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
