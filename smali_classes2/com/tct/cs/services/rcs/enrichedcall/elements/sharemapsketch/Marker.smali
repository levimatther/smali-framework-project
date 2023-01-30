.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;
.source "Marker.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

.field private mSnippet:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;-><init>(I)V

    .line 61
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mTitle:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mSnippet:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    .line 64
    iput-object p5, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mId:Ljava/lang/String;

    return-void
.end method

.method public setPoint(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mPoint:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mSnippet:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->mTitle:Ljava/lang/String;

    return-void
.end method
