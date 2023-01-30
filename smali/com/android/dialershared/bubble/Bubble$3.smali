.class Lcom/android/dialershared/bubble/Bubble$3;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialershared/bubble/Bubble;->swapViewHolders(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialershared/bubble/Bubble;

.field final synthetic val$oldViewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/dialershared/bubble/Bubble;Landroid/view/ViewGroup;Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/android/dialershared/bubble/Bubble$3;->this$0:Lcom/android/dialershared/bubble/Bubble;

    iput-object p2, p0, Lcom/android/dialershared/bubble/Bubble$3;->val$root:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/dialershared/bubble/Bubble$3;->val$oldViewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPreDraw$0$Bubble$3(Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$3;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {v0}, Lcom/android/dialershared/bubble/Bubble;->access$200(Lcom/android/dialershared/bubble/Bubble;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/Bubble$ViewHolder;->getRoot()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 5

    .line 610
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$3;->val$root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 612
    iget-object v0, p0, Lcom/android/dialershared/bubble/Bubble$3;->this$0:Lcom/android/dialershared/bubble/Bubble;

    invoke-static {v0}, Lcom/android/dialershared/bubble/Bubble;->access$100(Lcom/android/dialershared/bubble/Bubble;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialershared/bubble/Bubble$3;->val$oldViewHolder:Lcom/android/dialershared/bubble/Bubble$ViewHolder;

    new-instance v2, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$3$woHtM_R4ADWoX5W7UiLxK2X81PE;

    invoke-direct {v2, p0, v1}, Lcom/android/dialershared/bubble/-$$Lambda$Bubble$3$woHtM_R4ADWoX5W7UiLxK2X81PE;-><init>(Lcom/android/dialershared/bubble/Bubble$3;Lcom/android/dialershared/bubble/Bubble$ViewHolder;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method
