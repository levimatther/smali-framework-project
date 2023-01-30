.class public final Lcom/android/dialer/dialercontact/SimDetails;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SimDetails.java"

# interfaces
.implements Lcom/android/dialer/dialercontact/SimDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialercontact/SimDetails$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/dialercontact/SimDetails;",
        "Lcom/android/dialer/dialercontact/SimDetails$Builder;",
        ">;",
        "Lcom/android/dialer/dialercontact/SimDetailsOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

.field public static final NETWORK_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/dialercontact/SimDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private color_:I

.field private network_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 501
    new-instance v0, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-direct {v0}, Lcom/android/dialer/dialercontact/SimDetails;-><init>()V

    sput-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/dialercontact/SimDetails;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/SimDetails;->setNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/dialercontact/SimDetails;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/SimDetails;->clearNetwork()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/dialercontact/SimDetails;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/SimDetails;->setNetworkBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/dialercontact/SimDetails;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/SimDetails;->setColor(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/dialercontact/SimDetails;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/SimDetails;->clearColor()V

    return-void
.end method

.method private clearColor()V
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    return-void
.end method

.method private clearNetwork()V
    .locals 1

    .line 77
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    .line 78
    invoke-static {}, Lcom/android/dialer/dialercontact/SimDetails;->getDefaultInstance()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1

    .line 505
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/dialercontact/SimDetails$Builder;
    .locals 1

    .line 249
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialercontact/SimDetails$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/dialercontact/SimDetails;)Lcom/android/dialer/dialercontact/SimDetails$Builder;
    .locals 1

    .line 252
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0, p0}, Lcom/android/dialer/dialercontact/SimDetails;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0}, Lcom/android/dialer/dialercontact/SimDetails;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/dialercontact/SimDetails;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/SimDetails;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/dialercontact/SimDetails;",
            ">;"
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/SimDetails;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setColor(I)V
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    .line 129
    iput p1, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    return-void
.end method

.method private setNetwork(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 66
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    .line 67
    iput-object p1, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 64
    throw p1
.end method

.method private setNetworkBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 90
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 396
    sget-object v0, Lcom/android/dialer/dialercontact/SimDetails$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 492
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 486
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 473
    :pswitch_2
    sget-object p1, Lcom/android/dialer/dialercontact/SimDetails;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 475
    const-class p2, Lcom/android/dialer/dialercontact/SimDetails;

    monitor-enter p2

    .line 476
    :try_start_0
    sget-object p1, Lcom/android/dialer/dialercontact/SimDetails;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 478
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 479
    sput-object p1, Lcom/android/dialer/dialercontact/SimDetails;->PARSER:Lcom/google/protobuf/Parser;

    .line 481
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

    .line 425
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 427
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 435
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_5

    const/16 v1, 0xa

    if-eq p3, v1, :cond_4

    const/16 v1, 0x10

    if-eq p3, v1, :cond_3

    .line 452
    invoke-virtual {p0, p3, p2}, Lcom/android/dialer/dialercontact/SimDetails;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 447
    :cond_3
    iget p3, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    .line 448
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    iput p3, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    goto :goto_1

    .line 441
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 442
    iget v1, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    .line 443
    iput-object p3, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 462
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 464
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 460
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 466
    :goto_3
    throw p1

    .line 470
    :cond_6
    :pswitch_4
    sget-object p1, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    return-object p1

    .line 430
    :cond_7
    throw v1

    .line 410
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 411
    check-cast p3, Lcom/android/dialer/dialercontact/SimDetails;

    .line 413
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails;->hasNetwork()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    .line 414
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/SimDetails;->hasNetwork()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    .line 412
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails;->hasColor()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    .line 417
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/SimDetails;->hasColor()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    .line 415
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    .line 418
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_8

    .line 420
    iget p1, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    :cond_8
    return-object p0

    :pswitch_6
    return-object v1

    .line 404
    :pswitch_7
    sget-object p1, Lcom/android/dialer/dialercontact/SimDetails;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/SimDetails;

    return-object p1

    .line 401
    :pswitch_8
    new-instance p1, Lcom/android/dialer/dialercontact/SimDetails$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;-><init>(Lcom/android/dialer/dialercontact/SimDetails$1;)V

    return-object p1

    .line 398
    :pswitch_9
    new-instance p1, Lcom/android/dialer/dialercontact/SimDetails;

    invoke-direct {p1}, Lcom/android/dialer/dialercontact/SimDetails;-><init>()V

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

.method public getColor()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    return v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->network_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 157
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 161
    iget v1, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_1
    iget v1, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 166
    iget v1, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    .line 167
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/dialercontact/SimDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    iput v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->memoizedSerializedSize:I

    return v0
.end method

.method public hasColor()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

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

.method public hasNetwork()Z
    .locals 2

    .line 29
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

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

    .line 146
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/SimDetails;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 149
    :cond_0
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 150
    iget v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->color_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialercontact/SimDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
