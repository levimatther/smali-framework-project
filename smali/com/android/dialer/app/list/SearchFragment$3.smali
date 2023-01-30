.class Lcom/android/dialer/app/list/SearchFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/SearchFragment;->updatePosition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/SearchFragment;

.field final synthetic val$slideUp:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/SearchFragment;Z)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$3;->this$0:Lcom/android/dialer/app/list/SearchFragment;

    iput-boolean p2, p0, Lcom/android/dialer/app/list/SearchFragment$3;->val$slideUp:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 332
    iget-boolean p1, p0, Lcom/android/dialer/app/list/SearchFragment$3;->val$slideUp:Z

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$3;->this$0:Lcom/android/dialer/app/list/SearchFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SearchFragment;->resizeListView()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 325
    iget-boolean p1, p0, Lcom/android/dialer/app/list/SearchFragment$3;->val$slideUp:Z

    if-nez p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$3;->this$0:Lcom/android/dialer/app/list/SearchFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SearchFragment;->resizeListView()V

    :cond_0
    return-void
.end method
