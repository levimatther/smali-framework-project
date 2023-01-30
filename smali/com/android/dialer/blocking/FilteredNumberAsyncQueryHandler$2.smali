.class Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;
.super Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;
.source "FilteredNumberAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field final synthetic val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;Ljava/lang/String;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iput-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$Listener;-><init>(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$1;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    const/4 p1, 0x0

    const/4 p2, -0x1

    if-eqz p3, :cond_4

    .line 174
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->this$0:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->access$100(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "type"

    .line 182
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 184
    sget-object v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$number:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    invoke-interface {p2, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 193
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string p1, "_id"

    .line 188
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 189
    sget-object p2, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$number:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    invoke-interface {p2, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_3

    .line 193
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    .line 175
    :cond_4
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockedNumberCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$number:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object p2, p0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$2;->val$listener:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    invoke-interface {p2, p1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;->onCheckComplete(Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_5

    .line 193
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_6
    throw p1
.end method
