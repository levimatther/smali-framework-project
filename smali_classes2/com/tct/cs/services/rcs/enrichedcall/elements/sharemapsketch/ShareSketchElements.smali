.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;
.super Ljava/lang/Object;
.source "ShareSketchElements.java"


# instance fields
.field private mBackGroundColor:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;

.field private mClose:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

.field private mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

.field private mImage:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;

.field private mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

.field private mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackGroundColor()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mBackGroundColor:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;

    return-object v0
.end method

.method public getClose()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mClose:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    return-object v0
.end method

.method public getDrawing()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    return-object v0
.end method

.method public getImage()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mImage:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;

    return-object v0
.end method

.method public getUndo()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    return-object v0
.end method

.method public getVersion()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    return-object v0
.end method

.method public isBackGroundColorElement()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mBackGroundColor:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;

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

    .line 114
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImageElement()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mImage:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;

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

    .line 126
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

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

    .line 110
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackGroundColor(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mBackGroundColor:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;

    return-void
.end method

.method public setClose(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mClose:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    return-void
.end method

.method public setDrawing(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mDrawing:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    return-void
.end method

.method public setImage(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mImage:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;

    return-void
.end method

.method public setUndo(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mUndo:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    return-void
.end method

.method public setVersion(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->mVersion:Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    return-void
.end method
