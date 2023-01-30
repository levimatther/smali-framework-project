.class public Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;
.super Ljava/lang/Object;
.source "MaximalBodyDescriptor.java"

# interfaces
.implements Lorg/apache/james/mime4j/stream/BodyDescriptor;


# static fields
.field private static final CONTENT_DESCRIPTION:Ljava/lang/String;

.field private static final CONTENT_DISPOSITION:Ljava/lang/String;

.field private static final CONTENT_ID:Ljava/lang/String;

.field private static final CONTENT_LANGUAGE:Ljava/lang/String;

.field private static final CONTENT_LENGTH:Ljava/lang/String;

.field private static final CONTENT_LOCATION:Ljava/lang/String;

.field private static final CONTENT_MD5:Ljava/lang/String;

.field private static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String;

.field private static final CONTENT_TYPE:Ljava/lang/String;

.field private static final MIME_VERSION:Ljava/lang/String;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/lang/String;

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final subType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_TYPE:Ljava/lang/String;

    .line 51
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Length"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_LENGTH:Ljava/lang/String;

    .line 52
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_TRANSFER_ENCODING:Ljava/lang/String;

    .line 53
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Disposition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    .line 54
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_ID:Ljava/lang/String;

    .line 55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-MD5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_MD5:Ljava/lang/String;

    .line 56
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Description"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DESCRIPTION:Ljava/lang/String;

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Language"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_LANGUAGE:Ljava/lang/String;

    .line 58
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Content-Location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_LOCATION:Ljava/lang/String;

    .line 59
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MIME-Version"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->MIME_VERSION:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->mediaType:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->subType:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->boundary:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->charset:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DESCRIPTION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDescriptionField;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDescriptionField;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentDispositionCreationDate()Ljava/util/Date;
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentDispositionFilename()Ljava/lang/String;
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getFilename()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentDispositionModificationDate()Ljava/util/Date;
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentDispositionParameters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getParameters()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentDispositionReadDate()Ljava/util/Date;
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getReadDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentDispositionSize()J
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getContentDispositionType()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_DISPOSITION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentIdField;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentIdField;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentLanguage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentLanguageField;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentLanguageField;->getLanguages()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_LENGTH:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentLengthField;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentLengthField;->getContentLength()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_LOCATION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentLocationField;

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentLocationField;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentMD5Raw()Ljava/lang/String;
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_MD5:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentMD5Field;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentMD5Field;->getMD5Raw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentTypeParameters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTypeField;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTypeField;->getParameters()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeMajorVersion()I
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->MIME_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/MimeVersionField;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/MimeVersionField;->getMajorVersion()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getMimeMinorVersion()I
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->MIME_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/MimeVersionField;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/MimeVersionField;->getMinorVersion()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->fields:Ljava/util/Map;

    sget-object v1, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->CONTENT_TRANSFER_ENCODING:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/james/mime4j/dom/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "7bit"

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mimeType="

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaType="

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subType="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", boundary="

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", charset="

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MaximalBodyDescriptor;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
