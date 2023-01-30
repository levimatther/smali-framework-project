.class Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;
.super Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Landroid/net/Uri;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;)V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 368
    :cond_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p1

    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 373
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 374
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 375
    invoke-static {p3, p1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 376
    iget-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-static {p2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->access$100(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/blocking/FilteredNumberCompat;->getIdColumnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4$1;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;Landroid/content/ContentValues;)V

    iget-object v3, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->val$uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 393
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 370
    :cond_2
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rows for uri "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$4;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "where 1 expected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_3

    .line 393
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_3
    throw p1
.end method
