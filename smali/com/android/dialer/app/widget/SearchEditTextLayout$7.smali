.class Lcom/android/dialer/app/widget/SearchEditTextLayout$7;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/widget/SearchEditTextLayout;->prepareAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$7;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 297
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 298
    iget-object v0, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$7;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/dialer/app/widget/SearchEditTextLayout;->access$400(Lcom/android/dialer/app/widget/SearchEditTextLayout;F)V

    return-void
.end method
