.class Lcom/android/dialer/app/list/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/SearchFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/SearchFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$1;->this$0:Lcom/android/dialer/app/list/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$1;->this$0:Lcom/android/dialer/app/list/SearchFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/SearchFragment;->access$000(Lcom/android/dialer/app/list/SearchFragment;)Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/dialer/app/list/SearchFragment$1;->this$0:Lcom/android/dialer/app/list/SearchFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/SearchFragment;->access$000(Lcom/android/dialer/app/list/SearchFragment;)Lcom/android/dialer/app/list/OnListFragmentScrolledListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/dialer/app/list/OnListFragmentScrolledListener;->onListFragmentScrollStateChange(I)V

    :cond_0
    return-void
.end method
