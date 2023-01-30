.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private mProtocolVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;->mProtocolVersion:I

    return-void
.end method


# virtual methods
.method public getmProtocolVersion()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;->mProtocolVersion:I

    return v0
.end method

.method public setmProtocolVersion(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;->mProtocolVersion:I

    return-void
.end method
