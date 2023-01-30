.class Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V

    .line 200
    iget-object p2, p2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 2

    .line 175
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 176
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object p2

    check-cast p2, Lorg/apache/james/mime4j/field/address/ASTlocal_part;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object p2

    .line 177
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTdomain;

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 141
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object p1

    .line 142
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/ASTroute;

    if-eqz v1, :cond_0

    .line 143
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTroute;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildRoute(Lorg/apache/james/mime4j/field/address/ASTroute;)Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object p1

    .line 144
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    .line 145
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 151
    :goto_0
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-eqz v1, :cond_1

    .line 152
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1

    .line 149
    :cond_2
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/ASTgroup_body;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 89
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object p1

    .line 91
    instance-of v2, p1, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    if-eqz v2, :cond_0

    .line 92
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/ASTmailbox;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1

    .line 96
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/dom/address/MailboxList;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method private buildNameAddr(Lorg/apache/james/mime4j/field/address/ASTname_addr;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 115
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object p1

    .line 117
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/ASTphrase;

    if-eqz v1, :cond_1

    .line 118
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTphrase;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v0

    .line 124
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p2

    .line 131
    new-instance v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 128
    new-instance p2, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 134
    :cond_0
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1

    .line 120
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1
.end method

.method private buildRoute(Lorg/apache/james/mime4j/field/address/ASTroute;)Lorg/apache/james/mime4j/dom/address/DomainList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/ASTroute;->jjtGetNumChildren()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 160
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object p1

    .line 162
    instance-of v3, p1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    if-eqz v3, :cond_0

    .line 163
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    invoke-direct {p0, p1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_0
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1

    .line 167
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/dom/address/DomainList;

    invoke-direct {p1, v0, v2}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;
    .locals 3

    .line 182
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 183
    iget-object p1, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    if-eq v0, p1, :cond_1

    .line 187
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    if-nez p2, :cond_0

    .line 190
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p1, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddress(Lorg/apache/james/mime4j/field/address/ASTaddress;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 59
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object p1

    .line 60
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v1, :cond_1

    .line 63
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/ASTphrase;

    if-eqz v1, :cond_4

    .line 65
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTphrase;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v0

    .line 67
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    if-eqz v1, :cond_2

    .line 68
    new-instance v1, Lorg/apache/james/mime4j/dom/address/Group;

    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    invoke-direct {p0, v0, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/ASTgroup_body;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V

    return-object v1

    .line 69
    :cond_2
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v1, :cond_3

    .line 71
    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    check-cast v0, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p2

    .line 76
    new-instance v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 79
    :cond_3
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1

    .line 82
    :cond_4
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1
.end method

.method public buildAddressList(Lorg/apache/james/mime4j/field/address/ASTaddress_list;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 49
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/ASTaddress_list;->jjtGetNumChildren()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/field/address/ASTaddress_list;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/address/ASTaddress;

    .line 51
    invoke-virtual {p0, v2, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/ASTaddress;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object v2

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Lorg/apache/james/mime4j/dom/address/AddressList;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lorg/apache/james/mime4j/dom/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public buildMailbox(Lorg/apache/james/mime4j/field/address/ASTmailbox;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 101
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object p1

    .line 102
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    if-eqz v0, :cond_2

    .line 107
    check-cast p1, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lorg/apache/james/mime4j/field/address/ASTname_addr;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 109
    :cond_2
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw p1
.end method
