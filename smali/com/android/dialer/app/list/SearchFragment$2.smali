.class Lcom/android/dialer/app/list/SearchFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/SearchFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/SearchFragment;

.field final synthetic val$oldLayerType:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/SearchFragment;Landroid/view/View;I)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$2;->this$0:Lcom/android/dialer/app/list/SearchFragment;

    iput-object p2, p0, Lcom/android/dialer/app/list/SearchFragment$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/dialer/app/list/SearchFragment$2;->val$oldLayerType:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$2;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/android/dialer/app/list/SearchFragment$2;->val$oldLayerType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
