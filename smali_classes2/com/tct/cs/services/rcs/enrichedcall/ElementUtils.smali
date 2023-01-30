.class public Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;
.super Ljava/lang/Object;
.source "ElementUtils.java"


# static fields
.field public static final PRE_CALL_IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final PRE_CALL_LOCATION:Ljava/lang/String; = "location"

.field public static final PRE_CALL_PITCTURE:Ljava/lang/String; = "picture_url"

.field public static final PRE_CALL_SUBJECT:Ljava/lang/String; = "subject"

.field private static sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ElementUtils"

    .line 95
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBackgroundColorXmlContent(ILjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 554
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;

    .line 555
    invoke-virtual {v0, p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->wrapBackgroundColorXmlContent(ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateBackgroundColorXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;->getColor()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateBackgroundColorXmlContent(ILjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 567
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "backGroundColor cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateBoundsXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 364
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    .line 365
    invoke-virtual {v0, p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapBoundsXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateBoundsXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;->getPoint()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateBoundsXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B

    move-result-object p0

    return-object p0

    .line 377
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "bounds cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateCallComposerXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getComposerid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->isImportance()Ljava/lang/Boolean;

    move-result-object v2

    .line 116
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {v0, v1, v2, v3, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateCallComposerXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "No Call Composer element exits!"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateCallComposerXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p1, "No Call Composer element exits!"

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 183
    invoke-virtual/range {v1 .. v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->wrapXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateCallComposerXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p1, "No Call Composer element exits!"

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;

    .line 163
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->wrapXmlContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateDrawingXmlContentForMap(ILjava/lang/String;FZLjava/util/List;)[B
    .locals 7
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

    .line 236
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 237
    invoke-virtual/range {v1 .. v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapDrawingXmlContent(ILjava/lang/String;FZLjava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateDrawingXmlContentForMap(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getColor()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->isErase()Z

    move-result v3

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getPoints()Ljava/util/List;

    move-result-object p0

    .line 251
    invoke-static {v0, v1, v2, v3, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateDrawingXmlContentForMap(ILjava/lang/String;FZLjava/util/List;)[B

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "drawing cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateDrawingXmlContentForSketch(ILjava/lang/String;FZLjava/util/List;)[B
    .locals 7
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

    .line 287
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 288
    invoke-virtual/range {v1 .. v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->wrapDrawingXmlContent(ILjava/lang/String;FZLjava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateDrawingXmlContentForSketch(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getColor()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->isErase()Z

    move-result v3

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;->getPoints()Ljava/util/List;

    move-result-object p0

    .line 302
    invoke-static {v0, v1, v2, v3, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateDrawingXmlContentForSketch(ILjava/lang/String;FZLjava/util/List;)[B

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "drawing cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateImageXmlContent(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 596
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;

    .line 597
    invoke-virtual {v0, p0, p1, p2}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->wrapImageXmlContent(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateImageXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->getEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;->getImageData()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateImageXmlContent(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 609
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "image cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateMapCloseXmlContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 717
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    .line 718
    invoke-virtual {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapCloseXmlContent()[B

    move-result-object v0

    return-object v0
.end method

.method public static generateMapVersionXmlContent(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 681
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    .line 682
    invoke-virtual {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapVersionXmlContent(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateMapXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 625
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->isDrawingElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->getDrawing()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateDrawingXmlContentForMap(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)[B

    move-result-object p0

    return-object p0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->isBoundsElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->getBounds()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateBoundsXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Bounds;)[B

    move-result-object p0

    return-object p0

    .line 629
    :cond_1
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->isMarkerElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->getMarker()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateMarkerXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;)[B

    move-result-object p0

    return-object p0

    .line 631
    :cond_2
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->isRemoveElement()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->getRemove()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateRemoveMarkerXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;)[B

    move-result-object p0

    return-object p0

    .line 633
    :cond_3
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->isUndoElement()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->getUndo()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateUndoXmlContentForMap(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)[B

    move-result-object p0

    return-object p0

    .line 635
    :cond_4
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->isUserElement()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 636
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;->getUser()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateUserXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;)[B

    move-result-object p0

    return-object p0

    .line 638
    :cond_5
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "no valid share map elements found"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 623
    :cond_6
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "share map elements cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateMarkerXmlContent(ILjava/lang/String;Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 326
    invoke-virtual/range {v1 .. v6}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapMarkerXmlContent(ILjava/lang/String;Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateMarkerXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->getPoint()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Marker;->getSnippet()Ljava/lang/String;

    move-result-object p0

    .line 340
    invoke-static {v0, v1, v2, v3, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateMarkerXmlContent(ILjava/lang/String;Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 338
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "marker cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateNoteXmlContent(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 778
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 784
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->getXml(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 782
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "the maximum length of the note should be 60 characters"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 779
    :cond_1
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "note must not be null or empty!"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateRemoveMarkerXmlContent(ILjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 517
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    .line 518
    invoke-virtual {v0, p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapRemoveXmlContent(ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateRemoveMarkerXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Remove;->getMarkerId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateRemoveMarkerXmlContent(ILjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 530
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "remove cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateSketchCloseXmlContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 732
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;

    .line 733
    invoke-virtual {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->wrapCloseXmlContent()[B

    move-result-object v0

    return-object v0
.end method

.method public static generateSketchVersionXmlContent(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 702
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;

    .line 703
    invoke-virtual {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->wrapVersionXmlContent(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateSketchXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 652
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->isDrawingElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->getDrawing()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateDrawingXmlContentForSketch(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Drawing;)[B

    move-result-object p0

    return-object p0

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->isBackGroundColorElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->getBackGroundColor()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateBackgroundColorXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/BackGroundColor;)[B

    move-result-object p0

    return-object p0

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->isImageElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->getImage()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateImageXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Image;)[B

    move-result-object p0

    return-object p0

    .line 658
    :cond_2
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->isUndoElement()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;->getUndo()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;

    move-result-object p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateUndoXmlContentForSektch(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)[B

    move-result-object p0

    return-object p0

    .line 661
    :cond_3
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "no valid share sketch elements found"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 650
    :cond_4
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "share sketch elements cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateUndoXmlContentForMap(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    .line 402
    invoke-virtual {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapUndoXmlContent(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateUndoXmlContentForMap(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;->getSeq()I

    move-result p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateUndoXmlContentForMap(I)[B

    move-result-object p0

    return-object p0

    .line 414
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "undo cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateUndoXmlContentForSektch(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Undo;->getSeq()I

    move-result p0

    invoke-static {p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateUndoXmlContentForSketch(I)[B

    move-result-object p0

    return-object p0

    .line 454
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "undo cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateUndoXmlContentForSketch(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 441
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;

    .line 442
    invoke-virtual {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->wrapUndoXmlContent(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateUserXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 482
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    check-cast v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;

    .line 483
    invoke-virtual {v0, p0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->wrapUserXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateUserXmlContent(Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;->getSeq()I

    move-result v0

    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/User;->getPoint()Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/ElementUtils;->generateUserXmlContent(ILcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;)[B

    move-result-object p0

    return-object p0

    .line 495
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string v0, "user cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCallComposerJsonString(Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 124
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getSubject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subject"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->isImportance()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->isImportance()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "importance"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getLocation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string v2, "picture_url"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-gtz p0, :cond_5

    return-object v0

    .line 142
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseCallComposerXML(Lcom/gsma/services/rcs/contact/ContactId;[B)Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;->generateElementObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;

    .line 200
    invoke-virtual {p1, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->setRemote(Lcom/gsma/services/rcs/contact/ContactId;)V

    return-object p1

    .line 196
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p1, "xml content cannot be null"

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseFileTransferHttpXmlContent([B)Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;
        }
    .end annotation

    .line 814
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;

    invoke-direct {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;-><init>([B)V

    .line 818
    invoke-virtual {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->parse()Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;

    .line 819
    invoke-virtual {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferXmlParserWrapper;->getFileTransferInfo()Lcom/tct/cs/services/rcs/enrichedcall/elements/filetransferviahttp/FileTransferHttpInfoElements;

    move-result-object p0

    return-object p0

    .line 815
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "xmlContent cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseNoteXmlContent(Lcom/gsma/services/rcs/contact/ContactId;[B)Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 800
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallWrapper;->generateElementObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;

    .line 801
    invoke-virtual {p1, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->setRemote(Lcom/gsma/services/rcs/contact/ContactId;)V

    return-object p1

    .line 797
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsGenericException;

    const-string p1, "noteXml or remote must not be null or empty!"

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseShareMapContent([B)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 747
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;->generateElementObject([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareMapElements;

    return-object p0

    .line 748
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "xmlContent cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseShareSketchContent([B)Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 764
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    invoke-static {}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchWrapper;->getDefault()Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/ElementWrapper;->generateElementObject([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/ShareSketchElements;

    return-object p0

    .line 765
    :cond_0
    new-instance p0, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "xmlContent cannot be null"

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
