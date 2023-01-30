.class public Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "AddressListFieldLenientImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/AddressListField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addressList:Lorg/apache/james/mime4j/dom/address/AddressList;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 4

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->parsed:Z

    .line 58
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->getRawField()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    .line 60
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getDelimiterIdx()I

    move-result v3

    add-int/2addr v3, v0

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lorg/apache/james/mime4j/dom/address/AddressList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/dom/address/AddressList;-><init>(Ljava/util/List;Z)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->addressList:Lorg/apache/james/mime4j/dom/address/AddressList;

    return-void

    .line 67
    :cond_0
    invoke-static {v1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    const/4 v3, 0x0

    .line 70
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-interface {v2}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 71
    sget-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->DEFAULT:Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;

    invoke-virtual {v1, v2, v0}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseAddressList(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->addressList:Lorg/apache/james/mime4j/dom/address/AddressList;

    return-void
.end method


# virtual methods
.method public getAddressList()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    .line 50
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->parse()V

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->addressList:Lorg/apache/james/mime4j/dom/address/AddressList;

    return-object v0
.end method
