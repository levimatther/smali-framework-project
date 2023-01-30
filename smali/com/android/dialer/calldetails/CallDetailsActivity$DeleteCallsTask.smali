.class public Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calldetails/CallDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteCallsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/calldetails/CallDetailsActivity;)V
    .locals 2

    .line 502
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 504
    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;

    .line 506
    iget-wide v0, p1, Lcom/android/dialer/calldetails/CallDetailsEntryViewHolder;->callId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->callId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 498
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 511
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 512
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 498
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 518
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$600(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->callId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$700(Lcom/android/dialer/calldetails/CallDetailsActivity;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$602(Lcom/android/dialer/calldetails/CallDetailsActivity;Ljava/util/List;)Ljava/util/List;

    .line 520
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$600(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsAdapter;

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$600(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/calldetails/CallDetailsAdapter;->setEntries(Ljava/util/List;)V

    .line 522
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$000(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallDetailsRecyclerview;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 525
    invoke-static {}, Lcom/android/dialer/common/concurrent/ThreadUtil;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask$1;-><init>(Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 541
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 542
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$300(Lcom/android/dialer/calldetails/CallDetailsActivity;)Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsActivity;->access$600(Lcom/android/dialer/calldetails/CallDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 544
    invoke-virtual {v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResultsCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    const-string v1, "has_enriched_call_data"

    .line 545
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 550
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsActivity$DeleteCallsTask;->this$0:Lcom/android/dialer/calldetails/CallDetailsActivity;

    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsActivity;->finish()V

    :goto_0
    return-void
.end method
