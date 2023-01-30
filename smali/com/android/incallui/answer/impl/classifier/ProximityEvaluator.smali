.class Lcom/android/incallui/answer/impl/classifier/ProximityEvaluator;
.super Ljava/lang/Object;
.source "ProximityEvaluator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
