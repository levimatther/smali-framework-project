.class final Lcom/android/dialer/blocking/FilteredNumbersUtil$2;
.super Landroid/os/AsyncTask;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/FilteredNumbersUtil;->importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V
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

.field final synthetic val$listener:Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

.field final synthetic val$mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iput-object p3, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$listener:Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8

    .line 128
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez p1, :cond_0

    return-object v1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/dialer/blocking/FilteredNumbersUtil$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "send_to_voicemail=1"

    .line 136
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 148
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 150
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 151
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 154
    iget-object v4, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-virtual {v4, v3, v1, v2, v3}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 163
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "send_to_voicemail=1"

    .line 167
    invoke-virtual {v0, v1, p1, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 159
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 160
    throw v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$listener:Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;

    if-eqz p1, :cond_1

    .line 180
    invoke-interface {p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;->onImportComplete()V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v0, 0x7f11042d

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/dialer/blocking/FilteredNumbersUtil$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
