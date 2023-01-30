.class Lcom/android/dialer/app/calllog/CallLogActivity$5$1;
.super Landroid/os/AsyncTask;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogActivity$5;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/android/dialer/app/calllog/CallLogActivity$5;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogActivity$5;Landroid/content/ContentResolver;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;->this$1:Lcom/android/dialer/app/calllog/CallLogActivity$5;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 844
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 847
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 848
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;->this$1:Lcom/android/dialer/app/calllog/CallLogActivity$5;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 849
    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;->this$1:Lcom/android/dialer/app/calllog/CallLogActivity$5;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->clearAllCacheEntries(Landroid/content/Context;)V

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 844
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
