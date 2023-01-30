.class Lcom/android/dialer/callcomposer/CallComposerActivity$1;
.super Ljava/lang/Object;
.source "CallComposerActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/callcomposer/CallComposerActivity;->lambda$animateSendAndCall$9(IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

.field final synthetic val$shouldHide:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/callcomposer/CallComposerActivity;Z)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity$1;->this$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iput-boolean p2, p0, Lcom/android/dialer/callcomposer/CallComposerActivity$1;->val$shouldHide:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 672
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity$1;->this$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->access$000(Lcom/android/dialer/callcomposer/CallComposerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity$1;->this$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->access$100(Lcom/android/dialer/callcomposer/CallComposerActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 666
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity$1;->this$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/CallComposerActivity$1;->val$shouldHide:Z

    invoke-static {p1, v0}, Lcom/android/dialer/callcomposer/CallComposerActivity;->access$002(Lcom/android/dialer/callcomposer/CallComposerActivity;Z)Z

    .line 667
    iget-object p1, p0, Lcom/android/dialer/callcomposer/CallComposerActivity$1;->this$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    invoke-static {p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->access$100(Lcom/android/dialer/callcomposer/CallComposerActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
