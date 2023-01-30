.class Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;
.super Ljava/lang/Object;
.source "OldSpeedDialFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/OldSpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;Lcom/android/dialer/app/list/OldSpeedDialFragment$1;)V
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;-><init>(Lcom/android/dialer/app/list/OldSpeedDialFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 491
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$900(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$900(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/android/dialer/app/list/OnListFragmentScrolledListener;->onListFragmentScroll(III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 499
    iget-object p1, p0, Lcom/android/dialer/app/list/OldSpeedDialFragment$ScrollListener;->this$0:Lcom/android/dialer/app/list/OldSpeedDialFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/OldSpeedDialFragment;->access$900(Lcom/android/dialer/app/list/OldSpeedDialFragment;)Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/dialer/app/list/OnListFragmentScrolledListener;->onListFragmentScrollStateChange(I)V

    return-void
.end method
