.class final Lcom/android/dialer/p13n/inference/P13nRanking$1;
.super Ljava/lang/Object;
.source "P13nRanking.java"

# interfaces
.implements Lcom/android/dialer/p13n/inference/protocol/P13nRanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/p13n/inference/P13nRanking;->setToIdentityRanker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rankCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 0

    return-object p1
.end method

.method public rankList(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    return-object p1
.end method

.method public refresh(Lcom/android/dialer/p13n/inference/protocol/P13nRanker$P13nRefreshCompleteListener;)V
    .locals 0

    return-void
.end method

.method public shouldShowEmptyListForNullQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
