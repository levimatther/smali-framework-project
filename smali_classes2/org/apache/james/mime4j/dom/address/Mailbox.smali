.class public Lorg/apache/james/mime4j/dom/address/Mailbox;
.super Lorg/apache/james/mime4j/dom/address/Address;
.source "Mailbox.java"


# static fields
.field private static final EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final domain:Ljava/lang/String;

.field private final localPart:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final route:Lorg/apache/james/mime4j/dom/address/DomainList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lorg/apache/james/mime4j/dom/address/DomainList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lorg/apache/james/mime4j/dom/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/address/Address;-><init>()V

    if-eqz p3, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->name:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 62
    sget-object p2, Lorg/apache/james/mime4j/dom/address/Mailbox;->EMPTY_ROUTE_LIST:Lorg/apache/james/mime4j/dom/address/DomainList;

    :cond_2
    iput-object p2, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->route:Lorg/apache/james/mime4j/dom/address/DomainList;

    .line 63
    iput-object p3, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 64
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    move-object p4, v0

    :cond_4
    iput-object p4, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    return-void

    .line 59
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 2

    .line 72
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final doAddMailboxesTo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 192
    :cond_0
    instance-of v1, p1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 194
    :cond_1
    check-cast p1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    .line 195
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/apache/james/mime4j/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/james/mime4j/util/LangUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->route:Lorg/apache/james/mime4j/dom/address/DomainList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 168
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->localPart:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lorg/apache/james/mime4j/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Mailbox;->domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
