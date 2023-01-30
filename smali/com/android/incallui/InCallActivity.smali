.class public Lcom/android/incallui/InCallActivity;
.super Lcom/android/incallui/TransactionSafeFragmentActivity;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/answer/protocol/AnswerScreenDelegateFactory;
.implements Lcom/android/incallui/incall/protocol/InCallScreenDelegateFactory;
.implements Lcom/android/incallui/incall/protocol/InCallButtonUiDelegateFactory;
.implements Lcom/android/incallui/video/protocol/VideoCallScreenDelegateFactory;
.implements Lcom/android/incallui/rtt/protocol/RttCallScreenDelegateFactory;
.implements Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivity$ShouldShowUiResult;
    }
.end annotation


# static fields
.field private static final CONFIG_ANSWER_AND_RELEASE_ENABLED:Ljava/lang/String; = "answer_and_release_enabled"

.field private static final DID_SHOW_ANSWER_SCREEN_KEY:Ljava/lang/String; = "did_show_answer_screen"

.field private static final DID_SHOW_IN_CALL_SCREEN_KEY:Ljava/lang/String; = "did_show_in_call_screen"

.field private static final DID_SHOW_RTT_CALL_SCREEN_KEY:Ljava/lang/String; = "did_show_rtt_call_screen"

.field private static final DID_SHOW_VIDEO_CALL_SCREEN_KEY:Ljava/lang/String; = "did_show_video_call_screen"

.field private static final RTT_REQUEST_DIALOG:Ljava/lang/String; = "tag_rtt_request_dialog"

.field private static final TAG:Ljava/lang/String; = "InCallActivity"

.field private static final TAG_ANSWER_SCREEN:Ljava/lang/String; = "tag_answer_screen"

.field private static final TAG_IN_CALL_SCREEN:Ljava/lang/String; = "tag_in_call_screen"

.field private static final TAG_RTT_CALL_SCREEN:Ljava/lang/String; = "tag_rtt_call_screen"

.field private static final TAG_VIDEO_CALL_SCREEN:Ljava/lang/String; = "tag_video_call_screen"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private backgroundDrawableColors:[I

.field private final common:Lcom/android/incallui/InCallActivityCommon;

.field private dialerCall:Lcom/android/incallui/call/DialerCall;

.field private dialog:Lcom/android/incallui/incall/impl/ReCallDialog;

.field private didShowAnswerScreen:Z

.field private didShowInCallScreen:Z

.field private didShowRttCallScreen:Z

.field private didShowVideoCallScreen:Z

.field private inCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

.field private isBackKey:Z

.field private isDialer:Z

.field private isInCallAc:Z

.field private isInShowMainInCallFragment:Z

.field private isReDial:Z

.field private isVisible:Z

.field private leftTime:J

.field private needDismissPendingDialogs:Z

.field private number:Ljava/lang/String;

.field private pseudoBlackScreenOverlay:Landroid/view/View;

.field private rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

.field private rttRequestDialog:Lcom/android/incallui/RttRequestDialog;

.field private touchDownWhenPseudoScreenOff:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 139
    invoke-direct {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isReDial:Z

    const-wide/16 v1, 0x0

    .line 129
    iput-wide v1, p0, Lcom/android/incallui/InCallActivity;->leftTime:J

    .line 132
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isBackKey:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isInCallAc:Z

    .line 140
    new-instance v0, Lcom/android/incallui/InCallActivityCommon;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivityCommon;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    return-void
.end method

.method private getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;
    .locals 2

    const-string v0, "InCallActivity"

    const-string v1, "getActiveInCallScreen"

    .line 732
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "tag_video_call_screen"

    goto :goto_0

    .line 736
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-eqz v0, :cond_1

    const-string v0, "tag_in_call_screen"

    goto :goto_0

    .line 738
    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    if-eqz v0, :cond_2

    const-string v0, "tag_rtt_call_screen"

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 742
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/incallui/incall/protocol/InCallScreen;

    :goto_1
    return-object v1
.end method

.method public static getIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 3

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10040000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    const-class v1, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    invoke-static {v0, p1, p2, p3}, Lcom/android/incallui/InCallActivityCommon;->setIntentExtras(Landroid/content/Intent;ZZZ)V

    return-object v0
.end method

.method private getRttCallScreen()Lcom/android/incallui/rtt/protocol/RttCallScreen;
    .locals 2

    .line 1273
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_rtt_call_screen"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/protocol/RttCallScreen;

    return-object v0
.end method

.method private getShouldShowAnswerUi()Lcom/android/incallui/InCallActivity$ShouldShowUiResult;
    .locals 6

    .line 981
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getIncomingCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "InCallActivity.getShouldShowAnswerUi"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "found incoming call"

    .line 983
    invoke-static {v2, v4, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    new-instance v2, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v2, v1, v0}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v2

    .line 987
    :cond_0
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "found video upgrade request"

    .line 989
    invoke-static {v2, v4, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    new-instance v2, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v2, v1, v0}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v2

    .line 996
    :cond_1
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_2

    .line 998
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 1000
    :cond_2
    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    :cond_3
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "found disconnecting incoming call"

    .line 1001
    invoke-static {v2, v4, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    new-instance v2, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v2, v1, v0}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v2

    .line 1005
    :cond_4
    new-instance v0, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v0
.end method

.method private static getShouldShowRttUi()Lcom/android/incallui/InCallActivity$ShouldShowUiResult;
    .locals 6

    .line 1030
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "InCallActivity.getShouldShowRttUi"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "null call"

    .line 1033
    invoke-static {v2, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    new-instance v0, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v0, v3, v1}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v0

    .line 1037
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "found rtt call"

    .line 1038
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    new-instance v1, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v1, v5, v0}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v1

    .line 1042
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasSentRttUpgradeRequest()Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "upgrading to rtt"

    .line 1043
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    new-instance v1, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v1, v5, v0}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v1

    .line 1047
    :cond_2
    new-instance v0, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v0, v3, v1}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v0
.end method

.method private static getShouldShowVideoUi()Lcom/android/incallui/InCallActivity$ShouldShowUiResult;
    .locals 6

    .line 1009
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "InCallActivity.getShouldShowVideoUi"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "null call"

    .line 1011
    invoke-static {v2, v4, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    new-instance v0, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v0, v3, v1}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v0

    .line 1015
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "found video call"

    .line 1016
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    new-instance v1, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v1, v5, v0}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v1

    .line 1020
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->hasSentVideoUpgradeRequest()Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "upgrading to video"

    .line 1021
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    new-instance v1, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v1, v5, v0}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v1

    .line 1025
    :cond_2
    new-instance v0, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    invoke-direct {v0, v3, v1}, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;-><init>(ZLcom/android/incallui/call/DialerCall;)V

    return-object v0
.end method

.method private hideAnswerScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 2

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideAnswerScreenFragment didShowAnswerScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerScreen()Lcom/android/incallui/answer/protocol/AnswerScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1131
    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getAnswerScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1134
    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    const/4 p1, 0x1

    return p1
.end method

.method private hideInCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 2

    .line 1160
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1163
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1165
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1167
    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    const/4 p1, 0x1

    return p1
.end method

.method private hideRttCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 5

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideRttCallScreenFragment didShowRttCallScreen ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1208
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getRttCallScreen()Lcom/android/incallui/rtt/protocol/RttCallScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rttCallScreen.getRttCallScreenFragment()  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getRttCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-interface {v0}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getRttCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1213
    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    const/4 p1, 0x1

    return p1
.end method

.method private hideVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 4

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideVideoCallScreenFragment didShowVideoCallScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getVideoCallScreen()Lcom/android/incallui/video/protocol/VideoCallScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "videoCallScreen != null"

    .line 1253
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-interface {v0}, Lcom/android/incallui/video/protocol/VideoCallScreen;->getVideoCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1256
    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    const/4 p1, 0x1

    return p1
.end method

.method private shouldAllowAnswerAndRelease(Lcom/android/incallui/call/DialerCall;)Z
    .locals 4

    .line 1103
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getActiveCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    const-string v1, "InCallActivity.shouldAllowAnswerAndRelease"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no active call"

    .line 1104
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1107
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "PHONE_TYPE_CDMA not supported"

    .line 1109
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1112
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1116
    :cond_2
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p1

    const-string v0, "answer_and_release_enabled"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v3}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "disabled by config"

    .line 1117
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    return v3

    :cond_4
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "video call"

    .line 1113
    invoke-static {v1, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private shouldCloseActivityOnFinish()Z
    .locals 4

    .line 351
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "InCallActivity.shouldCloseActivityOnFinish"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "allowing activity to be closed because it\'s not visible"

    .line 352
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->hasPendingDialogs()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "dialog is visible, not closing activity"

    .line 359
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerScreen()Lcom/android/incallui/answer/protocol/AnswerScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 365
    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->hasPendingDialogs()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "answer screen dialog is visible, not closing activity"

    .line 366
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "activity is visible and has no dialogs, allowing activity to close"

    .line 397
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private showAnswerScreenFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/incallui/call/DialerCall;)Z
    .locals 12

    .line 1053
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "didShowAnswerScreen was false but call was still null"

    .line 1057
    invoke-static {v2, v4, v3}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->hasReceivedVideoUpgradeRequest()Z

    move-result v8

    .line 1062
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    if-eqz v2, :cond_4

    .line 1063
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerScreen()Lcom/android/incallui/answer/protocol/AnswerScreen;

    move-result-object v2

    .line 1064
    invoke-interface {v2}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "InCallActivity.showAnswerScreenFragment"

    if-eqz v3, :cond_2

    .line 1065
    invoke-interface {v2}, Lcom/android/incallui/answer/protocol/AnswerScreen;->isVideoCall()Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v5

    if-ne v3, v5, :cond_2

    .line 1066
    invoke-interface {v2}, Lcom/android/incallui/answer/protocol/AnswerScreen;->isVideoUpgradeRequest()Z

    move-result v3

    if-ne v3, v8, :cond_2

    .line 1067
    invoke-interface {v2}, Lcom/android/incallui/answer/protocol/AnswerScreen;->isActionTimeout()Z

    move-result v3

    if-nez v3, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "answer fragment exists for same call and has NOT been accepted/rejected/timed out"

    .line 1068
    invoke-static {v4, p2, p1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1073
    :cond_2
    invoke-interface {v2}, Lcom/android/incallui/answer/protocol/AnswerScreen;->isActionTimeout()Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "answer fragment exists but has been accepted/rejected and timed out"

    .line 1074
    invoke-static {v4, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "answer fragment exists but arguments do not match"

    .line 1078
    invoke-static {v4, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->hideAnswerScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    .line 1088
    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1089
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v6

    .line 1090
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isVideoCall()Z

    move-result v7

    .line 1092
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/videotech/VideoTech;->isSelfManagedCamera()Z

    move-result v9

    .line 1093
    invoke-direct {p0, p2}, Lcom/android/incallui/InCallActivity;->shouldAllowAnswerAndRelease(Lcom/android/incallui/call/DialerCall;)Z

    move-result v10

    .line 1094
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    if-eqz p2, :cond_5

    move v11, v0

    goto :goto_2

    :cond_5
    move v11, v1

    .line 1087
    :goto_2
    invoke-static/range {v5 .. v11}, Lcom/android/incallui/answer/bindings/AnswerBindings;->createAnswerScreen(Ljava/lang/String;ZZZZZZ)Lcom/android/incallui/answer/protocol/AnswerScreen;

    move-result-object p2

    const v1, 0x7f0901de

    .line 1095
    invoke-interface {p2}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getAnswerScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    const-string v2, "tag_answer_screen"

    invoke-virtual {p1, v1, p2, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1097
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/ScreenEvent$Type;->INCOMING_CALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, p2, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    .line 1098
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    return v0
.end method

.method private showMainInCallFragment()V
    .locals 10

    .line 895
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isVisible:Z

    const-string v1, "InCallActivity.showMainInCallFragment"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "not visible yet/anymore"

    .line 896
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 901
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isInShowMainInCallFragment:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "already in method, bailing"

    .line 902
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 906
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isInShowMainInCallFragment:Z

    .line 907
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getShouldShowAnswerUi()Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    move-result-object v3

    .line 908
    invoke-static {}, Lcom/android/incallui/InCallActivity;->getShouldShowVideoUi()Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    move-result-object v4

    .line 909
    invoke-static {}, Lcom/android/incallui/InCallActivity;->getShouldShowRttUi()Lcom/android/incallui/InCallActivity$ShouldShowUiResult;

    move-result-object v5

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    .line 910
    iget-boolean v7, v3, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->shouldShow:Z

    .line 915
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    iget-boolean v7, v4, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->shouldShow:Z

    .line 916
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    iget-boolean v7, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    .line 917
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    .line 918
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v0, 0x4

    iget-boolean v8, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    .line 919
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v0

    const/4 v0, 0x5

    iget-boolean v8, v5, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->shouldShow:Z

    .line 920
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v0

    const/4 v0, 0x6

    iget-boolean v8, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    .line 921
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v0

    const-string v0, "InCallActivity.didShowInCallScreen ="

    const-string v8, "shouldShowAnswerUi: %b, shouldShowVideoUi: %b, didShowAnswerScreen: %b, didShowInCallScreen: %b, didShowVideoCallScreen: %b shouldShowRttUi.shouldShow: %b, didShowRttCallScreen: %b"

    .line 910
    invoke-static {v0, v8, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 930
    iget-boolean v6, v3, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->shouldShow:Z

    if-eqz v6, :cond_2

    .line 931
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideInCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v1

    .line 932
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v4

    .line 933
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideRttCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v5

    .line 934
    iget-object v3, v3, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->call:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/InCallActivity;->showAnswerScreenFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/incallui/call/DialerCall;)Z

    move-result v3

    goto/16 :goto_3

    .line 935
    :cond_2
    iget-boolean v3, v4, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->shouldShow:Z

    if-eqz v3, :cond_3

    .line 936
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideInCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v1

    .line 937
    iget-object v3, v4, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->call:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/InCallActivity;->showVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/incallui/call/DialerCall;)Z

    move-result v4

    .line 938
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideRttCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v5

    .line 939
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideAnswerScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v3

    goto/16 :goto_3

    .line 940
    :cond_3
    iget-boolean v3, v5, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->shouldShow:Z

    if-eqz v3, :cond_7

    iget-object v3, v5, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->call:Lcom/android/incallui/call/DialerCall;

    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fdidShowRttCallScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "didShowInCallScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-eqz v3, :cond_4

    .line 946
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    .line 947
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->getRttUIVisible()Z

    move-result v4

    .line 948
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCurrentRttVisible = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v4, v2

    .line 951
    :goto_0
    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    :goto_1
    const-string v3, "InCallActivity"

    const-string v4, "InCallActivity.showMainInCallFragment hideInCallScreenFragment"

    .line 952
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideInCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v3

    .line 955
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "didChangeInCall = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v4

    .line 960
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideAnswerScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v1

    .line 961
    iget-object v5, v5, Lcom/android/incallui/InCallActivity$ShouldShowUiResult;->call:Lcom/android/incallui/call/DialerCall;

    invoke-direct {p0, v0, v5}, Lcom/android/incallui/InCallActivity;->showRttCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/incallui/call/DialerCall;)Z

    move-result v5

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_3

    .line 964
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->showInCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v1

    .line 965
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v4

    .line 966
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideAnswerScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v3

    .line 967
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideRttCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    move-result v5

    :goto_3
    if-nez v1, :cond_8

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    if-eqz v5, :cond_9

    .line 971
    :cond_8
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/BottomSheetHelper;->dismissBottomSheet()V

    .line 972
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 973
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {v0, v1, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    .line 976
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->notifyDialpadVisibilityState(Z)V

    .line 977
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isInShowMainInCallFragment:Z

    return-void
.end method

.method private showRttCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/incallui/call/DialerCall;)Z
    .locals 3

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRttCallScreenFragment   - didShowRttCallScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    const-string v1, "InCallActivity.showRttCallScreenFragment"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1179
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getRttCallScreen()Lcom/android/incallui/rtt/protocol/RttCallScreen;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "RTT call id doesn\'t match"

    .line 1180
    invoke-static {v1, p2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v2

    :cond_1
    if-nez p2, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "null call"

    .line 1185
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1186
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->dialerCall:Lcom/android/incallui/call/DialerCall;

    .line 1190
    :cond_2
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/incallui/rtt/bindings/RttBindings;->createRttCallScreen(Ljava/lang/String;)Lcom/android/incallui/rtt/protocol/RttCallScreen;

    move-result-object p2

    iput-object p2, p0, Lcom/android/incallui/InCallActivity;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    const v0, 0x7f0901de

    .line 1192
    invoke-interface {p2}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getRttCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    const-string v1, "tag_rtt_call_screen"

    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1193
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, p2, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 1194
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    return p1
.end method

.method private showVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;Lcom/android/incallui/call/DialerCall;)Z
    .locals 4

    const-string v0, "InCallActivity.showVideoCallScreenFragment"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "call is null"

    .line 1219
    invoke-static {v0, p2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1223
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    if-eqz v2, :cond_2

    .line 1224
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getVideoCallScreen()Lcom/android/incallui/video/protocol/VideoCallScreen;

    move-result-object v2

    .line 1225
    invoke-interface {v2}, Lcom/android/incallui/video/protocol/VideoCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "video call fragment exists but arguments do not match"

    .line 1228
    invoke-static {v0, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->hideVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    :cond_2
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v1, "call: %s"

    .line 1234
    invoke-static {v0, v1, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/incallui/videotech/VideoTech;->shouldUseSurfaceView()Z

    move-result p2

    .line 1237
    invoke-static {v0, p2}, Lcom/android/incallui/video/bindings/VideoBindings;->createVideoCallScreen(Ljava/lang/String;Z)Lcom/android/incallui/video/protocol/VideoCallScreen;

    move-result-object p2

    const v0, 0x7f0901de

    .line 1239
    invoke-interface {p2}, Lcom/android/incallui/video/protocol/VideoCallScreen;->getVideoCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    const-string v1, "tag_video_call_screen"

    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1241
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, p2, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    .line 1242
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    return v2
.end method


# virtual methods
.method public dismissKeyguard(Z)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->dismissKeyguard(Z)V

    return-void
.end method

.method public dismissPendingDialogs()V
    .locals 4

    .line 705
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isVisible:Z

    const-string v1, "InCallActivity.dismissPendingDialogs"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, ""

    .line 706
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->dismissPendingDialogs()V

    .line 708
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getAnswerScreen()Lcom/android/incallui/answer/protocol/AnswerScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v0}, Lcom/android/incallui/answer/protocol/AnswerScreen;->dismissPendingDialogs()V

    .line 712
    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->needDismissPendingDialogs:Z

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "defer actions since activity is not visible"

    .line 716
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->needDismissPendingDialogs:Z

    .line 720
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1291
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->touchDownWhenPseudoScreenOff:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 1293
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->touchDownWhenPseudoScreenOff:Z

    :cond_0
    return v2

    .line 1298
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getPseudoScreenState()Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->isOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 1300
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->touchDownWhenPseudoScreenOff:Z

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "InCallActivity.dispatchTouchEvent"

    const-string v1, "touchDownWhenPseudoScreenOff"

    .line 1301
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2

    .line 1305
    :cond_3
    invoke-super {p0, p1}, Lcom/android/incallui/TransactionSafeFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableInCallOrientationEventListener(Z)V
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->enableInCallOrientationEventListener(Z)V

    return-void
.end method

.method public finish()V
    .locals 16

    move-object/from16 v0, p0

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->shouldCloseActivityOnFinish()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 261
    invoke-super/range {p0 .. p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->finishAndRemoveTask()V

    .line 262
    iget-object v1, v0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivityCommon;->dismissPendingDialogs()V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/incall/impl/InCallFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/incall/impl/InCallFragment;

    iget-object v1, v1, Lcom/android/incallui/incall/impl/InCallFragment;->mDialerCall:Lcom/android/incallui/call/DialerCall;

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Lcom/android/incallui/call/DialerCall;->getGoHome()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 271
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getDisconnectCallNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/incallui/InCallActivity;->number:Ljava/lang/String;

    .line 274
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_redial_call_time_enbale"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 277
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getDisconnectCause()I

    move-result v5

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disconnectCause = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "InCallActivity.finish"

    invoke-static {v8, v6, v7}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "phone"

    .line 279
    invoke-virtual {v0, v6}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const/4 v7, 0x2

    .line 281
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 282
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    .line 285
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallActivity;->isLockScreenOn()Z

    move-result v6

    const/high16 v9, 0x10200000

    const-string v10, "android.intent.category.HOME"

    const/4 v11, 0x0

    const-string v12, "android.intent.action.MAIN"

    const-string v13, "com.android.dialpad.finish"

    const-string v14, "com.android.dialer"

    if-eqz v6, :cond_3

    const-string v2, "InCallActivity.finish : "

    const-string v3, "isLockScreenOn"

    .line 286
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-boolean v2, v0, Lcom/android/incallui/InCallActivity;->isDialer:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    invoke-virtual {v1, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_3
    const-string v6, "recall"

    .line 303
    invoke-virtual {v0, v6, v2}, Lcom/android/incallui/InCallActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 304
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v9, "times"

    const/16 v11, 0x14

    .line 305
    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 306
    invoke-interface {v15, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez v2, :cond_4

    const/4 v15, 0x0

    new-array v11, v15, [Ljava/lang/Object;

    const-string v15, "time = 0"

    .line 309
    invoke-static {v8, v15, v11}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const/16 v15, 0x14

    .line 312
    invoke-interface {v11, v9, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    if-nez v3, :cond_6

    const/4 v3, 0x1

    if-ne v4, v3, :cond_6

    const/16 v4, 0x9

    if-eq v5, v4, :cond_5

    if-ne v5, v3, :cond_6

    :cond_5
    if-nez v7, :cond_6

    if-lez v2, :cond_8

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time != 0, time =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/Auto_call_Activity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    iget-object v2, v0, Lcom/android/incallui/InCallActivity;->number:Ljava/lang/String;

    const-string v3, "number"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 327
    :cond_6
    iget-boolean v2, v0, Lcom/android/incallui/InCallActivity;->isDialer:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 328
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    .line 330
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 336
    invoke-virtual {v1, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {v1, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x14

    .line 342
    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    :goto_1
    return-void
.end method

.method getAnswerScreen()Lcom/android/incallui/answer/protocol/AnswerScreen;
    .locals 2

    .line 1261
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_answer_screen"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/answer/protocol/AnswerScreen;

    return-object v0
.end method

.method public getCallCardFragmentVisible()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

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

.method public getDialpadContainerId()I
    .locals 1

    .line 753
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 755
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getAnswerAndDialpadContainerResourceId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDialpadFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 747
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 749
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901de

    .line 589
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;
    .locals 2

    .line 1265
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_in_call_screen"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/incall/protocol/InCallScreen;

    return-object v0
.end method

.method getVideoCallScreen()Lcom/android/incallui/video/protocol/VideoCallScreen;
    .locals 2

    .line 1269
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_video_call_screen"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/video/protocol/VideoCallScreen;

    return-object v0
.end method

.method public hideMainInCallFragment()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivity.hideMainInCallFragment"

    const-string v2, ""

    .line 816
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    if-eqz v0, :cond_1

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 819
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideInCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    .line 820
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->hideVideoCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z

    .line 821
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 822
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method public hideOrShowRttInterface()V
    .locals 10

    const-string v0, "InCallActivity"

    const-string v1, "hideOrShowRttInterface"

    .line 828
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 831
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0901de

    .line 832
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 834
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v4

    if-nez v4, :cond_0

    .line 836
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/call/CallList;->getBackgroundCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v4

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 838
    instance-of v7, v2, Lcom/android/incallui/rtt/impl/RttChatFragment;

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 839
    iget-object v7, p0, Lcom/android/incallui/InCallActivity;->inCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    const-string v8, "tag_in_call_screen"

    if-eqz v7, :cond_3

    .line 840
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InCallScreen is not null, hide RttChatFragment,add InCallFragment,didShowInCallScreen = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-boolean v7, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-eqz v7, :cond_1

    .line 842
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->inCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-interface {v2}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v8}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :goto_0
    if-eqz v4, :cond_2

    const-string v1, "InCallScreen updateMenuBar"

    .line 847
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->inCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-virtual {v1, v4}, Lcom/android/incallui/incall/impl/InCallFragment;->updataMenu(Lcom/android/incallui/call/DialerCall;)V

    .line 850
    :cond_2
    iput-boolean v6, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidorShowRttinterface dialerCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {v4, v5}, Lcom/android/incallui/call/DialerCall;->setRttUIVisible(Z)V

    goto :goto_1

    :cond_3
    const-string v7, "InCallScreen is null and hide RttChatFragment,add InCallFragment"

    .line 856
    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/incall/bindings/InCallBindings;->createInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v8}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 858
    iput-boolean v6, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    .line 859
    invoke-virtual {v4, v5}, Lcom/android/incallui/call/DialerCall;->setRttUIVisible(Z)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 863
    instance-of v3, v2, Lcom/android/incallui/incall/impl/InCallFragment;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 864
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 865
    invoke-virtual {v3}, Lcom/android/incallui/call/DialerCall;->isActiveRttCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 866
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    if-eqz v4, :cond_5

    const-string v4, "Remove InCallFragment,show RttFragment"

    .line 867
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->rttCallScreen:Lcom/android/incallui/rtt/protocol/RttCallScreen;

    invoke-interface {v2}, Lcom/android/incallui/rtt/protocol/RttCallScreen;->getRttCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 869
    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidorShowRttinterface call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {v3, v6}, Lcom/android/incallui/call/DialerCall;->setRttUIVisible(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method public isInCallScreenAnimating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLockScreenOn()Z
    .locals 1

    const-string v0, "keyguard"

    .line 1332
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1333
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isVisible:Z

    return v0
.end method

.method public maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/disconnectdialog/DisconnectMessage;)V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/disconnectdialog/DisconnectMessage;)V

    return-void
.end method

.method public maybeShowRttEndDialogOnDisconnect()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->maybeShowRttEndDialogOnDisconnect()V

    return-void
.end method

.method public maybeShowRttFailDialogOnDisconnect()V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->maybeShowRttFailDialogOnDisconnect()V

    return-void
.end method

.method public maybeShowRttIncomingCall(Ljava/lang/String;)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->maybeShowRttIncomingCall(Ljava/lang/String;)V

    return-void
.end method

.method public newAnswerScreenDelegate(Lcom/android/incallui/answer/protocol/AnswerScreen;)Lcom/android/incallui/answer/protocol/AnswerScreenDelegate;
    .locals 3

    .line 760
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "InCallActivity.onPrimaryCallStateChanged"

    const-string v1, "call doesn\'t exist, using stub"

    .line 770
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    new-instance p1, Lcom/android/incallui/AnswerScreenPresenterStub;

    invoke-direct {p1}, Lcom/android/incallui/AnswerScreenPresenterStub;-><init>()V

    return-object p1

    .line 773
    :cond_0
    new-instance v0, Lcom/android/incallui/AnswerScreenPresenter;

    .line 774
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/incallui/answer/protocol/AnswerScreen;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/AnswerScreenPresenter;-><init>(Landroid/content/Context;Lcom/android/incallui/answer/protocol/AnswerScreen;Lcom/android/incallui/call/DialerCall;)V

    return-object v0
.end method

.method public newInCallButtonUiDelegate()Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;
    .locals 1

    .line 785
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newInCallScreenDelegate()Lcom/android/incallui/incall/protocol/InCallScreenDelegate;
    .locals 1

    .line 780
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newRttCallScreenDelegate(Lcom/android/incallui/rtt/protocol/RttCallScreen;)Lcom/android/incallui/rtt/protocol/RttCallScreenDelegate;
    .locals 0

    .line 1310
    new-instance p1, Lcom/android/incallui/RttCallPresenter;

    invoke-direct {p1}, Lcom/android/incallui/RttCallPresenter;-><init>()V

    return-object p1
.end method

.method public newVideoCallScreenDelegate(Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;
    .locals 2

    .line 790
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreen;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/videotech/VideoTech;->shouldUseSurfaceView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {v0}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/videotech/VideoTech;->createVideoCallScreenDelegate(Landroid/content/Context;Lcom/android/incallui/video/protocol/VideoCallScreen;)Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    move-result-object p1

    return-object p1

    .line 794
    :cond_0
    new-instance p1, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {p1}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    return-object p1
.end method

.method public notifyDialpadVisibilityState(Z)V
    .locals 2

    .line 594
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallScreen;->onInCallShowDialpad(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "InCallActvity.showDialpadFragment"

    const-string v1, "in call screen is null"

    .line 597
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivity.onBackPressed"

    const-string v3, ""

    .line 460
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivityCommon;->onBackPressed(Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "dev.tct.ptcrb"

    .line 464
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    invoke-super {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivity.onCreate"

    const-string v3, ""

    .line 162
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-super {p0, p1}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v1, "did_show_answer_screen"

    .line 165
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    const-string v1, "did_show_in_call_screen"

    .line 166
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    const-string v1, "did_show_video_call_screen"

    .line 167
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    const-string v1, "did_show_rtt_call_screen"

    .line 168
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isDialpad"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isDialer:Z

    .line 172
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090258

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->pseudoBlackScreenOverlay:Landroid/view/View;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivity.onDestroy"

    const-string v2, ""

    .line 233
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallLowBatteryListener;->onDestroyInCallActivity()V

    .line 235
    invoke-super {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->onDestroy()V

    const-wide/16 v0, 0x0

    .line 238
    iput-wide v0, p0, Lcom/android/incallui/InCallActivity;->leftTime:J

    return-void
.end method

.method public onForegroundCallChanged(Lcom/android/incallui/call/DialerCall;)V
    .locals 4

    .line 606
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->updateTaskDescription()V

    .line 607
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    const/4 v1, 0x0

    const-string v2, "InCallActivity.onForegroundCallChanged"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 608
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    .line 609
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "rejecting incoming call, not updating window background color"

    .line 610
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "resetting background color"

    .line 615
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->showWifiFailedDialog(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    const-string v0, "InCallActivity.onInternationalCallOnWifi"

    .line 811
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->showInternationalCallOnWifiDialog(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 535
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901de

    .line 536
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 537
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/incall/impl/InCallFragment;

    if-eqz v1, :cond_0

    .line 538
    move-object v1, v0

    check-cast v1, Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-virtual {v1, p1, p2, p0}, Lcom/android/incallui/incall/impl/InCallFragment;->onKeyDown(ILandroid/view/KeyEvent;Landroid/content/Context;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 545
    instance-of v1, v0, Lcom/android/incallui/answer/impl/AnswerFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    check-cast v0, Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/incallui/answer/impl/AnswerFragment;->onKeyDown(ILandroid/view/KeyEvent;Landroid/content/Context;)Z

    .line 553
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 554
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isInCallAc:Z

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivityCommon;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "InCallActivity"

    const-string v1, "InCallActivity.onKeyUp"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901de

    .line 495
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    instance-of v1, v0, Lcom/android/incallui/rtt/impl/RttChatFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    move-object v1, v0

    check-cast v1, Lcom/android/incallui/rtt/impl/RttChatFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/rtt/impl/RttChatFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 502
    instance-of v1, v0, Lcom/android/incallui/incall/impl/InCallFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isInCallAc:Z

    if-eqz v1, :cond_1

    .line 503
    move-object v1, v0

    check-cast v1, Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/incall/impl/InCallFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 507
    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isInCallAc:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 508
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isInCallAc:Z

    :cond_2
    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 513
    instance-of v4, v0, Lcom/android/incallui/answer/impl/AnswerFragment;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne p1, v1, :cond_3

    .line 516
    check-cast v0, Lcom/android/incallui/answer/impl/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/answer/impl/AnswerFragment;->showInCall()V

    :cond_3
    if-ne p1, v1, :cond_4

    .line 524
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->isBackKey:Z

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivityCommon;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-super {p0, p1, p2}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivity.onNewIntent"

    const-string v3, ""

    .line 442
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/incallui/InCallActivityCommon;->onNewIntent(Landroid/content/Intent;Z)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Restarting InCallActivity to force screen on."

    .line 451
    invoke-static {v2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->recreate()V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v1, p1, v0}, Lcom/android/incallui/InCallActivityCommon;->onNewIntent(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InCallActivity.onOptionsItemSelected"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 478
    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivity.onPause"

    const-string v2, ""

    .line 215
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-super {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->onPause()V

    .line 218
    invoke-static {}, Lcom/android/incallui/BottomSheetHelper;->getInstance()Lcom/android/incallui/BottomSheetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/BottomSheetHelper;->dismissBottomSheet()V

    .line 219
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getPseudoScreenState()Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->removeListener(Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;)V

    return-void
.end method

.method public onPrimaryCallStateChanged()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivity.onPrimaryCallStateChanged"

    const-string v2, ""

    .line 798
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->showMainInCallFragment()V

    return-void
.end method

.method public onPseudoScreenStateChanged(Z)V
    .locals 4

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "InCallActivity.onPseudoScreenStateChanged"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->pseudoBlackScreenOverlay:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InCallActivity.onResume"

    const-string v2, ""

    .line 204
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-super {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onResume()V

    .line 206
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->onResume()V

    .line 207
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getPseudoScreenState()Lcom/android/incallui/answerproximitysensor/PseudoScreenState;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p0}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->addListener(Lcom/android/incallui/answerproximitysensor/PseudoScreenState$StateChangedListener;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/incallui/answerproximitysensor/PseudoScreenState;->isOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->onPseudoScreenStateChanged(Z)V

    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onResumeFragments()V

    .line 155
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->needDismissPendingDialogs:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivity.onSaveInstanceState"

    const-string v3, ""

    .line 178
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallActivityCommon;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowAnswerScreen:Z

    const-string v2, "did_show_answer_screen"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    const-string v2, "did_show_in_call_screen"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowVideoCallScreen:Z

    const-string v2, "did_show_video_call_screen"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowRttCallScreen:Z

    const-string v2, "did_show_rtt_call_screen"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    invoke-super {p0, p1}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isVisible:Z

    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivity.onStart"

    const-string v3, ""

    .line 190
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-super {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onStart()V

    const/4 v1, 0x1

    .line 192
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isVisible:Z

    .line 193
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->showMainInCallFragment()V

    .line 194
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivityCommon;->onStart()V

    .line 195
    invoke-static {p0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0, v0, v0}, Lcom/android/incallui/InCallActivity;->showDialpadFragment(ZZ)Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InCallActivity.onStop"

    const-string v3, ""

    .line 224
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-super {p0}, Lcom/android/incallui/TransactionSafeFragmentActivity;->onStop()V

    .line 226
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivityCommon;->onStop()V

    .line 227
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isVisible:Z

    .line 228
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivityCommon;->dismissPendingDialogs()V

    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->showWifiToLteHandoverToast(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivityCommon;->setExcludeFromRecents(Z)V

    return-void
.end method

.method public showConferenceFragment(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 567
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/incallui/ManageConferenceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public showDialogForRttRequest(Lcom/android/incallui/call/DialerCall;I)V
    .locals 2

    const-string v0, "InCallActivity.showDialogForRttRequest"

    const-string v1, ""

    .line 1325
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    new-instance v0, Lcom/android/incallui/RttRequestDialog;

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lcom/android/incallui/RttRequestDialog;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->rttRequestDialog:Lcom/android/incallui/RttRequestDialog;

    .line 1327
    invoke-virtual {v0}, Lcom/android/incallui/RttRequestDialog;->show()V

    return-void
.end method

.method public showDialpadFragment(ZZ)Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivityCommon;->showDialpadFragment(ZZ)Z

    move-result p2

    .line 573
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getActiveInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    if-eqz p2, :cond_1

    .line 581
    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallScreen;->onInCallScreenDialpadVisibilityChange(Z)V

    .line 583
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->notifyDialpadVisibilityState(Z)V

    return p2
.end method

.method public showInCallScreenFragment(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 3

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInCallScreenFragment  didShowInCallScreen ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1144
    :cond_0
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/call/CallList;->getFirstCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->dialerCall:Lcom/android/incallui/call/DialerCall;

    .line 1145
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->inCallScreen:Lcom/android/incallui/incall/protocol/InCallScreen;

    const-string v1, "tag_in_call_screen"

    const v2, 0x7f0901de

    if-eqz v0, :cond_1

    .line 1146
    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 1148
    :cond_1
    invoke-static {}, Lcom/android/incallui/incall/bindings/InCallBindings;->createInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/incall/protocol/InCallScreen;->getInCallScreenFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1153
    :goto_0
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/ScreenEvent$Type;->INCALL:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {p1, v0, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 1154
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->didShowInCallScreen:Z

    return p1
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->common:Lcom/android/incallui/InCallActivityCommon;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivityCommon;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateWindowBackgroundColor(F)V
    .locals 7

    .line 621
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getThemeColorManager()Lcom/android/incallui/ThemeColorManager;

    move-result-object v0

    .line 627
    invoke-static {p0}, Lcom/android/dialer/compat/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/android/incallui/ThemeColorManager;->getBackgroundColorSolid()I

    move-result v1

    .line 629
    invoke-virtual {v0}, Lcom/android/incallui/ThemeColorManager;->getBackgroundColorSolid()I

    move-result v2

    .line 630
    invoke-virtual {v0}, Lcom/android/incallui/ThemeColorManager;->getBackgroundColorSolid()I

    move-result v0

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/ThemeColorManager;->getBackgroundColorTop()I

    move-result v1

    .line 633
    invoke-virtual {v0}, Lcom/android/incallui/ThemeColorManager;->getBackgroundColorMiddle()I

    move-result v2

    .line 634
    invoke-virtual {v0}, Lcom/android/incallui/ThemeColorManager;->getBackgroundColorBottom()I

    move-result v0

    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 638
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x66000000

    .line 639
    invoke-static {v1, v3, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 640
    invoke-static {v2, v3, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 641
    invoke-static {v0, v3, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 645
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    new-array p1, p1, [I

    aput v1, p1, v4

    aput v2, p1, v5

    aput v0, p1, v3

    .line 646
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawableColors:[I

    .line 647
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawableColors:[I

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    .line 650
    :cond_2
    iget-object p1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawableColors:[I

    aget v6, p1, v4

    if-eq v6, v1, :cond_3

    .line 651
    aput v1, p1, v4

    move v4, v5

    .line 654
    :cond_3
    iget-object p1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawableColors:[I

    aget v1, p1, v5

    if-eq v1, v2, :cond_4

    .line 655
    aput v2, p1, v5

    move v4, v5

    .line 658
    :cond_4
    iget-object p1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawableColors:[I

    aget v1, p1, v3

    if-eq v1, v0, :cond_5

    .line 659
    aput v0, p1, v3

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    if-eqz v5, :cond_6

    .line 663
    iget-object p1, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawableColors:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 668
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->backgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method
