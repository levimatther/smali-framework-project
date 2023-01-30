.class public Lcom/android/dialer/calllog/datasources/util/RowCombiner;
.super Ljava/lang/Object;
.source "RowCombiner.java"


# instance fields
.field private final combinedRow:Landroid/content/ContentValues;

.field private final individualRowsSortedByTimestampDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->combinedRow:Landroid/content/ContentValues;

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 30
    iput-object p1, p0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->individualRowsSortedByTimestampDesc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public combine()Landroid/content/ContentValues;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->combinedRow:Landroid/content/ContentValues;

    return-object v0
.end method

.method public useMostRecentLong(Ljava/lang/String;)Lcom/android/dialer/calllog/datasources/util/RowCombiner;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->combinedRow:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->individualRowsSortedByTimestampDesc:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public useSingleValueString(Ljava/lang/String;)Lcom/android/dialer/calllog/datasources/util/RowCombiner;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->individualRowsSortedByTimestampDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/datasources/util/RowCombiner;->combinedRow:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
