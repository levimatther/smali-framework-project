.class public Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoiceMailWelcomeActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;


# static fields
.field private static final IS_ENABLED_KEY:Ljava/lang/String; = "is_enabled"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private mContext:Landroid/content/Context;

.field private menuBar:Landroid/widget/MenuBar;

.field private preSyncVoicemailStatusCheckExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 44
    const-class v0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private activeFlow()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "activeFlow"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->get(Landroid/content/Context;)Lcom/android/dialer/common/concurrent/DialerExecutorComponent;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->dialerExecutorFactory()Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/app/voicemail/error/VoicemailStatusWorker;

    invoke-direct {v2}, Lcom/android/dialer/app/voicemail/error/VoicemailStatusWorker;-><init>()V

    const-string v3, "fetchVoicemailStatus"

    .line 119
    invoke-interface {v0, v1, v3, v2}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/voicemail/impl/-$$Lambda$VoiceMailWelcomeActivity$Pg3vfnBi2u_yRKzqMAD79BhILJU;

    invoke-direct {v1, p0}, Lcom/android/voicemail/impl/-$$Lambda$VoiceMailWelcomeActivity$Pg3vfnBi2u_yRKzqMAD79BhILJU;-><init>(Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;)V

    .line 123
    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->preSyncVoicemailStatusCheckExecutor:Lcom/android/dialer/common/concurrent/DialerExecutor;

    .line 125
    invoke-interface {v0, p0}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method

.method private isPreActive(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;Ljava/util/List;)Z
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

    .line 187
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

    .line 188
    invoke-virtual {v0, p0}, Lcom/android/dialer/app/voicemail/error/VoicemailStatus;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;->isSyncBlockingError(Lcom/android/dialer/app/voicemail/error/VoicemailStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auto-sync blocked due to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$Pg3vfnBi2u_yRKzqMAD79BhILJU(Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->onPreSyncVoicemailStatusChecked(Ljava/util/List;)V

    return-void
.end method

.method private nutAction(Z)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nutAction\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 205
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/voicemail/impl/VoicemailAddPinActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/voicemail/VVMMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private onPreSyncVoicemailStatusChecked(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/app/voicemail/error/VoicemailStatus;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "phoneAccountHandle is null"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    new-instance v1, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;

    invoke-direct {v1}, Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->isPreActive(Lcom/android/dialer/app/voicemail/error/VoicemailErrorMessageCreator;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/sync/VvmAccountManager;->isAccountActivated(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "onPreSyncVoicemailStatusCheckedvoicemail is active"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->isNut()Z

    move-result p1

    .line 143
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->nutAction(Z)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "Do active flow"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->toActiveVoicemail()V

    goto :goto_0

    .line 149
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/voicemail/impl/ErrorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "onPreSyncVoicemailStatusChecked:isPreActive:false"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private toActiveVoicemail()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 170
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v1, p0, v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string v2, "is_enabled"

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v1, v2, v3}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/android/voicemail/impl/ActivationTask;->registerTaskListener(Lcom/android/voicemail/VoiceMailCommon$TaskResultListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/voicemail/impl/ActivationTask;->start(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onClickCSK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    .line 66
    invoke-static {}, Lcom/android/voicemail/VVMMainActivity;->shutdown()V

    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickRSK"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->activeFlow()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iput-object p0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    .line 54
    sget-object p1, Lcom/android/voicemail/VVMMainActivity;->VoicemailActivities:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c00b2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110300

    const v1, 0x7f110525

    const v2, 0x7f110303

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 60
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 61
    new-instance p1, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-direct {p1, p0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 105
    invoke-static {}, Lcom/android/voicemail/VVMMainActivity;->shutdown()V

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResult"

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "rc"

    .line 226
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 227
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "activation success"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->isNut()Z

    move-result p1

    .line 230
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->nutAction(Z)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->TAG:Ljava/lang/String;

    const-string v0, "activation fail"

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/voicemail/impl/VoiceMailWelcomeActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/voicemail/impl/ErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
