.class public final Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;
.super Ljava/lang/Object;
.source "SearchContactCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/searchfragment/cp2/SearchContactCursor$Qualification;
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private final cursor:Landroid/database/Cursor;

.field private final queryFilteredPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    .line 71
    iput-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->filter(Ljava/lang/String;)V

    return-void
.end method

.method private getQualification(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 161
    invoke-static {p1}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {p2}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->digitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p2, p1, :cond_0

    return v4

    :cond_0
    return v3

    .line 175
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v4

    .line 178
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    .line 111
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 112
    iget-object v4, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 113
    iget-object v5, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    iget-object v6, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v0, v6

    goto :goto_1

    .line 122
    :cond_2
    invoke-direct {p0, v5, v2}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->getQualification(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 142
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 143
    invoke-static {p1, v0}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->nameMatchesT9Query(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 144
    invoke-static {p1, v5}, Lcom/android/dialer/searchfragment/common/QueryFilteringUtil;->numberMatchesNumberQuery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    move v3, v4

    move-object v2, v5

    goto :goto_0

    .line 149
    :cond_6
    iput v1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    .line 150
    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 204
    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLast()Z
    .locals 3

    .line 209
    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isNull(I)Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public move(I)Z
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 229
    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    .line 186
    iput p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    .line 187
    invoke-virtual {p0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->queryFilteredPositions:Ljava/util/List;

    iget v1, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 234
    iget v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public requery()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
