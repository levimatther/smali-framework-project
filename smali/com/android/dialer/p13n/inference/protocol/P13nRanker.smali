.class public interface abstract Lcom/android/dialer/p13n/inference/protocol/P13nRanker;
.super Ljava/lang/Object;
.source "P13nRanker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/p13n/inference/protocol/P13nRanker$P13nRefreshCompleteListener;
    }
.end annotation


# virtual methods
.method public abstract rankCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;
.end method

.method public abstract rankList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refresh(Lcom/android/dialer/p13n/inference/protocol/P13nRanker$P13nRefreshCompleteListener;)V
.end method

.method public abstract shouldShowEmptyListForNullQuery()Z
.end method
