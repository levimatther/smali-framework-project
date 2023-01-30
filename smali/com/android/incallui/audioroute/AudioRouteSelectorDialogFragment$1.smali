.class Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;
.super Ljava/lang/Object;
.source "AudioRouteSelectorDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->initItem(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

.field final synthetic val$itemRoute:I


# direct methods
.method constructor <init>(Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;->this$0:Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    iput p2, p0, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;->val$itemRoute:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;->this$0:Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    invoke-virtual {p1}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;->dismiss()V

    .line 121
    iget-object p1, p0, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;->this$0:Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment;

    const-class v0, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;

    invoke-static {p1, v0}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;

    iget v0, p0, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$1;->val$itemRoute:I

    .line 123
    invoke-interface {p1, v0}, Lcom/android/incallui/audioroute/AudioRouteSelectorDialogFragment$AudioRouteSelectorPresenter;->onAudioRouteSelected(I)V

    return-void
.end method
