.class Lcom/android/dialer/app/widget/ActionBarController$2;
.super Lcom/android/dialer/animation/AnimUtils$AnimationCallback;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/widget/ActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/widget/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/widget/ActionBarController;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/dialer/app/widget/ActionBarController$2;->this$0:Lcom/android/dialer/app/widget/ActionBarController;

    invoke-direct {p0}, Lcom/android/dialer/animation/AnimUtils$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController$2;->this$0:Lcom/android/dialer/app/widget/ActionBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/dialer/app/widget/ActionBarController;->slideActionBar(ZZ)V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/dialer/app/widget/ActionBarController$2;->this$0:Lcom/android/dialer/app/widget/ActionBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/dialer/app/widget/ActionBarController;->slideActionBar(ZZ)V

    return-void
.end method
