.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;
.super Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;
.source "ShareMapWrapper.java"


# static fields
.field private static final ACTIONS:Ljava/lang/String; = "actions"

.field private static final ACTION_SEQ:Ljava/lang/String; = "seq"

.field private static final BOUNDS:Ljava/lang/String; = "bounds"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final DRAWING:Ljava/lang/String; = "drawing"

.field private static final DRAWING_COLOR:Ljava/lang/String; = "color"

.field private static final DRAWING_EARSE:Ljava/lang/String; = "erase"

.field private static final DRAWING_WIDTH:Ljava/lang/String; = "width"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MARKER:Ljava/lang/String; = "marker"

.field private static final POINT:Ljava/lang/String; = "point"

.field private static final POINTS:Ljava/lang/String; = "points"

.field private static final REMOVE:Ljava/lang/String; = "remove"

.field private static final SNIPPET:Ljava/lang/String; = "snippet"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final UNDO:Ljava/lang/String; = "undo"

.field private static final USER:Ljava/lang/String; = "user"

.field private static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;-><init>()V

    return-void
.end method

.method private decodePoint(Ljava/lang/String;Ljava/lang/String;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;
    .locals 3

    .line 470
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "Base64"

    .line 474
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 478
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, ","

    .line 479
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 480
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 482
    new-instance v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;-><init>(Ljava/lang/String;Landroid/util/Pair;)V

    return-object v1
.end method

.method private decodePoints(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 5
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

    .line 443
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "encoding"

    .line 448
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Base64"

    .line 449
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    .line 454
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 458
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\r\n"

    .line 460
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 461
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 462
    invoke-direct {p0, p1, v4}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->decodePoint(Ljava/lang/String;Ljava/lang/String;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private encodePoint(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)Ljava/lang/String;
    .locals 2

    .line 436
    invoke-virtual {p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->pointToString(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodePoints(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 415
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    invoke-virtual {v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Base64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 419
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 420
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, ""

    return-object p1

    .line 424
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->pointToString(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\n\r"

    .line 427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->pointToString(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;
    .locals 2

    .line 105
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-nez v0, :cond_2

    .line 109
    const-class v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    if-nez v1, :cond_1

    .line 111
    new-instance v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    invoke-direct {v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;-><init>()V

    sput-object v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    .line 113
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    :cond_2
    :goto_0
    sget-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->mDefault:Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    return-object v0
.end method

.method private parseBounds(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;
    .locals 2

    const-string v0, "seq"

    .line 336
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "encoding"

    .line 337
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->decodePoint(Ljava/lang/String;Ljava/lang/String;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    move-result-object p1

    .line 340
    new-instance v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;

    invoke-direct {v1, v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;-><init>(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)V

    return-object v1
.end method

.method private parseClose()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;
    .locals 1

    .line 310
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;-><init>()V

    return-object v0
.end method

.method private parseDrawing(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;
    .locals 9

    const-string v0, "seq"

    .line 314
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "color"

    .line 315
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "erase"

    .line 316
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v0, "width"

    .line 317
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 321
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v6, v0

    .line 322
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 323
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 324
    instance-of v7, v0, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_0

    .line 325
    check-cast v0, Lorg/w3c/dom/Element;

    .line 326
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "points"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    invoke-direct {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->decodePoints(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    new-instance p1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;-><init>(ILjava/lang/String;FZLjava/util/List;)V

    return-object p1
.end method

.method private parseMarker(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;
    .locals 9

    const-string v0, "seq"

    .line 349
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 356
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 357
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 358
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 359
    instance-of v7, v0, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_3

    .line 360
    check-cast v0, Lorg/w3c/dom/Element;

    .line 361
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 362
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 363
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "snippet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 365
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 366
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 367
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "point"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "encoding"

    .line 368
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->decodePoint(Ljava/lang/String;Ljava/lang/String;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    move-result-object v5

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_4
    new-instance p1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;Ljava/lang/String;)V

    return-object p1
.end method

.method private parseRemove(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;
    .locals 6

    const-string v0, "seq"

    .line 397
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 400
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 401
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 402
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 403
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 404
    check-cast v3, Lorg/w3c/dom/Element;

    .line 405
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_1
    new-instance p1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;

    invoke-direct {p1, v0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method private parseUndo(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;
    .locals 1

    const-string v0, "seq"

    .line 344
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 345
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;-><init>(I)V

    return-object v0
.end method

.method private parseUser(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;
    .locals 6

    const-string v0, "seq"

    .line 378
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 381
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 382
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 383
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 384
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 385
    check-cast v3, Lorg/w3c/dom/Element;

    .line 386
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "point"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "encoding"

    .line 387
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->decodePoint(Ljava/lang/String;Ljava/lang/String;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_1
    new-instance p1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;

    invoke-direct {p1, v0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;-><init>(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)V

    return-object p1
.end method

.method private parseVersion(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;
    .locals 1

    const-string v0, "id"

    .line 305
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;-><init>(I)V

    return-object v0
.end method

.method private pointToString(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getPoint()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getPoint()Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected parseElement(Lorg/w3c/dom/Document;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 122
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;-><init>()V

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 124
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 125
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_7

    .line 126
    check-cast v2, Lorg/w3c/dom/Element;

    .line 127
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseVersion(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setVersion(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Version;)V

    goto/16 :goto_1

    .line 129
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseClose()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setClose(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Close;)V

    goto/16 :goto_1

    .line 131
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseDrawing(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setDrawing(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)V

    goto :goto_1

    .line 133
    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "undo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseUndo(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setUndo(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)V

    goto :goto_1

    .line 135
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bounds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseBounds(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setBounds(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;)V

    goto :goto_1

    .line 137
    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "marker"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseMarker(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setMarker(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;)V

    goto :goto_1

    .line 139
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 140
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseUser(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setUser(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;)V

    goto :goto_1

    .line 141
    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "remove"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 142
    invoke-direct {p0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseRemove(Lorg/w3c/dom/Element;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->setRemove(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;)V

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method protected bridge synthetic parseElement(Lorg/w3c/dom/Document;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->parseElement(Lorg/w3c/dom/Document;)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;

    move-result-object p1

    return-object p1
.end method

.method public final wrapBoundsXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "actions"

    .line 194
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bounds"

    .line 197
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encoding"

    invoke-interface {p1, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->encodePoint(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 201
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 203
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Bounds point cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Bounds action seq cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapCloseXmlContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    const-string v0, "close"

    .line 300
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

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

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1

    .line 167
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "actions"

    .line 170
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 171
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "drawing"

    .line 173
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "color"

    .line 174
    invoke-interface {p1, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string p3, "width"

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "erase"

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "points"

    .line 178
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    const/4 p3, 0x0

    .line 179
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    invoke-virtual {p3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getEncoding()Ljava/lang/String;

    move-result-object p3

    const-string p4, "encoding"

    invoke-interface {p2, p4, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p5}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->encodePoints(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 182
    invoke-interface {p1, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 183
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 185
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Map drawing points cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Map drawing width cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_2
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Map drawing color cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_3
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Map drawing action seq cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapMarkerXmlContent(ILjava/lang/String;Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_4

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    const-string v0, "actions"

    .line 229
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "marker"

    .line 232
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "id"

    .line 234
    invoke-virtual {p0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 235
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 236
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p2, "point"

    .line 238
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 239
    invoke-virtual {p3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getEncoding()Ljava/lang/String;

    move-result-object p3

    const-string v1, "encoding"

    invoke-interface {p2, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 242
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "title"

    .line 243
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 244
    invoke-interface {p2, p4}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 245
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 248
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "snippet"

    .line 249
    invoke-virtual {p0, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 250
    invoke-interface {p2, p5}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 251
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 254
    :cond_1
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 256
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 227
    :cond_2
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Marker point cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_3
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Marker id cannot be null"

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_4
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Marker action seq cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapRemoveXmlContent(ILjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_1

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "actions"

    .line 285
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 286
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "remove"

    .line 288
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "id"

    .line 290
    invoke-virtual {p0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 291
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->setNodeValue(Ljava/lang/String;)V

    .line 292
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 294
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 296
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 283
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Remove id cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "Remove action seq cannot less than 0."

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

    .line 210
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "undo"

    .line 213
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 215
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 217
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 208
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "Undo action seq cannot less than 0."

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapUserXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "actions"

    .line 265
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 266
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seq"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "user"

    .line 268
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v1, "point"

    .line 270
    invoke-virtual {p0, v1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 271
    invoke-virtual {p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->getEncoding()Ljava/lang/String;

    move-result-object p2

    const-string v2, "encoding"

    invoke-interface {v1, v2, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 274
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 276
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 263
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "User point cannot be null."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :cond_1
    new-instance p1, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p2, "User action seq cannot less than 0."

    invoke-direct {p1, p2}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final wrapVersionXmlContent(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const-string v0, "version"

    .line 153
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->generateElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 154
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getXmlContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "version id must lager than 0"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
