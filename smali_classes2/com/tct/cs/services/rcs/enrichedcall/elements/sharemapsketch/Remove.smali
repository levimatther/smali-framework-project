.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;
.source "Remove.java"


# instance fields
.field private mMarkerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;-><init>(I)V

    .line 58
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;->mMarkerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMarkerId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;->mMarkerId:Ljava/lang/String;

    return-object v0
.end method

.method public setMarkerId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;->mMarkerId:Ljava/lang/String;

    return-void
.end method
