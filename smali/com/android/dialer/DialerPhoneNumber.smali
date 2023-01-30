.class public final Lcom/android/dialer/DialerPhoneNumber;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DialerPhoneNumber.java"

# interfaces
.implements Lcom/android/dialer/DialerPhoneNumberOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/DialerPhoneNumber$Builder;,
        Lcom/android/dialer/DialerPhoneNumber$RawInput;,
        Lcom/android/dialer/DialerPhoneNumber$RawInputOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/DialerPhoneNumber;",
        "Lcom/android/dialer/DialerPhoneNumber$Builder;",
        ">;",
        "Lcom/android/dialer/DialerPhoneNumberOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

.field public static final DIALER_INTERNAL_PHONE_NUMBER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/DialerPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_INPUT_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

.field private memoizedIsInitialized:B

.field private rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1256
    new-instance v0, Lcom/android/dialer/DialerPhoneNumber;

    invoke-direct {v0}, Lcom/android/dialer/DialerPhoneNumber;-><init>()V

    sput-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 1122
    iput-byte v0, p0, Lcom/android/dialer/DialerPhoneNumber;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber;->setDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber;->mergeDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/DialerPhoneNumber;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/dialer/DialerPhoneNumber;->clearDialerInternalPhoneNumber()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber$RawInput;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber;->setRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber;->setRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerPhoneNumber$RawInput;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber;->mergeRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/DialerPhoneNumber;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/dialer/DialerPhoneNumber;->clearRawInput()V

    return-void
.end method

.method static synthetic access$800()Lcom/android/dialer/DialerPhoneNumber;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/DialerPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber;->setDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber;)V

    return-void
.end method

.method private clearDialerInternalPhoneNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 755
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void
.end method

.method private clearRawInput()V
    .locals 1

    const/4 v0, 0x0

    .line 836
    iput-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 837
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/DialerPhoneNumber;
    .locals 1

    .line 1260
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    return-object v0
.end method

.method private mergeDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 737
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->getDefaultInstance()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 740
    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->newBuilder(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    invoke-virtual {p1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerInternalPhoneNumber;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    goto :goto_0

    .line 742
    :cond_0
    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 744
    :goto_0
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 735
    throw p1
.end method

.method private mergeRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    if-eqz v0, :cond_0

    .line 821
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getDefaultInstance()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 823
    invoke-static {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->newBuilder(Lcom/android/dialer/DialerPhoneNumber$RawInput;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    goto :goto_0

    .line 825
    :cond_0
    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 827
    :goto_0
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 818
    throw p1
.end method

.method public static newBuilder()Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 946
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/DialerPhoneNumber;)Lcom/android/dialer/DialerPhoneNumber$Builder;
    .locals 1

    .line 949
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0, p0}, Lcom/android/dialer/DialerPhoneNumber;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0}, Lcom/android/dialer/DialerPhoneNumber;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/DialerPhoneNumber;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 887
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 894
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 874
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 881
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 899
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 906
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/DialerPhoneNumber;",
            ">;"
        }
    .end annotation

    .line 1266
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber$Builder;)V
    .locals 0

    .line 721
    invoke-virtual {p1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerInternalPhoneNumber;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 722
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void
.end method

.method private setDialerInternalPhoneNumber(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 708
    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 709
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 706
    throw p1
.end method

.method private setRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;)V
    .locals 0

    .line 805
    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 806
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void
.end method

.method private setRawInput(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 793
    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 794
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 791
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1128
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1247
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-byte p1, v0

    .line 1243
    iput-byte p1, p0, Lcom/android/dialer/DialerPhoneNumber;->memoizedIsInitialized:B

    return-object v2

    .line 1240
    :pswitch_1
    iget-byte p1, p0, Lcom/android/dialer/DialerPhoneNumber;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1227
    :pswitch_2
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    .line 1229
    const-class p2, Lcom/android/dialer/DialerPhoneNumber;

    monitor-enter p2

    .line 1230
    :try_start_0
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1232
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1233
    sput-object p1, Lcom/android/dialer/DialerPhoneNumber;->PARSER:Lcom/google/protobuf/Parser;

    .line 1235
    :cond_1
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-object p1

    .line 1164
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1166
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_c

    :cond_3
    :goto_2
    if-nez v0, :cond_b

    .line 1174
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v3, 0xa

    if-eq p1, v3, :cond_7

    const/16 v3, 0x12

    if-eq p1, v3, :cond_4

    .line 1206
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/DialerPhoneNumber;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_5

    .line 1194
    :cond_4
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_5

    .line 1195
    iget-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    goto :goto_3

    :cond_5
    move-object p1, v2

    .line 1197
    :goto_3
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    iput-object v4, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    if-eqz p1, :cond_6

    .line 1199
    invoke-virtual {p1, v4}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1200
    invoke-virtual {p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 1202
    :cond_6
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    goto :goto_2

    .line 1181
    :cond_7
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_8

    .line 1182
    iget-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    goto :goto_4

    :cond_8
    move-object p1, v2

    .line 1184
    :goto_4
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/DialerInternalPhoneNumber;

    iput-object v3, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    if-eqz p1, :cond_9

    .line 1186
    invoke-virtual {p1, v3}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1187
    invoke-virtual {p1}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerInternalPhoneNumber;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 1189
    :cond_9
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_a
    :goto_5
    move v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 1216
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1218
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1214
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1220
    :goto_6
    throw p1

    .line 1224
    :cond_b
    :pswitch_4
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    return-object p1

    .line 1169
    :cond_c
    throw v2

    .line 1153
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1154
    check-cast p3, Lcom/android/dialer/DialerPhoneNumber;

    .line 1155
    iget-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    iget-object v0, p3, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerInternalPhoneNumber;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 1156
    iget-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    iget-object v0, p3, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 1157
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_d

    .line 1159
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    :cond_d
    return-object p0

    :pswitch_6
    return-object v2

    .line 1136
    :pswitch_7
    iget-byte p1, p0, Lcom/android/dialer/DialerPhoneNumber;->memoizedIsInitialized:B

    if-ne p1, v1, :cond_e

    .line 1137
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    return-object p1

    :cond_e
    if-nez p1, :cond_f

    return-object v2

    .line 1140
    :cond_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1141
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber;->hasDialerInternalPhoneNumber()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1142
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber;->getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_10

    return-object v2

    .line 1146
    :cond_10
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber;

    return-object p1

    .line 1133
    :pswitch_8
    new-instance p1, Lcom/android/dialer/DialerPhoneNumber$Builder;

    invoke-direct {p1, v2}, Lcom/android/dialer/DialerPhoneNumber$Builder;-><init>(Lcom/android/dialer/DialerPhoneNumber$1;)V

    return-object p1

    .line 1130
    :pswitch_9
    new-instance p1, Lcom/android/dialer/DialerPhoneNumber;

    invoke-direct {p1}, Lcom/android/dialer/DialerPhoneNumber;-><init>()V

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

.method public getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->dialerInternalPhoneNumber_:Lcom/android/dialer/DialerInternalPhoneNumber;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->getDefaultInstance()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->rawInput_:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getDefaultInstance()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 854
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 858
    iget v1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 860
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber;->getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    :cond_1
    iget v1, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 864
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber;->getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 866
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialerPhoneNumber;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber;->memoizedSerializedSize:I

    return v0
.end method

.method public hasDialerInternalPhoneNumber()Z
    .locals 2

    .line 682
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRawInput()Z
    .locals 2

    .line 769
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber;->getDialerInternalPhoneNumber()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 846
    :cond_0
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 847
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber;->getRawInput()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
