.class public Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;
.super Lcom/android/dialer/app/calllog/CallLogFragment;
.source "VisualVoicemailCallLogFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private mVoicemailErrorManager:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

.field private mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

.field private final mVoicemailStatusObserver:Landroid/database/ContentObserver;

.field private preSyncVoicemailStatusCheckExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private syncVoicemailDoneReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 72
    invoke-direct {p0, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;-><init>(I)V

    .line 63
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    .line 247
    new-instance v0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment$1;-><init>(Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->syncVoicemailDoneReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic lambda$Bw1WCCfHMqR6CvUnY0aYMc_0TKc(Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->onPreSyncVoicemailStatusChecked(Ljava/util/List;)V

    return-void
.end method

.method private onPreSyncVoicemailStatusChecked(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/voicemail/error/VoicemailStatus;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;

    invoke-direct {v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->shouldAutoSync(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.provider.action.SYNC_VOICEMAIL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 0

    .line 180
    invoke-super {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->fetchCalls()V

    return-void
.end method

.method protected getVoicemailPlaybackPresenter()Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 83
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->getInstance(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    .line 85
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasReadVoicemailPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "read voicemail permission unavailable."

    const-string v4, "VisualVoicemailCallLogFragment.onActivityCreated"

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasAddVoicemailPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    .line 89
    invoke-virtual {v0, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v4, v3, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_0
    invoke-super {p0, p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->get(Landroid/content/Context;)Lcom/android/dialer/common/concurrent/DialerExecutorComponent;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->dialerExecutorFactory()Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v5, Lcom/android/dialer/app/voicemail/error/VoicemailStatusWorker;

    invoke-direct {v5}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusWorker;-><init>()V

    const-string v6, "fetchVoicemailStatus"

    .line 102
    invoke-interface {p1, v0, v6, v5}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailCallLogFragment$Bw1WCCfHMqR6CvUnY0aYMc_0TKc;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailCallLogFragment$Bw1WCCfHMqR6CvUnY0aYMc_0TKc;-><init>(Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;)V

    .line 106
    invoke-interface {p1, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->preSyncVoicemailStatusCheckExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;

    .line 110
    new-instance p1, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    .line 111
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getAdapter()Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/app/calllog/CallLogAdapter;->getAlertManager()Lcom/android/dialer/app/calllog/CallLogAlertManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mModalAlertManager:Lcom/android/dialer/app/calllog/CallLogModalAlertManager;

    invoke-direct {p1, v0, v5, v6}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogAlertManager;Lcom/android/dialer/app/calllog/CallLogModalAlertManager;)V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailErrorManager:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasReadVoicemailPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasAddVoicemailPermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailErrorManager:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    .line 120
    invoke-virtual {v2}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    .line 117
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 122
    invoke-static {v4, v3, p1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DELTA_SYNC_VOICEMAIL_DONE"

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->syncVoicemailDoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0044

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->setupView(Landroid/view/View;)V

    .line 138
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 140
    iget-object p2, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailErrorManager:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    .line 164
    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailErrorManager:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->onDestroy()V

    .line 167
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    invoke-super {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onDestroy()V

    return-void
.end method

.method public onNotVisible()V
    .locals 3

    const-string v0, "VisualVoicemailCallLogFragment.onNotVisible"

    .line 227
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 228
    invoke-super {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onNotVisible()V

    .line 229
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clearing all new voicemails"

    .line 233
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->markAllNewVoicemailsAsOld(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailErrorManager:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->onPause()V

    .line 157
    invoke-super {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onPause()V

    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.SYNC_DELTA_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/voicemail/impl/sync/OmtpVvmDeltaSyncReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailErrorManager:Lcom/android/dialer/app/voicemail/VoicemailErrorManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailErrorManager;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    iget-object v0, p0, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onVisible()V
    .locals 2

    const-string v0, "VisualVoicemailCallLogFragment.onVisible"

    .line 186
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 187
    invoke-super {p0}, Lcom/android/dialer/app/calllog/CallLogFragment;->onVisible()V

    .line 189
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.SYNC_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TAB_VIEWED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method

.method shouldAutoSync(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/voicemail/error/VoicemailStatus;",
            ">;)Z"
        }
    .end annotation

    .line 212
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;

    .line 213
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/VisualVoicemailCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;->isSyncBlockingError(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "auto-sync blocked due to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "VisualVoicemailCallLogFragment.shouldAutoSync"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
