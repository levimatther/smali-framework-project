.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;
.source "Bounds.java"


# instance fields
.field private mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;


# direct methods
.method public constructor <init>(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;-><init>(I)V

    .line 58
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;->mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    return-void
.end method


# virtual methods
.method public getPoint()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;->mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    return-object v0
.end method

.method public setPoint(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;->mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    return-void
.end method
