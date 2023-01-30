.class final Lcom/android/dialer/blocking/FilteredNumbersUtil$1;
.super Landroid/os/AsyncTask;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/FilteredNumbersUtil;->checkForSendToVoicemailContact(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;->val$listener:Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7

    .line 78
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;->val$context:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/dialer/blocking/FilteredNumbersUtil$ContactsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "send_to_voicemail=1"

    .line 85
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 97
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 98
    throw v0

    .line 101
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 79
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;->val$listener:Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
