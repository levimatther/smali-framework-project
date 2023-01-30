.class Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;
.super Landroid/os/AsyncTask;
.source "ClearCallLogDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->val$context:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->val$context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->clearAllCacheEntries(Landroid/content/Context;)V

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1;->this$0:Lcom/android/dialer/app/calllog/ClearCallLogDialog;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/ClearCallLogDialog;->access$000(Lcom/android/dialer/app/calllog/ClearCallLogDialog;)Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/app/calllog/ClearCallLogDialog$Listener;->callHistoryDeleted()V

    .line 85
    iget-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/android/dialer/app/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
