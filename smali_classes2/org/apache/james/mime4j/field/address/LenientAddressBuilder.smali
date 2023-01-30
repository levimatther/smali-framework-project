.class public Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;
.super Ljava/lang/Object;
.source "LenientAddressBuilder.java"


# static fields
.field private static final AT:I = 0x40

.field private static final AT_AND_CLOSING_BRACKET:Ljava/util/BitSet;

.field private static final CLOSING_BRACKET:I = 0x3e

.field private static final CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

.field private static final COLON:I = 0x3a

.field private static final COLON_ONLY:Ljava/util/BitSet;

.field private static final COMMA:I = 0x2c

.field private static final COMMA_ONLY:Ljava/util/BitSet;

.field public static final DEFAULT:Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;

.field private static final OPENING_BRACKET:I = 0x3c

.field private static final SEMICOLON:I = 0x3b

.field private static final SEMICOLON_ONLY:Ljava/util/BitSet;


# instance fields
.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private final parser:Lorg/apache/james/mime4j/stream/RawFieldParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->AT_AND_CLOSING_BRACKET:Ljava/util/BitSet;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3e

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 54
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

    new-array v1, v0, [I

    const/16 v2, 0x2c

    aput v2, v1, v3

    .line 55
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->COMMA_ONLY:Ljava/util/BitSet;

    new-array v1, v0, [I

    const/16 v2, 0x3a

    aput v2, v1, v3

    .line 56
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->COLON_ONLY:Ljava/util/BitSet;

    new-array v0, v0, [I

    const/16 v1, 0x3b

    aput v1, v0, v3

    .line 57
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->SEMICOLON_ONLY:Ljava/util/BitSet;

    .line 59
    new-instance v0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;

    sget-object v1, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;-><init>(Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    sput-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->DEFAULT:Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;

    return-void

    :array_0
    .array-data 4
        0x40
        0x3e
    .end array-data
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 67
    new-instance p1, Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-direct {p1}, Lorg/apache/james/mime4j/stream/RawFieldParser;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    return-void
.end method

.method private createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    new-instance v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-direct {v1, v0, v0, p1, v0}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method private createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 2

    .line 132
    new-instance v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public parseAddress(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 3

    .line 310
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 311
    new-instance v1, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    const/4 p1, 0x0

    .line 312
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseAddress(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object p1

    return-object p1
.end method

.method public parseAddress(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 272
    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 274
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 280
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 281
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 284
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseMailboxAddress(Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v3, 0x40

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 287
    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 290
    new-instance p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, v0, p1}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_3
    const/16 p3, 0x3a

    if-ne v2, p3, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 293
    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 295
    sget-object p3, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->SEMICOLON_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseMailboxes(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object p3

    .line 296
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_4

    .line 297
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 298
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    const/16 v2, 0x3b

    if-ne p1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 300
    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 303
    :cond_4
    new-instance p1, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-direct {p1, v0, p3}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p1

    .line 305
    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x3a
        0x40
        0x3c
    .end array-data
.end method

.method public parseAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 3

    .line 333
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 334
    new-instance v1, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 335
    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseAddressList(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object p1

    return-object p1
.end method

.method public parseAddressList(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 4

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 318
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 319
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 321
    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    goto :goto_0

    .line 323
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->COMMA_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseAddress(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_2
    new-instance p1, Lorg/apache/james/mime4j/dom/address/AddressList;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lorg/apache/james/mime4j/dom/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    if-eqz p3, :cond_0

    .line 74
    invoke-virtual {p3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v1, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 79
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v1, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->copyContent(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 84
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseGroup(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Group;
    .locals 3

    .line 265
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 266
    new-instance v1, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 267
    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseGroup(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Group;

    move-result-object p1

    return-object p1
.end method

.method public parseGroup(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Group;
    .locals 4

    .line 251
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    sget-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->COLON_ONLY:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance p1, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p1

    .line 255
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 256
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 258
    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 260
    :cond_1
    sget-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->SEMICOLON_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseMailboxes(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/util/List;

    move-result-object p1

    .line 261
    new-instance p2, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-direct {p2, v0, p1}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object p2
.end method

.method public parseMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 3

    .line 221
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 222
    new-instance v1, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    const/4 p1, 0x0

    .line 223
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseMailbox(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1
.end method

.method public parseMailbox(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 196
    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 204
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v1

    .line 205
    invoke-interface {p1, v1}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 208
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseMailboxAddress(Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v3, 0x40

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 211
    invoke-virtual {p2, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, v0, p1}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 216
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x40
        0x3c
    .end array-data
.end method

.method parseMailboxAddress(Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 6

    .line 139
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, v1, v1, p1, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v0

    .line 143
    invoke-interface {p2, v0}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 145
    invoke-virtual {p3, v0}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 149
    sget-object v0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseRoute(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v0

    .line 150
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    sget-object v3, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->AT_AND_CLOSING_BRACKET:Ljava/util/BitSet;

    invoke-virtual {v2, p2, p3, v3}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseValue(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 155
    invoke-interface {p2, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 157
    invoke-virtual {p3, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 161
    sget-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->CLOSING_BRACKET_ONLY:Ljava/util/BitSet;

    invoke-virtual {p0, p2, p3, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 165
    :cond_2
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 166
    invoke-interface {p2, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 168
    invoke-virtual {p3, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 172
    :goto_0
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_4

    .line 173
    invoke-virtual {p3}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 174
    invoke-interface {p2, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 175
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v3, p2, p3}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x28

    if-ne v3, v4, :cond_4

    .line 178
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v3, p2, p3}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    goto :goto_0

    .line 183
    :cond_4
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 170
    :cond_5
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 159
    :cond_6
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 147
    :cond_7
    invoke-direct {p0, v1, v1, p1, v1}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->createMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1
.end method

.method parseMailboxes(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/util/ByteSequence;",
            "Lorg/apache/james/mime4j/stream/ParserCursor;",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2c

    aput v2, v0, v1

    .line 228
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 230
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 232
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_4

    .line 234
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v3

    .line 235
    invoke-interface {p1, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    if-eqz p3, :cond_2

    .line 236
    invoke-virtual {p3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 239
    invoke-virtual {p2, v3}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseMailbox(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 243
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method parseRoute(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/DomainList;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 88
    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 90
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :cond_0
    const/4 p3, 0x0

    move-object v1, p3

    .line 94
    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parser:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v2, p1, p2}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipAllWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)V

    .line 95
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v2

    .line 99
    invoke-interface {p1, v2}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 101
    invoke-virtual {p2, v2}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    .line 105
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseDomain(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-nez v1, :cond_2

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p2}, Lorg/apache/james/mime4j/stream/ParserCursor;->getPos()I

    move-result v2

    .line 116
    invoke-interface {p1, v2}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 118
    invoke-virtual {p2, v2}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x3a

    if-ne v4, p1, :cond_6

    add-int/2addr v2, v3

    .line 121
    invoke-virtual {p2, v2}, Lorg/apache/james/mime4j/stream/ParserCursor;->updatePos(I)V

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 127
    new-instance p3, Lorg/apache/james/mime4j/dom/address/DomainList;

    invoke-direct {p3, v1, v3}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;Z)V

    :cond_7
    return-object p3

    :array_0
    .array-data 4
        0x2c
        0x3a
    .end array-data
.end method
