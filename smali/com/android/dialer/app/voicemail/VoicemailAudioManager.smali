.class public final Lcom/android/dialer/app/voicemail/VoicemailAudioManager;
.super Ljava/lang/Object;
.source "VoicemailAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;


# static fields
.field public static final PLAYBACK_STREAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VoicemailAudioManager"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothScoEnabled:Z

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

.field private mWasSpeakerOn:Z

.field private mWiredHeadsetManager:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    .line 46
    new-instance p2, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-direct {p2, p1}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    .line 47
    invoke-virtual {p2, p0}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->setListener(Lcom/android/dialer/app/voicemail/WiredHeadsetManager$Listener;)V

    .line 49
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->getInitialAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Initial audioState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "VoicemailAudioManager.VoicemailAudioManager"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyBluetoothScoState()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mBluetoothScoEnabled:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 148
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :goto_0
    return-void
.end method

.method private calculateSupportedRoutes()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    return v0
.end method

.method private getInitialAudioState()Landroid/telecom/CallAudioState;
    .locals 4

    .line 193
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->calculateSupportedRoutes()I

    move-result v0

    const/4 v1, 0x5

    .line 194
    invoke-direct {p0, v1, v0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->selectWiredOrEarpiece(II)I

    move-result v1

    .line 195
    new-instance v2, Landroid/telecom/CallAudioState;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    return-object v2
.end method

.method private hasMediaAudioCapability()Z
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 157
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private selectWiredOrEarpiece(II)I
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    and-int/lit8 p1, p2, 0x5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "VoicemailAudioManager.selectWiredOrEarpiece"

    const-string v0, "One of wired headset or earpiece should always be valid."

    .line 215
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private setSystemAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 227
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changing from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VoicemailAudioManager.setSystemAudioState"

    invoke-static {v2, p1, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 235
    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->turnOnSpeaker(Z)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 237
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 240
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->turnOnSpeaker(Z)V

    .line 242
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->applyBluetoothScoState()V

    :cond_2
    :goto_0
    return-void
.end method

.method private turnOnSpeaker(Z)V
    .locals 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "turning speaker phone on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VoicemailAudioManager.turnOnSpeaker"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method private updateBluetoothScoState(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->hasMediaAudioCapability()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mBluetoothScoEnabled:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mBluetoothScoEnabled:Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "VoicemailAudioManager.updateBluetoothScoState"

    const-string v1, "bluetooth device doesn\'t support media, using SCO instead"

    .line 132
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_1
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mBluetoothScoEnabled:Z

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->applyBluetoothScoState()V

    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->updateBluetoothScoState(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public isWiredHeadsetPluggedIn()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VoicemailAudioManager.onAudioFocusChange"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onAudioFocusChange(Z)V

    return-void
.end method

.method public onWiredHeadsetPluggedInChanged(ZZ)V
    .locals 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wired headset was plugged in changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VoicemailAudioManager.onWiredHeadsetPluggedInChanged"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, p2, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    const/16 p1, 0x8

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    .line 89
    :cond_1
    iget-boolean p2, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mWasSpeakerOn:Z

    if-eqz p2, :cond_2

    move p2, p1

    goto :goto_0

    :cond_2
    move p2, v0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mVoicemailPlaybackPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->setSpeakerphoneOn(Z)V

    .line 100
    new-instance p1, Landroid/telecom/CallAudioState;

    .line 101
    invoke-direct {p0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->calculateSupportedRoutes()I

    move-result v0

    invoke-direct {p1, v1, p2, v0}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->setSystemAudioState(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public registerReceivers()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->registerReceiver()V

    return-void
.end method

.method public requestAudioFocus()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 56
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->updateBluetoothScoState(Z)V

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Could not capture audio focus."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAudioRoute(I)V
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VoicemailAudioManager.setAudioRoute"

    .line 170
    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->selectWiredOrEarpiece(II)I

    move-result p1

    .line 178
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    or-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asking to set to a route that is unsupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 187
    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mWasSpeakerOn:Z

    .line 188
    new-instance v0, Landroid/telecom/CallAudioState;

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 189
    invoke-virtual {v2}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    .line 188
    invoke-direct {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->setSystemAudioState(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->setAudioRoute(I)V

    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailAudioManager;->mWiredHeadsetManager:Lcom/android/dialer/app/voicemail/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/WiredHeadsetManager;->unregisterReceiver()V

    return-void
.end method
