.class public Lcom/android/dialershared/bubble/ChangeOnScreenBounds;
.super Landroid/transition/Transition;
.source "ChangeOnScreenBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field static final PROPNAME_BOUNDS:Ljava/lang/String; = "bubble:changeScreenBounds:bounds"

.field static final PROPNAME_SCREEN_X:Ljava/lang/String; = "bubble:changeScreenBounds:screenX"

.field static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "bubble:changeScreenBounds:screenY"

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 57
    new-instance v0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 69
    iput-object v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->tempLocation:[I

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6

    .line 82
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "bubble:changeScreenBounds:bounds"

    .line 85
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->tempLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 89
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->tempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bubble:changeScreenBounds:screenX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->tempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bubble:changeScreenBounds:screenY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8

    .line 97
    iget-object p1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "bubble:changeScreenBounds:bounds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 98
    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 106
    :cond_0
    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "bubble:changeScreenBounds:screenX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 107
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "bubble:changeScreenBounds:screenY"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 108
    iget-object v5, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 109
    iget-object v5, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v3

    sub-int/2addr p2, v4

    .line 110
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 112
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 113
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 114
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 115
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 116
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 117
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 118
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 119
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 120
    new-instance v7, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;

    iget-object p3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {v7, p3}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 121
    new-instance p3, Landroid/graphics/PointF;

    int-to-float p2, p2

    int-to-float v3, v3

    invoke-direct {p3, p2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, p3}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    .line 122
    new-instance p3, Landroid/graphics/PointF;

    int-to-float v5, v5

    int-to-float p1, p1

    invoke-direct {p3, v5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, p3}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->setBottomRight(Landroid/graphics/PointF;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object p3

    int-to-float v2, v2

    int-to-float v4, v4

    invoke-virtual {p3, p2, v3, v2, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p2

    .line 126
    sget-object p3, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 127
    invoke-static {v7, p3, v1, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 129
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object p3

    int-to-float v2, v6

    int-to-float v0, v0

    invoke-virtual {p3, v5, p1, v2, v0}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 130
    sget-object p3, Lcom/android/dialershared/bubble/ChangeOnScreenBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 131
    invoke-static {v7, p3, v1, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 132
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 133
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p3

    :cond_1
    :goto_0
    return-object v1
.end method
