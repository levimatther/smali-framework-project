.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# instance fields
.field private mSeq:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;->mSeq:I

    return-void
.end method


# virtual methods
.method public getSeq()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;->mSeq:I

    return v0
.end method

.method public setSeq(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Actions;->mSeq:I

    return-void
.end method
