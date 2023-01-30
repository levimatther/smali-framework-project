.class final Lcom/android/dialer/searchfragment/list/SearchCursorManager;
.super Ljava/lang/Object;
.source "SearchCursorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/searchfragment/list/SearchCursorManager$RowType;
    }
.end annotation


# instance fields
.field private contactsCursor:Landroid/database/Cursor;

.field private corpDirectoryCursor:Landroid/database/Cursor;

.field private nearbyPlacesCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    .line 76
    iput-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    .line 77
    iput-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 262
    iput-object v1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    iput-object v1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 272
    iput-object v1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    :cond_2
    return-void
.end method

.method getCount()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method getCursor(I)Landroid/database/Cursor;
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int v0, p1, v0

    if-gez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 209
    iget-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    return-object p1

    :cond_0
    move p1, v0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "No valid cursor, position is nearby places header."

    .line 215
    invoke-static {v0, v4, v3}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    .line 217
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int v0, p1, v0

    if-gez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    iget-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    return-object p1

    :cond_3
    move p1, v0

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "No valid cursor, position is directory search header."

    .line 227
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    .line 229
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int v0, p1, v0

    if-gez v0, :cond_6

    .line 232
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 233
    iget-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    return-object p1

    :cond_6
    const-string p1, "No valid cursor."

    .line 238
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method getHeaderText(I)I
    .locals 3

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->getRowType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const p1, 0x7f110337

    return p1

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row type, position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is rowtype "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method getRowType(I)I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const-string p1, "No valid row type."

    .line 192
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->createIllegalStateFailException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method setContactsCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz p1, :cond_2

    .line 88
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 89
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    :goto_0
    return-void
.end method

.method setCorpDirectoryCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz p1, :cond_2

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 121
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->corpDirectoryCursor:Landroid/database/Cursor;

    :goto_0
    return-void
.end method

.method setNearbyPlacesCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz p1, :cond_2

    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 105
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->nearbyPlacesCursor:Landroid/database/Cursor;

    :goto_0
    return-void
.end method

.method setQuery(Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/dialer/searchfragment/list/SearchCursorManager;->contactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 130
    check-cast v0, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;

    invoke-virtual {v0, p1}, Lcom/android/dialer/searchfragment/cp2/SearchContactCursor;->filter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
