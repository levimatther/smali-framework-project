.class Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLastOutgoingCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;

.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogAsync;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/calllog/CallLogAsync;Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/dialer/app/calllog/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, [Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;->doInBackground([Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;
    .locals 3

    .line 81
    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p1, v2

    .line 83
    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 93
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-interface {v0, p1}, Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;->lastOutgoingCall(Ljava/lang/String;)V

    return-void
.end method
