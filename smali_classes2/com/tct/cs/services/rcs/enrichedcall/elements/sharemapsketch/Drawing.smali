.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;
.source "Drawing.java"


# instance fields
.field private mColor:Ljava/lang/String;

.field private mErase:Z

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:F


# direct methods
.method public constructor <init>(ILjava/lang/String;FZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "FZ",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;-><init>(I)V

    .line 63
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mColor:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mWidth:F

    .line 65
    iput-boolean p4, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mErase:Z

    .line 66
    iput-object p5, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mWidth:F

    return v0
.end method

.method public isErase()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mErase:Z

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mColor:Ljava/lang/String;

    return-void
.end method

.method public setErase(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mErase:Z

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mPoints:Ljava/util/List;

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->mWidth:F

    return-void
.end method
