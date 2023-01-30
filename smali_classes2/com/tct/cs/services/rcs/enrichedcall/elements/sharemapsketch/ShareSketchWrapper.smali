.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;
.source "ShareSketchWrapper.java"


# static fields
.field private static final ACTIONS:Ljava/lang/String; = "actions"

.field private static final ACTION_SEQ:Ljava/lang/String; = "seq"

.field private static final BACKGROUND_COLOR:Ljava/lang/String; = "background_color"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final COLOR:Ljava/lang/String; = "color"

.field private static final DRAWING:Ljava/lang/String; = "drawing"

.field private static final DRAWING_EARSE:Ljava/lang/String; = "erase"

.field private static final DRAWING_WIDTH:Ljava/lang/String; = "width"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final POINTS:Ljava/lang/String; = "points"

.field private static final UNDO:Ljava/lang/String; = "undo"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_ID:Ljava/lang/String; = "id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;-><init>()V

    return-void
.end method

.method private decodePoint(Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method private decodePoints(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;"
        }
    .end annotation

    const-string v0, "encoding"

    .line 290
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method private encodePoint(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private encodePoints(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;
    .locals 2

    .line 92
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-nez v0, :cond_2

    .line 96
    const-class v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-nez v1, :cond_1

    .line 98
    new-instance v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    invoke-direct {v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;-><init>()V

    sput-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    .line 100
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_2
    :goto_0
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    return-object v0
.end method

.method private parseBackgroundColor(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;
    .locals 2

    const-string v0, "seq"

    .line 268
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "color"

    .line 269
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    new-instance v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;

    invoke-direct {v1, v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private parseClose()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;
    .locals 1

    .line 234
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;-><init>()V

    return-object v0
.end method

.method private parseDrawing(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;
    .locals 9

    const-string v0, "seq"

    .line 238
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "color"

    .line 239
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "erase"

    .line 240
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "width"

    .line 241
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 245
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v6, v0

    .line 246
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 247
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 248
    instance-of v7, v0, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_0

    .line 249
    check-cast v0, Lorg/w3c/dom/Element;

    .line 250
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "points"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->decodePoints(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    new-instance p1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;-><init>(ILjava/lang/String;FZLjava/util/List;)V

    return-object p1
.end method

.method private parseImage(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;
    .locals 3

    const-string v0, "seq"

    .line 260
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "encoding"

    .line 261
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    .line 264
    new-instance v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;

    invoke-direct {v2, v0, v1, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private parseUndo(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;
    .locals 1

    const-string v0, "seq"

    .line 275
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 276
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;-><init>(I)V

    return-object v0
.end method

.method private parseVersion(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;
    .locals 1

    const-string v0, "id"

    .line 229
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected parseElement(Lorg/w3c/dom/Document;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;-><init>()V

    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 111
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 112
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_5

    .line 113
    check-cast v2, Lorg/w3c/dom/Element;

    .line 114
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->parseVersion(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->setVersion(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;)V

    goto :goto_1

    .line 116
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->parseClose()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->setClose(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;)V

    goto :goto_1

    .line 118
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "background_color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->parseBackgroundColor(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->setBackGroundColor(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->parseImage(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->setImage(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->parseDrawing(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->setDrawing(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)V

    goto :goto_1

    .line 124
    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "undo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->parseUndo(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->setUndo(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method protected bridge synthetic parseElement(Lorg/w3c/dom/Document;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->parseElement(Lorg/w3c/dom/Document;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;

    move-result-object p1

    return-object p1
.end method

.method public final wrapBackgroundColorXmlContent(ILjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_1

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "actions"

    .line 177
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 178
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "background_color"

    .line 180
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "color"

    .line 181
    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 185
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch background color cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch background action seq cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapCloseXmlContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    const-string v0, "close"

    .line 224
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final wrapDrawingXmlContent(ILjava/lang/String;FZLjava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "FZ",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_3

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1

    .line 150
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "actions"

    .line 153
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 154
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "drawing"

    .line 156
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "color"

    .line 157
    invoke-interface {p1, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string p3, "width"

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "erase"

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "points"

    .line 161
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    const-string p3, "encoding"

    const-string p4, "Base64"

    .line 162
    invoke-interface {p2, p3, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->encodePoints(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 165
    invoke-interface {p1, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 166
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 168
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch drawing points cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch drawing width cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_2
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch drawing color cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_3
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch drawing action seq cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapImageXmlContent(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_2

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "actions"

    .line 197
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 198
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "image"

    .line 200
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "encoding"

    .line 201
    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 204
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 206
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch image data cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch image encode cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_2
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Sketch image action seq cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapUndoXmlContent(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_0

    const-string v0, "actions"

    .line 213
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 214
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "undo"

    .line 216
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 218
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 220
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 211
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "Undo action seq cannot less than 0."

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapVersionXmlContent(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const-string v0, "version"

    .line 136
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 134
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "version id must lager than 0"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
