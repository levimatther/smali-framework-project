.class public Lorg/apache/james/mime4j/field/MailboxFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/MailboxField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/MailboxField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mailbox:Lorg/apache/james/mime4j/dom/address/Mailbox;

.field private parseException:Lorg/apache/james/mime4j/field/address/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 68
    :try_start_0
    sget-object v1, Lorg/apache/james/mime4j/field/address/AddressBuilder;->DEFAULT:Lorg/apache/james/mime4j/field/address/AddressBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/field/address/AddressBuilder;->parseMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->mailbox:Lorg/apache/james/mime4j/dom/address/Mailbox;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    iput-object v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parseException:Lorg/apache/james/mime4j/field/address/ParseException;

    :goto_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parsed:Z

    return-void
.end method


# virtual methods
.method public getMailbox()Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1

    .line 47
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parse()V

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->mailbox:Lorg/apache/james/mime4j/dom/address/Mailbox;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/dom/field/ParseException;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->getParseException()Lorg/apache/james/mime4j/field/address/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/ParseException;
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parse()V

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldImpl;->parseException:Lorg/apache/james/mime4j/field/address/ParseException;

    return-object v0
.end method
