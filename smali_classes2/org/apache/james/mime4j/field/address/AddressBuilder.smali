.class public Lorg/apache/james/mime4j/field/address/AddressBuilder;
.super Ljava/lang/Object;
.source "AddressBuilder.java"


# static fields
.field public static final DEFAULT:Lorg/apache/james/mime4j/field/address/AddressBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressBuilder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/AddressBuilder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressBuilder;->DEFAULT:Lorg/apache/james/mime4j/field/address/AddressBuilder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAddress(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/AddressBuilder;->parseAddress(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object p1

    return-object p1
.end method

.method public parseAddress(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 53
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseAddress()Lorg/apache/james/mime4j/field/address/ASTaddress;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/ASTaddress;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object p1

    return-object p1
.end method

.method public parseAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 75
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/AddressBuilder;->parseAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object p1

    return-object p1
.end method

.method public parseAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 71
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseAddressList()Lorg/apache/james/mime4j/field/address/ASTaddress_list;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddressList(Lorg/apache/james/mime4j/field/address/ASTaddress_list;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object p1

    return-object p1
.end method

.method public parseGroup(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 117
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/AddressBuilder;->parseGroup(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Group;

    move-result-object p1

    return-object p1
.end method

.method public parseGroup(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Group;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressBuilder;->parseAddress(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object p1

    .line 110
    instance-of p2, p1, Lorg/apache/james/mime4j/dom/address/Group;

    if-eqz p2, :cond_0

    .line 113
    check-cast p1, Lorg/apache/james/mime4j/dom/address/Group;

    return-object p1

    .line 111
    :cond_0
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    const-string p2, "Not a group address"

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 96
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/AddressBuilder;->parseMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1
.end method

.method public parseMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 92
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseMailbox()Lorg/apache/james/mime4j/field/address/ASTmailbox;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/ASTmailbox;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1
.end method
