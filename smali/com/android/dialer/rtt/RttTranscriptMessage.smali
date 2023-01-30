.class public final Lcom/android/dialer/rtt/RttTranscriptMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RttTranscriptMessage.java"

# interfaces
.implements Lcom/android/dialer/rtt/RttTranscriptMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/rtt/RttTranscriptMessage;",
        "Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;",
        ">;",
        "Lcom/android/dialer/rtt/RttTranscriptMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

.field public static final IS_FINISHED_FIELD_NUMBER:I = 0x4

.field public static final IS_REMOTE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private content_:Ljava/lang/String;

.field private isFinished_:Z

.field private isRemote_:Z

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 623
    new-instance v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-direct {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;-><init>()V

    sput-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1

    .line 13
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/rtt/RttTranscriptMessage;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->clearContent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/rtt/RttTranscriptMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->setContentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/rtt/RttTranscriptMessage;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/rtt/RttTranscriptMessage;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/rtt/RttTranscriptMessage;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->setIsRemote(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->clearIsRemote()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/rtt/RttTranscriptMessage;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->setIsFinished(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/rtt/RttTranscriptMessage;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->clearIsFinished()V

    return-void
.end method

.method private clearContent()V
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 62
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getDefaultInstance()Lcom/android/dialer/rtt/RttTranscriptMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    return-void
.end method

.method private clearIsFinished()V
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    return-void
.end method

.method private clearIsRemote()V
    .locals 1

    .line 154
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    .line 103
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1

    .line 627
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 309
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/rtt/RttTranscriptMessage;)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 312
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0, p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation

    .line 633
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContent(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 55
    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 52
    throw p1
.end method

.method private setContentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 73
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 70
    throw p1
.end method

.method private setIsFinished(Z)V
    .locals 1

    .line 178
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 179
    iput-boolean p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    return-void
.end method

.method private setIsRemote(Z)V
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 143
    iput-boolean p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    return-void
.end method

.method private setTimestamp(J)V
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 97
    iput-wide p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 502
    sget-object v0, Lcom/android/dialer/rtt/RttTranscriptMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 614
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 608
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 595
    :pswitch_2
    sget-object p1, Lcom/android/dialer/rtt/RttTranscriptMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 597
    const-class p2, Lcom/android/dialer/rtt/RttTranscriptMessage;

    monitor-enter p2

    .line 598
    :try_start_0
    sget-object p1, Lcom/android/dialer/rtt/RttTranscriptMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 600
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 601
    sput-object p1, Lcom/android/dialer/rtt/RttTranscriptMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 603
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

    .line 537
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 539
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_9

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_8

    .line 547
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_7

    const/16 v1, 0xa

    if-eq p3, v1, :cond_6

    const/16 v1, 0x10

    if-eq p3, v1, :cond_5

    const/16 v1, 0x18

    if-eq p3, v1, :cond_4

    const/16 v1, 0x20

    if-eq p3, v1, :cond_3

    .line 574
    invoke-virtual {p0, p3, p2}, Lcom/android/dialer/rtt/RttTranscriptMessage;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 569
    :cond_3
    iget p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 570
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    goto :goto_1

    .line 564
    :cond_4
    iget p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 565
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    goto :goto_1

    .line 559
    :cond_5
    iget p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 560
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    goto :goto_1

    .line 553
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 554
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    .line 555
    iput-object p3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 584
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 586
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 582
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :goto_3
    throw p1

    .line 592
    :cond_8
    :pswitch_4
    sget-object p1, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p1

    .line 542
    :cond_9
    throw v1

    .line 516
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 517
    check-cast p3, Lcom/android/dialer/rtt/RttTranscriptMessage;

    .line 519
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasContent()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    .line 520
    invoke-virtual {p3}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasContent()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    .line 518
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    .line 522
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasTimestamp()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    .line 523
    invoke-virtual {p3}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasTimestamp()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    move-object v0, p2

    .line 521
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    .line 525
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasIsRemote()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    .line 526
    invoke-virtual {p3}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasIsRemote()Z

    move-result v1

    iget-boolean v2, p3, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    .line 524
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    .line 528
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasIsFinished()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    .line 529
    invoke-virtual {p3}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasIsFinished()Z

    move-result v1

    iget-boolean v2, p3, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    .line 527
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    .line 530
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 532
    iget p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    :cond_a
    return-object p0

    :pswitch_6
    return-object v1

    .line 510
    :pswitch_7
    sget-object p1, Lcom/android/dialer/rtt/RttTranscriptMessage;->DEFAULT_INSTANCE:Lcom/android/dialer/rtt/RttTranscriptMessage;

    return-object p1

    .line 507
    :pswitch_8
    new-instance p1, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;-><init>(Lcom/android/dialer/rtt/RttTranscriptMessage$1;)V

    return-object p1

    .line 504
    :pswitch_9
    new-instance p1, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-direct {p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;-><init>()V

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

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->content_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFinished()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    return v0
.end method

.method public getIsRemote()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 209
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 213
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_1
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 218
    iget-wide v3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    .line 219
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_2
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 222
    iget-boolean v3, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    .line 223
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_3
    iget v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 226
    iget-boolean v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    .line 227
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    iput v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    return-wide v0
.end method

.method public hasContent()Z
    .locals 2

    .line 29
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasIsFinished()Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIsRemote()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

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

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 196
    iget-wide v2, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 199
    iget-boolean v2, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isRemote_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 201
    :cond_2
    iget v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 202
    iget-boolean v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->isFinished_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
