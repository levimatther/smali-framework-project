.class public Lcom/android/incallui/call/TelecomAdapter;
.super Ljava/lang/Object;
.source "TelecomAdapter.java"

# interfaces
.implements Lcom/android/incallui/call/InCallServiceListener;


# static fields
.field private static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static sInstance:Lcom/android/incallui/call/TelecomAdapter;


# instance fields
.field private mInCallService:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/call/TelecomAdapter;
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/android/incallui/call/TelecomAdapter;->sInstance:Lcom/android/incallui/call/TelecomAdapter;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/incallui/call/TelecomAdapter;

    invoke-direct {v0}, Lcom/android/incallui/call/TelecomAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/call/TelecomAdapter;->sInstance:Lcom/android/incallui/call/TelecomAdapter;

    .line 46
    :cond_0
    sget-object v0, Lcom/android/incallui/call/TelecomAdapter;->sInstance:Lcom/android/incallui/call/TelecomAdapter;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 1

    .line 65
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/call/DialerCall;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static setInstanceForTesting(Lcom/android/incallui/call/TelecomAdapter;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/android/incallui/call/TelecomAdapter;->sInstance:Lcom/android/incallui/call/TelecomAdapter;

    return-void
.end method


# virtual methods
.method public addCall()V
    .locals 4

    const-string v0, "TelecomAdapter.addCall"

    .line 117
    iget-object v1, p0, Lcom/android/incallui/call/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "add_call_mode"

    .line 124
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    const-string v2, "Sending the add DialerCall intent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {v0, v2, v3}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Lcom/android/incallui/call/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Activity for adding calls isn\'t found."

    .line 132
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public canAddCall()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/incallui/call/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/telecom/InCallService;->canAddCall()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearInCallService()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/incallui/call/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    return-void
.end method

.method public merge(Ljava/lang/String;)V
    .locals 3

    .line 86
    invoke-direct {p0, p1}, Lcom/android/incallui/call/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Call;

    invoke-virtual {v0, p1}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    .line 92
    invoke-static {}, Lcom/android/incallui/call/DialerCall;->clearRestrictedCount()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {v0}, Landroid/telecom/Call;->mergeConference()V

    .line 97
    invoke-static {}, Lcom/android/incallui/call/DialerCall;->clearRestrictedCount()V

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call not in call list "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TelecomAdapter.merge"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public mute(Z)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/incallui/call/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setMuted(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "TelecomAdapter.mute"

    const-string v1, "mInCallService is null"

    .line 73
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 1

    .line 138
    invoke-direct {p0, p1}, Lcom/android/incallui/call/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    goto :goto_0

    .line 142
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call not in call list "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TelecomAdapter.playDtmfTone"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public postDialContinue(Ljava/lang/String;Z)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Lcom/android/incallui/call/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->postDialContinue(Z)V

    goto :goto_0

    .line 160
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call not in call list "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "TelecomAdapter.postDialContinue"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setAudioRoute(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/incallui/call/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "TelecomAdapter.setAudioRoute"

    const-string v1, "mInCallService is null"

    .line 81
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setInCallService(Landroid/telecom/InCallService;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/incallui/call/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    return-void
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Lcom/android/incallui/call/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call not in call list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TelecomAdapter.stopDtmfTone"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public swap(Ljava/lang/String;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1}, Lcom/android/incallui/call/TelecomAdapter;->getTelecomCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/telecom/Call$Details;->can(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/telecom/Call;->swapConference()V

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call not in call list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TelecomAdapter.swap"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
