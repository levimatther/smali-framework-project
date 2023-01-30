.class Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask$1;
.super Ljava/lang/Object;
.source "CallDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;


# direct methods
.method constructor <init>(Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask$1;->this$1:Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask$1;->this$1:Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;

    iget-object v0, v0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 529
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 530
    iget-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask$1;->this$1:Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;

    iget-object v2, v2, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v2}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 532
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 533
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 534
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask$1;->this$1:Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;

    iget-object v0, v0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->requestFocus()Z

    :goto_0
    return-void
.end method
