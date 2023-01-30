.class public final Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TranscribeVoicemailRequest.java"

# interfaces
.implements Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;",
        ">;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOICEMAIL_DATA_FIELD_NUMBER:I = 0x1


# instance fields
.field private audioFormat_:I

.field private bitField0_:I

.field private voicemailData_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 463
    new-instance v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-direct {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;-><init>()V

    sput-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->setVoicemailData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->clearVoicemailData()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->setAudioFormat(Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->clearAudioFormat()V

    return-void
.end method

.method private clearAudioFormat()V
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    return-void
.end method

.method private clearVoicemailData()V
    .locals 1

    .line 68
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    .line 69
    invoke-static {}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->getDefaultInstance()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->getVoicemailData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1

    .line 467
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
    .locals 1

    .line 229
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
    .locals 1

    .line 232
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-virtual {v0, p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;",
            ">;"
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAudioFormat(Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    .line 109
    invoke-virtual {p1}, Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 106
    throw p1
.end method

.method private setVoicemailData(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    .line 58
    iput-object p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 55
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 354
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 454
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 448
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 435
    :pswitch_2
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 437
    const-class p2, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    monitor-enter p2

    .line 438
    :try_start_0
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 440
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 441
    sput-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 443
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

    .line 382
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 384
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_8

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_7

    .line 392
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_6

    const/16 v1, 0xa

    if-eq p3, v1, :cond_5

    const/16 v1, 0x10

    if-eq p3, v1, :cond_3

    .line 414
    invoke-virtual {p0, p3, p2}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 403
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    .line 404
    invoke-static {p3}, Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;->forNumber(I)Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_4

    .line 406
    invoke-super {p0, v2, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_1

    .line 408
    :cond_4
    iget v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    .line 409
    iput p3, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    goto :goto_1

    .line 398
    :cond_5
    iget p3, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    .line 399
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p3

    iput-object p3, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 424
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 426
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 422
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    :goto_3
    throw p1

    .line 432
    :cond_7
    :pswitch_4
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p1

    .line 387
    :cond_8
    throw v1

    .line 368
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 369
    check-cast p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    .line 371
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->hasVoicemailData()Z

    move-result p1

    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    .line 372
    invoke-virtual {p3}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->hasVoicemailData()Z

    move-result v1

    iget-object v2, p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    .line 370
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    .line 373
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->hasAudioFormat()Z

    move-result p1

    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    .line 374
    invoke-virtual {p3}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->hasAudioFormat()Z

    move-result v1

    iget v2, p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    .line 373
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    .line 375
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_9

    .line 377
    iget p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    iget p2, p3, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    :cond_9
    return-object p0

    :pswitch_6
    return-object v1

    .line 362
    :pswitch_7
    sget-object p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->DEFAULT_INSTANCE:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object p1

    .line 359
    :pswitch_8
    new-instance p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;-><init>(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$1;)V

    return-object p1

    .line 356
    :pswitch_9
    new-instance p1, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-direct {p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;-><init>()V

    return-object p1

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

.method public getAudioFormat()Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;
    .locals 1

    .line 94
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    invoke-static {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;->forNumber(I)Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;->AUDIO_FORMAT_UNSPECIFIED:Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 137
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 141
    iget v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    .line 143
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_1
    iget v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 146
    iget v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    .line 147
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    iput v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->memoizedSerializedSize:I

    return v0
.end method

.method public getVoicemailData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAudioFormat()Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVoicemailData()Z
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

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

    .line 126
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->voicemailData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 129
    :cond_0
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 130
    iget v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->audioFormat_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
