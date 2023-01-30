.class Lcom/android/dialer/app/calllog/CallLogAdapter$7;
.super Landroid/os/AsyncTask;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogAdapter;->loadAndRender(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;JLcom/android/dialer/calllogutils/PhoneCallDetails;Lcom/android/dialer/calldetails/CallDetailsEntries;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

.field final synthetic val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

.field final synthetic val$rowId:J

.field final synthetic val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;J)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

    iput-wide p4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$rowId:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .line 943
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    .line 944
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1800(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v2, v2, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->getBlockedIdSynchronous(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    .line 946
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isBlocked:Z

    .line 947
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 948
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 950
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$1900(Lcom/android/dialer/app/calllog/CallLogAdapter;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 951
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iput-boolean v1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpamFeatureEnabled:Z

    .line 954
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

    .line 955
    invoke-virtual {v0}, Lcom/android/dialer/calllogutils/PhoneCallDetails;->hasIncomingCalls()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 956
    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    iget-object v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v3, v3, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v4, v4, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    .line 957
    invoke-interface {v0, v3, v4}, Lcom/android/dialer/spam/SpamBindings;->checkSpamStatusSynchronous(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    .line 958
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-boolean v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isSpam:Z

    iput-boolean v0, p1, Lcom/android/dialer/calllogutils/PhoneCallDetails;->isSpam:Z

    .line 960
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-wide v3, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$rowId:J

    iget-object v5, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

    invoke-static {p1, v0, v3, v4, v5}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$2000(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;JLcom/android/dialer/calllogutils/PhoneCallDetails;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 940
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .line 965
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->isLoaded:Z

    .line 966
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 967
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-wide v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    invoke-static {p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$2100(Lcom/android/dialer/app/calllog/CallLogAdapter;J)I

    move-result p1

    .line 968
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

    iget v0, v0, Lcom/android/dialer/calllogutils/PhoneCallDetails;->previousGroup:I

    if-eq p1, v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeaderVisibility:I

    .line 970
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {v1, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$2200(Lcom/android/dialer/app/calllog/CallLogAdapter;I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeaderText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 972
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    const/16 v0, 0x8

    iput v0, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->dayGroupHeaderVisibility:I

    .line 974
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$details:Lcom/android/dialer/calllogutils/PhoneCallDetails;

    iget-wide v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->val$rowId:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$2300(Lcom/android/dialer/app/calllog/CallLogAdapter;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;Lcom/android/dialer/calllogutils/PhoneCallDetails;J)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 940
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAdapter$7;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
