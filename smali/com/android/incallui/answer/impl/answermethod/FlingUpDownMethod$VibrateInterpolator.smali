.class Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;
.super Ljava/lang/Object;
.source "FlingUpDownMethod.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrateInterpolator"
.end annotation


# static fields
.field private static final RAMP_DOWN_BEGIN_MS:J = 0x62fL

.field private static final RAMP_DOWN_DURATION_MS:J = 0xfaL

.field private static final RAMP_DOWN_END_MS:J = 0x729L

.field private static final RAMP_TOTAL_TIME_MS:J = 0x729L

.field private static final RAMP_UP_BEGIN_MS:J = 0x247L

.field private static final RAMP_UP_DURATION_MS:J = 0xa7L

.field private static final RAMP_UP_END_MS:J = 0x2eeL


# instance fields
.field private final ampMax:F

.field private final freqMax:F

.field private sliderInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 1144
    iput v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;->freqMax:F

    .line 1145
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;->sliderInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1148
    invoke-static {p1, v0}, Lcom/android/dialer/common/DpUtil;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;->ampMax:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const v0, 0x44e52000    # 1833.0f

    mul-float/2addr p1, v0

    const v1, 0x4411c000    # 583.0f

    cmpl-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x443b8000    # 750.0f

    if-lez v2, :cond_0

    cmpg-float v2, p1, v4

    if-gez v2, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;->sliderInterpolator:Landroid/view/animation/Interpolator;

    sub-float v1, p1, v1

    const/high16 v2, 0x43270000    # 167.0f

    div-float/2addr v1, v2

    .line 1161
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v4

    const v2, 0x44c5e000    # 1583.0f

    if-ltz v1, :cond_1

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 1168
    iget-object v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;->sliderInterpolator:Landroid/view/animation/Interpolator;

    sub-float v1, p1, v2

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    .line 1170
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1174
    :goto_0
    iget v0, p0, Lcom/android/incallui/answer/impl/answermethod/FlingUpDownMethod$VibrateInterpolator;->ampMax:F

    mul-float/2addr v0, v3

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v3, v1

    float-to-double v0, v0

    mul-float/2addr p1, v3

    float-to-double v2, p1

    .line 1177
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
