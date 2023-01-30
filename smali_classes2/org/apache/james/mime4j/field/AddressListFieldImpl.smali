.class public Lorg/apache/james/mime4j/field/AddressListFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "AddressListFieldImpl.java"

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

.field private parseException:Lorg/apache/james/mime4j/field/address/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lorg/apache/james/mime4j/field/AddressListFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/AddressListFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 69
    :try_start_0
    sget-object v1, Lorg/apache/james/mime4j/field/address/AddressBuilder;->DEFAULT:Lorg/apache/james/mime4j/field/address/AddressBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/field/address/AddressBuilder;->parseAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->addressList:Lorg/apache/james/mime4j/dom/address/AddressList;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    iput-object v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parseException:Lorg/apache/james/mime4j/field/address/ParseException;

    :goto_0
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parsed:Z

    return-void
.end method


# virtual methods
.method public getAddressList()Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parse()V

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->addressList:Lorg/apache/james/mime4j/dom/address/AddressList;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/address/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/ParseException;
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parse()V

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parseException:Lorg/apache/james/mime4j/field/address/ParseException;

    return-object v0
.end method
