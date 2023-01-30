.class Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;
.super Ljava/lang/Object;
.source "HistoryEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field public evaluation:F

.field public weight:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->evaluation:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 112
    iput p1, p0, Lcom/android/incallui/answer/impl/classifier/HistoryEvaluator$Data;->weight:F

    return-void
.end method
