.class interface abstract Ltct/gpdatahub/sdk/dao/IMobileEventDaoHelper;
.super Ljava/lang/Object;
.source "IMobileEventDaoHelper.java"


# virtual methods
.method public abstract batchInsert(Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract deleteMobileEventByDay(JJ)I
.end method

.method public abstract deleteMobileEventById(JJ)I
.end method

.method public abstract getTeyeId()Ljava/lang/String;
.end method

.method public abstract insertActivitySession(Landroid/content/ContentValues;)J
.end method

.method public abstract insertEvent(Landroid/content/ContentValues;)J
.end method

.method public abstract isDisableInsertEvent()Z
.end method

.method public abstract queryMobileEventCursor()Landroid/database/Cursor;
.end method

.method public abstract queryMobileEventCursorByDay(JJ)Landroid/database/Cursor;
.end method

.method public abstract queryMobileEventCursorById(JJ)Landroid/database/Cursor;
.end method

.method public abstract queryNewestMobileEventId()Landroid/database/Cursor;
.end method

.method public abstract queryRecordDateMobileEventCursor()Landroid/database/Cursor;
.end method

.method public abstract queryRecordDateMobileEventCursorByIdSet(Ljava/util/Set;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation
.end method

.method public abstract trackActivityLifecycle()V
.end method

.method public abstract updateEventByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract updateEventByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method
