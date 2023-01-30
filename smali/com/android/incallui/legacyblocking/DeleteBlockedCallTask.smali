.class public Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;
.super Landroid/os/AsyncTask;
.source "DeleteBlockedCallTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$CallLogDeleteBlockedCallQuery;,
        Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENTIFIER:Ljava/lang/String; = "DeleteBlockedCallTask"

.field private static final MATCH_BLOCKED_CALL_THRESHOLD_MS:I = 0xbb8


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;

.field private final number:Ljava/lang/String;

.field private final timeAddedMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;Ljava/lang/String;J)V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->context:Landroid/content/Context;

    .line 61
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;

    iput-object p1, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->listener:Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;

    .line 62
    iput-object p3, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->number:Ljava/lang/String;

    .line 63
    iput-wide p4, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->timeAddedMillis:J

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 8

    .line 68
    iget-object p1, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->context:Landroid/content/Context;

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-wide/16 v0, -0x1

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_CALL_LOG"

    .line 70
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->context:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p1, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->context:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/android/dialer/telecom/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$CallLogDeleteBlockedCallQuery;->PROJECTION:[Ljava/lang/String;

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->number:Ljava/lang/String;

    aput-object v5, v6, v1

    const-string v5, "number= ?"

    const-string v7, "date DESC LIMIT 1"

    .line 80
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 88
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 90
    iget-wide v5, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->timeAddedMillis:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_3

    iget-wide v5, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->timeAddedMillis:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0xbb8

    cmp-long p1, v5, v3

    if-gez p1, :cond_3

    .line 92
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 93
    iget-object p1, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v3, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->context:Landroid/content/Context;

    .line 96
    invoke-static {v3}, Lcom/android/dialer/telecom/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 95
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_2

    .line 102
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "DeleteBlockedCallTask.doInBackground"

    const-string v2, "missing call log permissions"

    .line 72
    invoke-static {v1, v2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Long;)V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->listener:Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask$Listener;->onDeleteBlockedCallTaskComplete(Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/incallui/legacyblocking/DeleteBlockedCallTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
