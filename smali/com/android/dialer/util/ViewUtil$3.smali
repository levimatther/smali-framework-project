.class final Lcom/android/dialer/util/ViewUtil$3;
.super Ljava/lang/Object;
.source "ViewUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/util/ViewUtil;->doOnGlobalLayout(Landroid/view/View;Lcom/android/dialer/util/ViewUtil$ViewRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Lcom/android/dialer/util/ViewUtil$ViewRunnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/dialer/util/ViewUtil$ViewRunnable;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/dialer/util/ViewUtil$3;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/dialer/util/ViewUtil$3;->val$runnable:Lcom/android/dialer/util/ViewUtil$ViewRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/dialer/util/ViewUtil$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/dialer/util/ViewUtil$3;->val$runnable:Lcom/android/dialer/util/ViewUtil$ViewRunnable;

    iget-object v1, p0, Lcom/android/dialer/util/ViewUtil$3;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/dialer/util/ViewUtil$ViewRunnable;->run(Landroid/view/View;)V

    return-void
.end method
