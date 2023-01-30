.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;
.super Ljava/lang/Object;
.source "ShareMapElements.java"


# instance fields
.field private mBounds:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;

.field private mClose:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

.field private mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

.field private mMarker:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;

.field private mRemove:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;

.field private mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

.field private mUser:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;

.field private mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mBounds:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;

    return-object v0
.end method

.method public getClose()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mClose:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    return-object v0
.end method

.method public getDrawing()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    return-object v0
.end method

.method public getMarker()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mMarker:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;

    return-object v0
.end method

.method public getRemove()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mRemove:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;

    return-object v0
.end method

.method public getUndo()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    return-object v0
.end method

.method public getUser()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mUser:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;

    return-object v0
.end method

.method public getVersion()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    return-object v0
.end method

.method public isBoundsElement()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mBounds:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCloseElement()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mClose:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawingElement()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMarkerElement()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mMarker:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoveElement()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mRemove:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUndoElement()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserElement()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mUser:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVersionElement()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBounds(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mBounds:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;

    return-void
.end method

.method public setClose(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mClose:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    return-void
.end method

.method public setDrawing(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    return-void
.end method

.method public setMarker(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mMarker:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;

    return-void
.end method

.method public setRemove(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mRemove:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;

    return-void
.end method

.method public setUndo(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    return-void
.end method

.method public setUser(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mUser:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;

    return-void
.end method

.method public setVersion(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    return-void
.end method
