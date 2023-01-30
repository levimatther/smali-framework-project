.class public Lcom/android/incallui/video/impl/SpeakerButtonController;
.super Ljava/lang/Object;
.source "SpeakerButtonController.java"

# interfaces
.implements Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private button:Lcom/android/incallui/video/impl/CheckableImageButton;

.field private checkable:Z

.field private contentDescription:Ljava/lang/CharSequence;

.field private icon:I

.field private final inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field private isChecked:Z

.field private isEnabled:Z

.field private final videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;


# direct methods
.method public constructor <init>(Lcom/android/incallui/video/impl/CheckableImageButton;Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0801ff

    .line 41
    iput v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->icon:I

    .line 52
    invoke-static {p2}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    .line 53
    invoke-static {p3}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    iput-object p2, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    .line 54
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/video/impl/CheckableImageButton;

    iput-object p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/incallui/video/impl/CheckableImageButton;Z)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "SpeakerButtonController.onCheckedChanged"

    const/4 v0, 0x0

    .line 109
    invoke-static {p2, v0, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->toggleSpeakerphone()V

    .line 111
    iget-object p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SpeakerButtonController.onClick"

    const/4 v1, 0x0

    .line 116
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    invoke-interface {p1}, Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;->showAudioRouteSelector()V

    .line 118
    iget-object p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->videoCallScreenDelegate:Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;

    invoke-interface {p1}, Lcom/android/incallui/video/protocol/VideoCallScreenDelegate;->resetAutoFullscreenTimer()V

    return-void
.end method

.method public setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SpeakerButtonController.setSupportedAudio"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const v3, 0x7f11028d

    const v4, 0x7f0801ff

    const/16 v5, 0x8

    if-ne v0, v2, :cond_3

    .line 77
    iput-boolean v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->checkable:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->isChecked:Z

    .line 80
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const p1, 0x7f0801aa

    .line 82
    iput p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->icon:I

    const v3, 0x7f110280

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1

    .line 86
    iput v4, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->icon:I

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    const p1, 0x7f0801cd

    .line 90
    iput p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->icon:I

    const v3, 0x7f110284

    goto :goto_0

    :cond_2
    const p1, 0x7f0801e2

    .line 93
    iput p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->icon:I

    const v3, 0x7f110282

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->checkable:Z

    .line 98
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    if-ne p1, v5, :cond_4

    move v1, v0

    :cond_4
    iput-boolean v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->isChecked:Z

    .line 99
    iput v4, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->icon:I

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    invoke-virtual {p1}, Lcom/android/incallui/video/impl/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->contentDescription:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p0}, Lcom/android/incallui/video/impl/SpeakerButtonController;->updateButtonState()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->isEnabled:Z

    return-void
.end method

.method public updateButtonState()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->isEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->isChecked:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->checkable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget-boolean v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->checkable:Z

    if-eqz v1, :cond_1

    move-object v2, p0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/incallui/video/impl/CheckableImageButton;->setOnCheckedChangeListener(Lcom/android/incallui/video/impl/CheckableImageButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->icon:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->button:Lcom/android/incallui/video/impl/CheckableImageButton;

    iget-object v1, p0, Lcom/android/incallui/video/impl/SpeakerButtonController;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/video/impl/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
