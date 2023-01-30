.class public Lcom/android/incallui/ReturnToCallController;
.super Ljava/lang/Object;
.source "ReturnToCallController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;
.implements Lcom/android/incallui/call/CallList$Listener;
.implements Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;


# instance fields
.field private audioState:Landroid/telecom/CallAudioState;

.field bubble:Lcom/android/dialershared/bubble/Bubble;

.field private final context:Landroid/content/Context;

.field private final endCall:Landroid/app/PendingIntent;

.field private final showSpeakerSelect:Landroid/app/PendingIntent;

.field private final toggleMute:Landroid/app/PendingIntent;

.field private final toggleSpeaker:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const-string p1, "toggleSpeaker"

    .line 70
    invoke-direct {p0, p1}, Lcom/android/incallui/ReturnToCallController;->createActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ReturnToCallController;->toggleSpeaker:Landroid/app/PendingIntent;

    const-string p1, "showAudioRouteSelector"

    .line 72
    invoke-direct {p0, p1}, Lcom/android/incallui/ReturnToCallController;->createActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ReturnToCallController;->showSpeakerSelect:Landroid/app/PendingIntent;

    const-string p1, "toggleMute"

    .line 73
    invoke-direct {p0, p1}, Lcom/android/incallui/ReturnToCallController;->createActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ReturnToCallController;->toggleMute:Landroid/app/PendingIntent;

    const-string p1, "endCall"

    .line 74
    invoke-direct {p0, p1}, Lcom/android/incallui/ReturnToCallController;->createActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ReturnToCallController;->endCall:Landroid/app/PendingIntent;

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 77
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/call/CallList;->addListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 78
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/audiomode/AudioModeProvider;->addListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ReturnToCallController;->audioState:Landroid/telecom/CallAudioState;

    return-void
.end method

.method private createActionIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/ReturnToCallActionReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object p1, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private generateActions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v1, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->audioState:Landroid/telecom/CallAudioState;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;-><init>(Landroid/telecom/CallAudioState;I)V

    .line 184
    invoke-static {}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->builder()Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    iget v4, v1, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->icon:I

    .line 185
    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    iget v4, v1, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->label:I

    .line 186
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setName(Ljava/lang/CharSequence;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->isChecked:Z

    .line 187
    invoke-virtual {v2, v3}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setChecked(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v2

    iget-boolean v1, v1, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->checkable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ReturnToCallController;->toggleSpeaker:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/ReturnToCallController;->showSpeakerSelect:Landroid/app/PendingIntent;

    .line 188
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->build()Lcom/android/dialershared/bubble/BubbleInfo$Action;

    move-result-object v1

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->builder()Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const v3, 0x7f0801d6

    .line 193
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const v3, 0x7f1102a9

    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setName(Ljava/lang/CharSequence;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->audioState:Landroid/telecom/CallAudioState;

    .line 195
    invoke-virtual {v2}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setChecked(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->toggleMute:Landroid/app/PendingIntent;

    .line 196
    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->build()Lcom/android/dialershared/bubble/BubbleInfo$Action;

    move-result-object v1

    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-static {}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->builder()Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const v3, 0x7f0801ad

    .line 200
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const v3, 0x7f1102a5

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setName(Ljava/lang/CharSequence;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ReturnToCallController;->endCall:Landroid/app/PendingIntent;

    .line 202
    invoke-virtual {v1, v2}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->build()Lcom/android/dialershared/bubble/BubbleInfo$Action;

    move-result-object v1

    .line 198
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private generateBubbleInfo()Lcom/android/dialershared/bubble/BubbleInfo;
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/android/incallui/InCallActivity;->getIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    invoke-static {}, Lcom/android/dialershared/bubble/BubbleInfo;->builder()Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    .line 169
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600be

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setPrimaryColor(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const v4, 0x7f080190

    .line 170
    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setPrimaryIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    .line 172
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070227

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 171
    invoke-virtual {v2, v3}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setStartingYPosition(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    .line 173
    invoke-static {v3, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setPrimaryIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    .line 174
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallController;->generateActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setActions(Ljava/util/List;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->build()Lcom/android/dialershared/bubble/BubbleInfo;

    move-result-object v0

    return-object v0
.end method

.method private hide()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/android/incallui/ReturnToCallController;->bubble:Lcom/android/dialershared/bubble/Bubble;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble;->hide()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReturnToCallController.hide"

    const-string v2, "hide() called without calling show()"

    .line 103
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 64
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    const-string v0, "enable_return_to_call_bubble"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private show()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/incallui/ReturnToCallController;->bubble:Lcom/android/dialershared/bubble/Bubble;

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallController;->startNewBubble()Lcom/android/dialershared/bubble/Bubble;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ReturnToCallController;->bubble:Lcom/android/dialershared/bubble/Bubble;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble;->show()V

    :goto_0
    return-void
.end method

.method private startNewBubble()Lcom/android/dialershared/bubble/Bubble;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialershared/bubble/Bubble;->canShowBubbles(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReturnToCallController.startNewBubble"

    const-string v2, "can\'t show bubble, no permission"

    .line 117
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallController;->generateBubbleInfo()Lcom/android/dialershared/bubble/BubbleInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialershared/bubble/Bubble;->createBubble(Landroid/content/Context;Lcom/android/dialershared/bubble/BubbleInfo;)Lcom/android/dialershared/bubble/Bubble;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/android/dialershared/bubble/Bubble;->show()V

    return-object v0
.end method


# virtual methods
.method public onAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1

    .line 159
    iput-object p1, p0, Lcom/android/incallui/ReturnToCallController;->audioState:Landroid/telecom/CallAudioState;

    .line 160
    iget-object p1, p0, Lcom/android/incallui/ReturnToCallController;->bubble:Lcom/android/dialershared/bubble/Bubble;

    if-eqz p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallController;->generateActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialershared/bubble/Bubble;->updateActions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/call/CallList;)V
    .locals 0

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 139
    iget-object p1, p0, Lcom/android/incallui/ReturnToCallController;->bubble:Lcom/android/dialershared/bubble/Bubble;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/incallui/ReturnToCallController;->bubble:Lcom/android/dialershared/bubble/Bubble;

    iget-object v0, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    const v1, 0x7f11027b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialershared/bubble/Bubble;->showText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/telecom/TelecomUtil;->isInCall(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallController;->hide()V

    :cond_1
    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onUiShowing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallController;->hide()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/ReturnToCallController;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/telecom/TelecomUtil;->isInCall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/android/incallui/ReturnToCallController;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public tearDown()V
    .locals 1

    .line 83
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z

    .line 84
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/call/CallList;->removeListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 85
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/audiomode/AudioModeProvider;->removeListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V

    return-void
.end method
