.class public Lcom/android/incallui/AudioRouteSelectorActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AudioRouteSelectorActivity.java"

# interfaces
.implements Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioRouteSelected(I)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public onAudioRouteSelectorDismiss()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/incallui/AudioRouteSelectorActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/android/incallui/audiomode/AudioModeProvider;->getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/incallui/audiomode/AudioModeProvider;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->newInstance(Landroid/telecom/CallAudioState;)Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/android/incallui/AudioRouteSelectorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
