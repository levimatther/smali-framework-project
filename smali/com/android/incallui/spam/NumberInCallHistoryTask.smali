.class public Lcom/android/incallui/spam/NumberInCallHistoryTask;
.super Landroid/os/AsyncTask;
.source "NumberInCallHistoryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TASK_ID:Ljava/lang/String; = "number_in_call_history_status"


# instance fields
.field private final context:Landroid/content/Context;

.field private final countryIso:Ljava/lang/String;

.field private final listener:Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;

.field private final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->context:Landroid/content/Context;

    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;

    iput-object p1, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->listener:Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;

    .line 54
    iput-object p3, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->number:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->countryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    .line 69
    iget-object p1, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->number:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->countryIso:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "normalized_number"

    goto :goto_0

    :cond_0
    const-string v0, "number"

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    :goto_0
    const/4 v1, 0x0

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->context:Landroid/content/Context;

    .line 83
    invoke-static {v2}, Lcom/android/dialer/telecom/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x1

    new-array v7, p1, [Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v8, 0x0

    .line 82
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 88
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x2

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 91
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object p1

    .line 79
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 91
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "NumberInCallHistoryTask.doInBackground"

    const-string v2, "query call log error"

    .line 92
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/spam/NumberInCallHistoryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->listener:Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/incallui/spam/NumberInCallHistoryTask$Listener;->onComplete(I)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/incallui/spam/NumberInCallHistoryTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public submitTask()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/incallui/spam/NumberInCallHistoryTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    const-string v2, "number_in_call_history_status"

    .line 63
    invoke-interface {v0, v2, p0, v1}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
