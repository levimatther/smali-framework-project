.class Lcom/android/dialer/app/calllog/CallLogFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogFragment;->setupView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

.field toFirst:Z

.field toLast:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 500
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->toLast:Z

    .line 501
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->toFirst:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 504
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 506
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-static {p2}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$100(Lcom/android/dialer/app/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onScrollStateChanged: newState == RecyclerView.SCROLL_STATE_IDLE "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    iget-boolean v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->toFirst:Z

    iget-boolean v1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->toLast:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogFragment;->scroolChange(Landroidx/recyclerview/widget/RecyclerView;ZZ)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 512
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x1

    if-lez p3, :cond_0

    .line 514
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-static {p2}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$100(Lcom/android/dialer/app/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onScrolled: dy>0"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->toLast:Z

    goto :goto_0

    .line 517
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-static {p2}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$100(Lcom/android/dialer/app/calllog/CallLogFragment;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onScrolled: dy<0"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iput-boolean p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$4;->toFirst:Z

    :goto_0
    return-void
.end method
