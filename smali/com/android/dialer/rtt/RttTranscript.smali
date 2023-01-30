.class public final Lcom/android/dialer/rtt/RttTranscript;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RttTranscript.java"

# interfaces
.implements Lcom/android/dialer/rtt/RttTranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/rtt/RttTranscript$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/rtt/RttTranscript;",
        "Lcom/android/dialer/rtt/RttTranscript$Builder;",
        ">;",
        "Lcom/android/dialer/rtt/RttTranscriptOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MESSAGES_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/rtt/RttTranscript;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/String;

.field private messages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation
.end field

.field private number_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1023
    new-instance v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-direct {v0}, Lcom/android/dialer/rtt/RttTranscript;-><init>()V

    sput-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscript;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/rtt/RttTranscript;
    .locals 1

    .line 13
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/rtt/RttTranscript;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->setMessages(ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/rtt/RttTranscript;Lcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->addMessages(Lcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->addMessages(ILcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/rtt/RttTranscript;Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->addMessages(Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->addMessages(ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/rtt/RttTranscript;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->addAllMessages(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/rtt/RttTranscript;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->clearMessages()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/dialer/rtt/RttTranscript;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/rtt/RttTranscript;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->clearId()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/rtt/RttTranscript;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/rtt/RttTranscript;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/rtt/RttTranscript;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->clearNumber()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/rtt/RttTranscript;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->setNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/rtt/RttTranscript;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/rtt/RttTranscript;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->setMessages(ILcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-void
.end method

.method private addAllMessages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 381
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMessages(ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 369
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMessages(ILcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 345
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 342
    throw p1
.end method

.method private addMessages(Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 357
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMessages(Lcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 330
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 327
    throw p1
.end method

.method private clearId()V
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 84
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscript;->getDefaultInstance()Lcom/android/dialer/rtt/RttTranscript;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearMessages()V
    .locals 1

    .line 392
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscript;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 161
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 162
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscript;->getDefaultInstance()Lcom/android/dialer/rtt/RttTranscript;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    .line 223
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 224
    iput-wide v0, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    return-void
.end method

.method private ensureMessagesIsMutable()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 287
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/rtt/RttTranscript;
    .locals 1

    .line 1027
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 526
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/rtt/RttTranscript;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 529
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0, p0}, Lcom/android/dialer/rtt/RttTranscript;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0}, Lcom/android/dialer/rtt/RttTranscript;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/rtt/RttTranscript;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscript;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscript;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/rtt/RttTranscript;",
            ">;"
        }
    .end annotation

    .line 1033
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMessages(I)V
    .locals 1

    .line 402
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 403
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 73
    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 70
    throw p1
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 99
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 96
    throw p1
.end method

.method private setMessages(ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V
    .locals 1

    .line 315
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 316
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMessages(ILcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript;->ensureMessagesIsMutable()V

    .line 304
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 301
    throw p1
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 150
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 151
    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 148
    throw p1
.end method

.method private setNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 176
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 177
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 174
    throw p1
.end method

.method private setTimestamp(J)V
    .locals 1

    .line 212
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 213
    iput-wide p1, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 898
    sget-object v0, Lcom/android/dialer/rtt/RttTranscript$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1014
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 1008
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 995
    :pswitch_2
    sget-object p1, Lcom/android/dialer/rtt/RttTranscript;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 997
    const-class p2, Lcom/android/dialer/rtt/RttTranscript;

    monitor-enter p2

    .line 998
    :try_start_0
    sget-object p1, Lcom/android/dialer/rtt/RttTranscript;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1000
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1001
    sput-object p1, Lcom/android/dialer/rtt/RttTranscript;->PARSER:Lcom/google/protobuf/Parser;

    .line 1003
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

    .line 932
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 934
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_a

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_9

    .line 942
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eqz v1, :cond_8

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    const/16 v2, 0x12

    if-eq v1, v2, :cond_6

    const/16 v2, 0x18

    if-eq v1, v2, :cond_5

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    .line 974
    invoke-virtual {p0, v1, p2}, Lcom/android/dialer/rtt/RttTranscript;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 965
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 966
    iget-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 967
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 969
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 970
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscriptMessage;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 969
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 960
    :cond_5
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 961
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    goto :goto_1

    .line 954
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    .line 955
    iget v2, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 956
    iput-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    goto :goto_1

    .line 948
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    .line 949
    iget v2, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    .line 950
    iput-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 984
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 986
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 982
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 988
    :goto_3
    throw p1

    .line 992
    :cond_9
    :pswitch_4
    sget-object p1, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    return-object p1

    .line 937
    :cond_a
    throw v1

    .line 913
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 914
    check-cast p3, Lcom/android/dialer/rtt/RttTranscript;

    .line 916
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->hasId()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    .line 917
    invoke-virtual {p3}, Lcom/android/dialer/rtt/RttTranscript;->hasId()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    .line 915
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    .line 919
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->hasNumber()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    .line 920
    invoke-virtual {p3}, Lcom/android/dialer/rtt/RttTranscript;->hasNumber()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    .line 918
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->hasTimestamp()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    .line 923
    invoke-virtual {p3}, Lcom/android/dialer/rtt/RttTranscript;->hasTimestamp()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    move-object v0, p2

    .line 921
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    .line 924
    iget-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 925
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_b

    .line 927
    iget p1, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    :cond_b
    return-object p0

    .line 909
    :pswitch_6
    iget-object p1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v1

    .line 906
    :pswitch_7
    sget-object p1, Lcom/android/dialer/rtt/RttTranscript;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscript;

    return-object p1

    .line 903
    :pswitch_8
    new-instance p1, Lcom/android/dialer/rtt/RttTranscript$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/rtt/RttTranscript$Builder;-><init>(Lcom/android/dialer/rtt/RttTranscript$1;)V

    return-object p1

    .line 900
    :pswitch_9
    new-instance p1, Lcom/android/dialer/rtt/RttTranscript;

    invoke-direct {p1}, Lcom/android/dialer/rtt/RttTranscript;-><init>()V

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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(I)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p1
.end method

.method public getMessagesCount()I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMessagesOrBuilder(I)Lcom/android/dialer/rtt/RttTranscriptMessageOrBuilder;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/rtt/RttTranscriptMessageOrBuilder;

    return-object p1
.end method

.method public getMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/dialer/rtt/RttTranscriptMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->number_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 426
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 430
    :cond_0
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 434
    :goto_0
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_2
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 439
    iget-wide v4, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    .line 440
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 443
    iget-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 444
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/rtt/RttTranscript;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 447
    iput v0, p0, Lcom/android/dialer/rtt/RttTranscript;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 2

    .line 35
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNumber()Z
    .locals 2

    .line 113
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 191
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 412
    :cond_0
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 415
    :cond_1
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscript;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 416
    iget-wide v2, p0, Lcom/android/dialer/rtt/RttTranscript;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_2
    const/4 v0, 0x0

    .line 418
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 419
    iget-object v2, p0, Lcom/android/dialer/rtt/RttTranscript;->messages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
