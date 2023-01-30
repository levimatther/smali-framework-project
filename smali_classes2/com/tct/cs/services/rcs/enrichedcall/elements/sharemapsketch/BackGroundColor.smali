.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;
.source "BackGroundColor.java"


# instance fields
.field private mColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;-><init>(I)V

    .line 8
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;->mColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;->mColor:Ljava/lang/String;

    return-void
.end method
