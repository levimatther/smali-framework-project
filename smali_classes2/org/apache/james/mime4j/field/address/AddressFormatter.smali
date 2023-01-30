.class public Lorg/apache/james/mime4j/field/address/AddressFormatter;
.super Ljava/lang/Object;
.source "AddressFormatter.java"


# static fields
.field public static final DEFAULT:Lorg/apache/james/mime4j/field/address/AddressFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressFormatter;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/AddressFormatter;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressFormatter;->DEFAULT:Lorg/apache/james/mime4j/field/address/AddressFormatter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/james/mime4j/dom/address/Group;)Ljava/lang/String;
    .locals 1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lorg/apache/james/mime4j/dom/address/Mailbox;)Ljava/lang/String;
    .locals 1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 81
    :cond_0
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v0, :cond_1

    .line 82
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    goto :goto_0

    .line 83
    :cond_1
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Group;

    if-eqz v0, :cond_2

    .line 84
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;)V

    :goto_0
    return-void

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuppported Address class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 192
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getMailboxes()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2c

    .line 199
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x20

    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0, p1, v1}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x3b

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 190
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Group may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StringBuilder may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 133
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 p2, 0x3e

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mailbox may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StringBuilder may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(Lorg/apache/james/mime4j/dom/address/Group;Z)Ljava/lang/String;
    .locals 1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;Z)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/apache/james/mime4j/dom/address/Mailbox;Z)Ljava/lang/String;
    .locals 1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Address;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v0, :cond_1

    .line 63
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V

    goto :goto_0

    .line 64
    :cond_1
    instance-of v0, p2, Lorg/apache/james/mime4j/dom/address/Group;

    if-eqz v0, :cond_2

    .line 65
    check-cast p2, Lorg/apache/james/mime4j/dom/address/Group;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;Z)V

    :goto_0
    return-void

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsuppported Address class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Group;Z)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 163
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Group;->getMailboxes()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2c

    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x20

    .line 173
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/james/mime4j/field/address/AddressFormatter;->format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V

    goto :goto_0

    :cond_1
    const-string p2, ";"

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 161
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Group may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StringBuilder may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/dom/address/Mailbox;Z)V
    .locals 3

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 97
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p3, v0

    .line 98
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v1, :cond_4

    const/16 v0, 0x3c

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p3, :cond_5

    .line 107
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/james/mime4j/dom/address/DomainList;->toRouteString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    .line 108
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_5
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    const/16 p3, 0x40

    .line 112
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v1, :cond_7

    const/16 p2, 0x3e

    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    return-void

    .line 95
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mailbox may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StringBuilder may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
