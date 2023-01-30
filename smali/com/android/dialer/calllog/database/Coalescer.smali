.class public Lcom/android/dialer/calllog/database/Coalescer;
.super Ljava/lang/Object;
.source "Coalescer.java"


# instance fields
.field private final dataSources:Lcom/android/dialer/calllog/datasources/DataSources;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/datasources/DataSources;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/dialer/calllog/database/Coalescer;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    return-void
.end method

.method private static addContentValuesToMatrixCursor(Landroid/content/ContentValues;Landroid/database/MatrixCursor;I)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "_id"

    invoke-virtual {p1, v0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 176
    invoke-virtual {p0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private coalesceRowsForAllDataSources(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/android/dialer/calllog/database/Coalescer;->dataSources:Lcom/android/dialer/calllog/datasources/DataSources;

    invoke-interface {v1}, Lcom/android/dialer/calllog/datasources/DataSources;->getDataSourcesIncludingSystemCallLog()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/calllog/datasources/CallLogDataSource;

    .line 163
    invoke-interface {v2, p1}, Lcom/android/dialer/calllog/datasources/CallLogDataSource;->coalesce(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static cursorRowToContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 6

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 115
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 117
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 118
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 120
    :cond_0
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static rowsShouldBeCombined(Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 2

    const-string v0, "number"

    .line 136
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/DialerPhoneNumber;->parseFrom([B)Lcom/android/dialer/DialerPhoneNumber;

    move-result-object p1

    .line 137
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/DialerPhoneNumber;->parseFrom([B)Lcom/android/dialer/DialerPhoneNumber;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;->isExactMatch(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception p0

    const-string p1, "error parsing DialerPhoneNumber proto"

    .line 139
    invoke-static {p1, p0}, Lcom/android/dialer/common/Assert;->createAssertionFailException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method coalesce(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8

    .line 65
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 70
    new-instance v0, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;

    .line 71
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;-><init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    .line 73
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->ALL_COLUMNS:[Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/calllog/database/Coalescer;->cursorRowToContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v4

    .line 87
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v6, "number_calls"

    if-eqz v5, :cond_1

    .line 88
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 94
    invoke-static {v0, v5, v4}, Lcom/android/dialer/calllog/database/Coalescer;->rowsShouldBeCombined(Lcom/android/dialer/phonenumberproto/DialerPhoneNumberUtil;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    invoke-direct {p0, v3}, Lcom/android/dialer/calllog/database/Coalescer;->coalesceRowsForAllDataSources(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v5

    .line 96
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v7, v2, 0x1

    .line 97
    invoke-static {v5, v1, v2}, Lcom/android/dialer/calllog/database/Coalescer;->addContentValuesToMatrixCursor(Landroid/content/ContentValues;Landroid/database/MatrixCursor;I)V

    .line 99
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v2, v7

    .line 101
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    invoke-direct {p0, v3}, Lcom/android/dialer/calllog/database/Coalescer;->coalesceRowsForAllDataSources(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object p1

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-static {p1, v1, v2}, Lcom/android/dialer/calllog/database/Coalescer;->addContentValuesToMatrixCursor(Landroid/content/ContentValues;Landroid/database/MatrixCursor;I)V

    :cond_3
    return-object v1
.end method
