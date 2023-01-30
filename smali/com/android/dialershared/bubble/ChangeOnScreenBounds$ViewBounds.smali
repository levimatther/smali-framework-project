.class Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeOnScreenBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/ChangeOnScreenBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private bottom:I

.field private bottomRightCalls:I

.field private left:I

.field private right:I

.field private top:I

.field private topLeftCalls:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->view:Landroid/view/View;

    return-void
.end method

.method private updateLeftTopRightBottom()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->view:Landroid/view/View;

    iget v1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 170
    iget-object v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->view:Landroid/view/View;

    iget v1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->top:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 171
    iget-object v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->view:Landroid/view/View;

    iget v1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 172
    iget-object v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->view:Landroid/view/View;

    iget v1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->bottom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->topLeftCalls:I

    .line 174
    iput v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->bottomRightCalls:I

    return-void
.end method


# virtual methods
.method public setBottomRight(Landroid/graphics/PointF;)V
    .locals 1

    .line 160
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->right:I

    .line 161
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->bottom:I

    .line 162
    iget p1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->bottomRightCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->bottomRightCalls:I

    .line 163
    iget v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->topLeftCalls:I

    if-ne v0, p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->updateLeftTopRightBottom()V

    :cond_0
    return-void
.end method

.method public setTopLeft(Landroid/graphics/PointF;)V
    .locals 1

    .line 151
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->left:I

    .line 152
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->top:I

    .line 153
    iget p1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->topLeftCalls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->topLeftCalls:I

    .line 154
    iget v0, p0, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->bottomRightCalls:I

    if-ne p1, v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/dialershared/bubble/ChangeOnScreenBounds$ViewBounds;->updateLeftTopRightBottom()V

    :cond_0
    return-void
.end method
