.class public Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxFieldLenientImpl.java"

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

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 4

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->parsed:Z

    .line 55
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->getRawField()Lorg/apache/james/mime4j/stream/RawField;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    .line 57
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getDelimiterIdx()I

    move-result v3

    add-int/2addr v3, v0

    if-nez v2, :cond_1

    .line 59
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    const/4 v3, 0x0

    .line 66
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/stream/ParserCursor;

    invoke-interface {v2}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lorg/apache/james/mime4j/stream/ParserCursor;-><init>(II)V

    .line 67
    sget-object v1, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->DEFAULT:Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/james/mime4j/field/address/LenientAddressBuilder;->parseMailbox(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/ParserCursor;Ljava/util/BitSet;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->mailbox:Lorg/apache/james/mime4j/dom/address/Mailbox;

    return-void
.end method


# virtual methods
.method public getMailbox()Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1

    .line 47
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->parse()V

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->mailbox:Lorg/apache/james/mime4j/dom/address/Mailbox;

    return-object v0
.end method
