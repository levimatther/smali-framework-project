.class Lcom/android/incallui/answer/impl/classifier/DirectionEvaluator;
.super Ljava/lang/Object;
.source "DirectionEvaluator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(FF)F
    .locals 0

    .line 21
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/high16 p0, 0x40b00000    # 5.5f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
