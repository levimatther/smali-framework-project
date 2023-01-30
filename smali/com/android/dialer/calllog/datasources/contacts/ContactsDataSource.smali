.class public final Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;
.super Ljava/lang/Object;
.source "ContactsDataSource.java"

# interfaces
.implements Lcom/android/dialer/calllog/datasources/CallLogDataSource;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public coalesce(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;

    invoke-direct {v0, p1}, Lcom/android/dialer/calllog/datasources/util/RowCombiner;-><init>(Ljava/util/List;)V

    const-string p1, "contact_name"

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->useSingleValueString(Ljava/lang/String;)Lcom/android/dialer/calllog/datasources/util/RowCombiner;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->combine()Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public fill(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogMutations;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 53
    invoke-virtual {p2}, Lcom/android/dialer/calllog/datasources/CallLogMutations;->getInserts()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    const-string v0, "contact_name"

    const-string v1, "Placeholder name"

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDirty(Landroid/content/Context;)Z
    .locals 0

    .line 40
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSuccessfulFill(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public registerContentObservers(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;)V
    .locals 0

    return-void
.end method
