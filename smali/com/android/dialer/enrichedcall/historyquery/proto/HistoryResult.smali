.class public final Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HistoryResult.java"

# interfaces
.implements Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;,
        Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
        "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;",
        ">;",
        "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResultOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

.field public static final IMAGE_CONTENT_TYPE_FIELD_NUMBER:I = 0x5

.field public static final IMAGE_URI_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private imageContentType_:Ljava/lang/String;

.field private imageUri_:Ljava/lang/String;

.field private text_:Ljava/lang/String;

.field private timestamp_:J

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 842
    new-instance v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-direct {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;-><init>()V

    sput-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1

    .line 13
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setType(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->clearImageContentType()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setImageContentTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->clearType()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->clearText()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setImageUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->clearImageUri()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setImageUriBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->setImageContentType(Ljava/lang/String;)V

    return-void
.end method

.method private clearImageContentType()V
    .locals 1

    .line 293
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 294
    invoke-static {}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getDefaultInstance()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    return-void
.end method

.method private clearImageUri()V
    .locals 1

    .line 239
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 240
    invoke-static {}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getDefaultInstance()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    return-void
.end method

.method private clearText()V
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 186
    invoke-static {}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getDefaultInstance()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    .line 335
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 336
    iput-wide v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/4 v0, 0x1

    .line 143
    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1

    .line 846
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 466
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 469
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0, p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 426
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;"
        }
    .end annotation

    .line 852
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setImageContentType(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 286
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 287
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 284
    throw p1
.end method

.method private setImageContentTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 304
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 305
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 302
    throw p1
.end method

.method private setImageUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 232
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 233
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 230
    throw p1
.end method

.method private setImageUriBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 250
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 251
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 248
    throw p1
.end method

.method private setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 179
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 176
    throw p1
.end method

.method private setTextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 196
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 197
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 194
    throw p1
.end method

.method private setTimestamp(J)V
    .locals 1

    .line 328
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 329
    iput-wide p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    return-void
.end method

.method private setType(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 136
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 133
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 706
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 833
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 827
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 814
    :pswitch_2
    sget-object p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 816
    const-class p2, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    monitor-enter p2

    .line 817
    :try_start_0
    sget-object p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 819
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 820
    sput-object p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 822
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

    .line 743
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 745
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_b

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_a

    .line 753
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_9

    const/16 v0, 0x8

    if-eq p3, v0, :cond_7

    const/16 v2, 0x12

    if-eq p3, v2, :cond_6

    const/16 v2, 0x22

    if-eq p3, v2, :cond_5

    const/16 v2, 0x2a

    if-eq p3, v2, :cond_4

    const/16 v0, 0x38

    if-eq p3, v0, :cond_3

    .line 793
    invoke-virtual {p0, p3, p2}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 788
    :cond_3
    iget p3, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 789
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    goto :goto_1

    .line 782
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 783
    iget v2, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 784
    iput-object p3, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    goto :goto_1

    .line 776
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 777
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 778
    iput-object p3, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    goto :goto_1

    .line 770
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 771
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 772
    iput-object p3, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    goto :goto_1

    .line 759
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p3

    .line 760
    invoke-static {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->forNumber(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    move-result-object v0

    if-nez v0, :cond_8

    .line 762
    invoke-super {p0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_1

    .line 764
    :cond_8
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    .line 765
    iput p3, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 803
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 805
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 801
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    :goto_3
    throw p1

    .line 811
    :cond_a
    :pswitch_4
    sget-object p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p1

    .line 748
    :cond_b
    throw v0

    .line 720
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 721
    check-cast p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    .line 722
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasType()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    .line 723
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasType()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    .line 722
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    .line 725
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasText()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    .line 726
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasText()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    .line 724
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    .line 728
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasImageUri()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    .line 729
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasImageUri()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    .line 727
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    .line 731
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasImageContentType()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    .line 732
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasImageContentType()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    .line 730
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    .line 734
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasTimestamp()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    .line 735
    invoke-virtual {p3}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasTimestamp()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    move-object v0, p2

    .line 733
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    .line 736
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_c

    .line 738
    iget p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    :cond_c
    return-object p0

    :pswitch_6
    return-object v0

    .line 714
    :pswitch_7
    sget-object p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->DEFAULT_INSTANCE:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p1

    .line 711
    :pswitch_8
    new-instance p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;

    invoke-direct {p1, v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;-><init>(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$1;)V

    return-object p1

    .line 708
    :pswitch_9
    new-instance p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-direct {p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;-><init>()V

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

.method public getImageContentType()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageContentType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->imageUri_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 362
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 366
    iget v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 367
    iget v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    .line 368
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_1
    iget v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_2
    iget v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_3
    iget v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 380
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_4
    iget v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x7

    .line 383
    iget-wide v2, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    .line 384
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_5
    iget-object v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    iput v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->memoizedSerializedSize:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->text_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 322
    iget-wide v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->forNumber(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;->INCOMING_CALL_COMPOSER:Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    :cond_0
    return-object v0
.end method

.method public hasImageContentType()Z
    .locals 2

    .line 261
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

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

.method public hasImageUri()Z
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

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

.method public hasText()Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

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

    .line 315
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .line 118
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 343
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->type_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 345
    :cond_0
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 348
    :cond_1
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 351
    :cond_2
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 352
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 354
    :cond_3
    iget v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x7

    .line 355
    iget-wide v1, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
