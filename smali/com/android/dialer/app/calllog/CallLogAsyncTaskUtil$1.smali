.class final Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;
.super Landroid/os/AsyncTask;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;->val$voicemailUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 121
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_read"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;->val$context:Landroid/content/Context;

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;->val$voicemailUri:Landroid/net/Uri;

    const-string v2, "is_read = 0"

    const/4 v3, 0x0

    .line 128
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->access$000(Landroid/content/Context;)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogNotificationsService;->markAllNewVoicemailsAsOld(Landroid/content/Context;)V

    return-object v3
.end method
