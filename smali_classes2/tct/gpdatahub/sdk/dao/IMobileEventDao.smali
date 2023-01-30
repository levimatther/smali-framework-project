.class public interface abstract Ltct/gpdatahub/sdk/dao/IMobileEventDao;
.super Ljava/lang/Object;
.source "IMobileEventDao.java"


# virtual methods
.method public abstract batchInsertAll()V
.end method

.method public abstract deleteMobileEventByDay(Ljava/lang/String;)V
.end method

.method public abstract deleteMobileEventById(JJ)V
.end method

.method public abstract insertActivitySession(Ljava/lang/String;I)J
.end method

.method public abstract insertEvent(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)J
.end method

.method public abstract insertEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)J
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

.method public abstract insertMapTypeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method public abstract insertStandardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J
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
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method public abstract insertStringTypeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
.end method

.method public abstract insertSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract insertThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract queryMobileEvent()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMobileEventByDay(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMobileEventById(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMobileEventCursorByDay(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryNewestMobileEventId()J
.end method

.method public abstract queryRecordDateMobileEvent()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryRecordDateMobileEventByIdSet(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ltct/gpdatahub/sdk/models/MobileEventModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract trackActivityLifecycle()V
.end method

.method public abstract updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
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
