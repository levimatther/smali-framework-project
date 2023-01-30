.class final Lcom/android/dialershared/bubble/ChangeOnScreenBounds$2;
.super Landroid/util/Property;
.source "ChangeOnScreenBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/ChangeOnScreenBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;

    invoke-virtual {p0, p1}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$2;->get(Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;Landroid/graphics/PointF;)V
    .locals 0

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->setBottomRight(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$2;->set(Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
