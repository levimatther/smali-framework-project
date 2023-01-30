.class final Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.field final synthetic val$callLogAsyncTaskListener:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->val$voicemailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->val$callLogAsyncTaskListener:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->val$voicemailUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->deleteVoicemailSynchronous(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;->val$callLogAsyncTaskListener:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;->onDeleteVoicemail()V

    :cond_0
    return-void
.end method
