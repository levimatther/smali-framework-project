.class public interface abstract Lcom/android/dialer/calllog/datasources/CallLogDataSource;
.super Ljava/lang/Object;
.source "CallLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;
    }
.end annotation


# virtual methods
.method public abstract coalesce(Ljava/util/List;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract fill(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogMutations;)V
.end method

.method public abstract isDirty(Landroid/content/Context;)Z
.end method

.method public abstract onSuccessfulFill(Landroid/content/Context;)V
.end method

.method public abstract registerContentObservers(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/CallLogDataSource$ContentObserverCallbacks;)V
.end method
