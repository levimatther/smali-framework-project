.class public Lorg/apache/james/mime4j/field/LenientFieldParser;
.super Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.source "LenientFieldParser.java"


# static fields
.field private static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/apache/james/mime4j/field/LenientFieldParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/LenientFieldParser;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 133
    sget-object v0, Lorg/apache/james/mime4j/field/UnstructuredFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;-><init>(Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 134
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTypeFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 136
    sget-object v0, Lorg/apache/james/mime4j/field/ContentLengthFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 138
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 140
    sget-object v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 142
    sget-object v0, Lorg/apache/james/mime4j/field/ContentIdFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-ID"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 144
    sget-object v0, Lorg/apache/james/mime4j/field/ContentMD5FieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-MD5"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 146
    sget-object v0, Lorg/apache/james/mime4j/field/ContentDescriptionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Description"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 148
    sget-object v0, Lorg/apache/james/mime4j/field/ContentLanguageFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Language"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 150
    sget-object v0, Lorg/apache/james/mime4j/field/ContentLocationFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Content-Location"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 152
    sget-object v0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "MIME-Version"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 155
    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Date"

    .line 156
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Date"

    .line 157
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 159
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxListFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "From"

    .line 160
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-From"

    .line 161
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 163
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "Sender"

    .line 164
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Sender"

    .line 165
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    .line 167
    sget-object v0, Lorg/apache/james/mime4j/field/AddressListFieldLenientImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    const-string v1, "To"

    .line 168
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-To"

    .line 169
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Cc"

    .line 170
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Cc"

    .line 171
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Bcc"

    .line 172
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Resent-Bcc"

    .line 173
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    const-string v1, "Reply-To"

    .line 174
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/dom/FieldParser;)V

    return-void
.end method

.method public static getParser()Lorg/apache/james/mime4j/dom/FieldParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ParsedField;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/apache/james/mime4j/field/LenientFieldParser;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 129
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/LenientFieldParser;->parse(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 94
    invoke-static {p0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object p0

    .line 95
    sget-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v0, p0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseField(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/stream/RawField;

    move-result-object p0

    .line 98
    sget-object v0, Lorg/apache/james/mime4j/field/LenientFieldParser;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-interface {v0, p0, p1}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 78
    sget-object v0, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    invoke-virtual {v0, p0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseField(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/stream/RawField;

    move-result-object p0

    .line 79
    sget-object v0, Lorg/apache/james/mime4j/field/LenientFieldParser;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    invoke-interface {v0, p0, p1}, Lorg/apache/james/mime4j/dom/FieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/field/ParsedField;

    move-result-object p0

    return-object p0
.end method
