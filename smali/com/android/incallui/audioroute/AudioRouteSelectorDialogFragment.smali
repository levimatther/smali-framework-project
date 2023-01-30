.class public Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "AudioRouteSelectorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;
    }
.end annotation


# static fields
.field private static final ARG_AUDIO_STATE:Ljava/lang/String; = "audio_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method private initItem(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 109
    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    and-int/2addr v1, p2

    if-nez v1, :cond_0

    const/16 p3, 0x8

    .line 110
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p3

    if-ne p3, p2, :cond_1

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 116
    :cond_1
    :goto_0
    new-instance p3, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;

    invoke-direct {p3, p0, p2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;-><init>(Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;I)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Landroid/telecom/CallAudioState;)Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;
    .locals 3

    .line 52
    new-instance v0, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "audio_state"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    const-class p1, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->checkParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AudioRouteSelectorDialogFragment.onCreateDialog"

    const/4 v2, 0x0

    .line 67
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0031

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "audio_state"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/telecom/CallAudioState;

    const p3, 0x7f090062

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x2

    .line 80
    invoke-direct {p0, p3, v0, p2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->initItem(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    const p3, 0x7f090065

    .line 85
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 84
    invoke-direct {p0, p3, v0, p2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->initItem(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    const p3, 0x7f090064

    .line 89
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 88
    invoke-direct {p0, p3, v0, p2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->initItem(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    const p3, 0x7f090063

    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, p3, v0, p2}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->initItem(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 102
    const-class p1, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;

    .line 104
    invoke-interface {p1}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;->onAudioRouteSelectorDismiss()V

    return-void
.end method
