.class public Lcom/android/voicemail/VoiceMailPlayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoiceMailPlayActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;
.implements Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;
.implements Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;


# static fields
.field public static final VOICEMAILKEY:Ljava/lang/String; = "voicemail_key"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

.field private menuBar:Landroid/widget/MenuBar;

.field private myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "VoiceMailPlay"

    .line 34
    iput-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClickCSK()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->startStopAction()V

    const/4 v0, 0x1

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->speakerAction()V

    const/4 v0, 0x1

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->deleteAction()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/voicemail/VoiceMailPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    sget-object p1, Lcom/android/voicemail/VoiceMailCommon;->VOICE_MAIL_QUEUE:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    if-eqz p1, :cond_1

    const p1, 0x7f0c00b5

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VoiceMailPlayActivity;->setContentView(I)V

    const p1, 0x7f090303

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VoiceMailPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f090304

    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f090358

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VoiceMailPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    iget-object v1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f090113

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VoiceMailPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090356

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VoiceMailPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iput-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    .line 60
    iget-object v1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {p1, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setViewHolder(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 61
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setActivityContext(Landroid/app/Activity;)V

    .line 62
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setPlayStatusListener(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;)V

    .line 63
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {p1, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->setSpeakerStatusListener(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;)V

    .line 64
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->myViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {p1, v1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->bindPlaybackActionButtons(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/voicemail/VoiceMailPlayActivity;->setVolumeControlStream(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0c00b6

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/voicemail/VoiceMailPlayActivity;->setContentView(I)V

    const-string p1, "VoiceMailPlay"

    const-string v0, "myViewHolder is null"

    .line 68
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/VoiceMailPlayActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110476

    const v1, 0x7f1103ac

    const v2, 0x7f1102fc

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 72
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->speakerAction()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->stopAndResetPlayback()V

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

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

.method protected onPause()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 160
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/voicemail/VoiceMailPlayActivity;->playStatus(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->startStopAction()V

    :cond_0
    return-void
.end method

.method public playStatus(Z)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f110475

    goto :goto_0

    :cond_1
    const v0, 0x7f110476

    :goto_0
    const/4 v1, 0x0

    const v2, 0x7f1102fc

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f11048b

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f1103ac

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public speakerStatus(Z)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->mVoicemailPlaybackLayout:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f11048b

    goto :goto_0

    :cond_1
    const v0, 0x7f1103ac

    :goto_0
    const/4 v1, 0x0

    const v2, 0x7f1102fc

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f110475

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_1

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/android/voicemail/VoiceMailPlayActivity;->menuBar:Landroid/widget/MenuBar;

    const v3, 0x7f110476

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method
