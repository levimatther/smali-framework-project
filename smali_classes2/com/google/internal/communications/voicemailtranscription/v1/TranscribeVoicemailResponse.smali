.class public final Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TranscribeVoicemailResponse.java"

# interfaces
.implements Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;",
        ">;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSCRIPT_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private transcript_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 400
    new-instance v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-direct {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;-><init>()V

    sput-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->setTranscript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->clearTranscript()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->setTranscriptBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearTranscript()V
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    .line 82
    invoke-static {}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getDefaultInstance()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getTranscript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1

    .line 404
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;
    .locals 1

    .line 199
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;
    .locals 1

    .line 202
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v0, p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;",
            ">;"
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTranscript(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 70
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    .line 71
    iput-object p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 68
    throw p1
.end method

.method private setTranscriptBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    .line 97
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 94
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 303
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 391
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 385
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 372
    :pswitch_2
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 374
    const-class p2, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    monitor-enter p2

    .line 375
    :try_start_0
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 377
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 378
    sput-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 380
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 329
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 331
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_6

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_5

    .line 339
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_4

    const/16 v1, 0xa

    if-eq p3, v1, :cond_3

    .line 351
    invoke-virtual {p0, p3, p2}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 345
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 346
    iget v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    .line 347
    iput-object p3, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_4
    :goto_2
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 361
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 363
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 359
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 365
    :goto_3
    throw p1

    .line 369
    :cond_5
    :pswitch_4
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p1

    .line 334
    :cond_6
    throw v1

    .line 317
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 318
    check-cast p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    .line 320
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->hasTranscript()Z

    move-result p1

    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    .line 321
    invoke-virtual {p3}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->hasTranscript()Z

    move-result v1

    iget-object v2, p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    .line 319
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    .line 322
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_7

    .line 324
    iget p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    iget p2, p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    :cond_7
    return-object p0

    :pswitch_6
    return-object v1

    .line 311
    :pswitch_7
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    return-object p1

    .line 308
    :pswitch_8
    new-instance p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;

    invoke-direct {p1, v1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;-><init>(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$1;)V

    return-object p1

    .line 305
    :pswitch_9
    new-instance p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-direct {p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize()I
    .locals 3

    .line 111
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 115
    iget v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getTranscript()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->memoizedSerializedSize:I

    return v0
.end method

.method public getTranscript()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->transcript_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasTranscript()Z
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getTranscript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
