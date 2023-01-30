.class public Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final DEFAULT_BUFFER_LEN:I = 0x8000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private final mBufferLen:I

.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    const-string v0, "&#0;"

    const-string v1, "&#1;"

    const-string v2, "&#2;"

    const-string v3, "&#3;"

    const-string v4, "&#4;"

    const-string v5, "&#5;"

    const-string v6, "&#6;"

    const-string v7, "&#7;"

    const-string v8, "&#8;"

    const-string v9, "&#9;"

    const-string v10, "&#10;"

    const-string v11, "&#11;"

    const-string v12, "&#12;"

    const-string v13, "&#13;"

    const-string v14, "&#14;"

    const-string v15, "&#15;"

    const-string v16, "&#16;"

    const-string v17, "&#17;"

    const-string v18, "&#18;"

    const-string v19, "&#19;"

    const-string v20, "&#20;"

    const-string v21, "&#21;"

    const-string v22, "&#22;"

    const-string v23, "&#23;"

    const-string v24, "&#24;"

    const-string v25, "&#25;"

    const-string v26, "&#26;"

    const-string v27, "&#27;"

    const-string v28, "&#28;"

    const-string v29, "&#29;"

    const-string v30, "&#30;"

    const-string v31, "&#31;"

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "&quot;"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "&amp;"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-string v60, "&lt;"

    const/16 v61, 0x0

    const-string v62, "&gt;"

    const/16 v63, 0x0

    .line 40
    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    const-string v0, "                                                              "

    .line 53
    sput-object v0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x8000

    .line 72
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mIndent:Z

    .line 68
    iput v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mNesting:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x8000

    .line 82
    :goto_0
    iput p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBufferLen:I

    .line 83
    new-array v0, p1, [C

    iput-object v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mText:[C

    .line 84
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private append(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    .line 89
    iget v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->flush()V

    .line 91
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    .line 93
    :cond_0
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 94
    iput v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 101
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBufferLen:I

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p3, p2

    .line 102
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 107
    :cond_2
    iget v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 109
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->flush()V

    .line 110
    iget v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    :cond_3
    add-int v0, p2, p3

    .line 112
    iget-object v2, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 113
    iput v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private append([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 120
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBufferLen:I

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p3, p2

    .line 121
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append([CII)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 126
    :cond_2
    iget v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 128
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->flush()V

    .line 129
    iget v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    .line 131
    :cond_3
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 132
    iput v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    .line 141
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 142
    sget-object p1, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 144
    :cond_0
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 149
    sget-object v1, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v2, v1

    int-to-char v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    .line 154
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    aget-object v5, v1, v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v4, v3, :cond_2

    sub-int v6, v3, v4

    .line 158
    invoke-direct {p0, p1, v4, v6}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 160
    invoke-direct {p0, v5}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ge v4, v3, :cond_4

    sub-int/2addr v3, v4

    .line 162
    invoke-direct {p0, p1, v4, v3}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    sget-object v0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v0

    int-to-char v1, v1

    add-int/2addr p3, p2

    move v2, p2

    :goto_0
    if-ge p2, p3, :cond_3

    .line 172
    aget-char v3, p1, p2

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    aget-object v3, v0, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-ge v2, p2, :cond_2

    sub-int v4, p2, v2

    .line 176
    invoke-direct {p0, p1, v2, v4}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append([CII)V

    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 178
    invoke-direct {p0, v3}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-ge v2, p2, :cond_4

    sub-int/2addr p2, v2

    .line 180
    invoke-direct {p0, p1, v2, p2}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append([CII)V

    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 249
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 250
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 185
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(C)V

    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 188
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(C)V

    .line 190
    :cond_0
    invoke-direct {p0, p2}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    const-string p1, "=\""

    .line 191
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p3}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 194
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(C)V

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 201
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 206
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 211
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->flush()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 220
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mNesting:I

    .line 221
    iget-boolean v2, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v2, :cond_0

    const-string p1, " />\n"

    .line 222
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-boolean v2, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    if-eqz v2, :cond_1

    .line 225
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->appendIndent(I)V

    :cond_1
    const-string v0, "</"

    .line 227
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 229
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 230
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(C)V

    .line 232
    :cond_2
    invoke-direct {p0, p2}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    const-string p1, ">\n"

    .line 233
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 235
    :goto_0
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 242
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_3

    .line 257
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mText:[C

    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 259
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 261
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-direct {p0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->flushBytes()V

    .line 265
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->flushBytes()V

    .line 271
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 262
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    iget-object v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mText:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 274
    iget-object v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 276
    :goto_1
    iput v2, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mPos:I

    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 285
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 298
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 307
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 312
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 317
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mIndent:Z

    return-void

    .line 321
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 330
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 331
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 332
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    iput-object p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception p1

    .line 337
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    throw p1

    :catch_1
    move-exception p1

    .line 334
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    throw p1

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 352
    iput-object p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 357
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 362
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "yes"

    goto :goto_0

    :cond_0
    const-string p2, "no"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' ?>\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 374
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    const-string v0, ">\n"

    .line 375
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 378
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->appendIndent(I)V

    .line 380
    :cond_1
    iget v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mNesting:I

    const/16 v0, 0x3c

    .line 381
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(C)V

    if-eqz p1, :cond_2

    .line 383
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 384
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(C)V

    .line 386
    :cond_2
    invoke-direct {p0, p2}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 387
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    const/4 p1, 0x0

    .line 388
    iput-boolean p1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 407
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ">"

    .line 408
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 409
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 412
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 394
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ">"

    .line 395
    invoke-direct {p0, v0}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 396
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mInTag:Z

    .line 398
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 399
    iget-boolean v0, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    add-int/2addr p2, p3

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 400
    aget-char p1, p1, p2

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    move v1, p3

    :cond_1
    iput-boolean v1, p0, Ltct/gpdatahub/sdk/common/utils/FastXmlSerializer;->mLineStart:Z

    :cond_2
    return-object p0
.end method
