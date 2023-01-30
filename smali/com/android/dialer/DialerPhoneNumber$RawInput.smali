.class public final Lcom/android/dialer/DialerPhoneNumber$RawInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DialerPhoneNumber.java"

# interfaces
.implements Lcom/android/dialer/DialerPhoneNumber$RawInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialerPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/DialerPhoneNumber$RawInput;",
        "Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;",
        ">;",
        "Lcom/android/dialer/DialerPhoneNumber$RawInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNTRY_ISO_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

.field public static final NUMBER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/DialerPhoneNumber$RawInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private countryIso_:Ljava/lang/String;

.field private number_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 655
    new-instance v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-direct {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;-><init>()V

    sput-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/DialerPhoneNumber$RawInput;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->clearNumber()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/DialerPhoneNumber$RawInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->setNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/DialerPhoneNumber$RawInput;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->setCountryIso(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/DialerPhoneNumber$RawInput;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->clearCountryIso()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/DialerPhoneNumber$RawInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->setCountryIsoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCountryIso()V
    .locals 1

    .line 240
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 241
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getDefaultInstance()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 158
    invoke-static {}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getDefaultInstance()Lcom/android/dialer/DialerPhoneNumber$RawInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1

    .line 659
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 366
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/DialerPhoneNumber$RawInput;)Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;
    .locals 1

    .line 369
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0, p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerPhoneNumber$RawInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/DialerPhoneNumber$RawInput;",
            ">;"
        }
    .end annotation

    .line 665
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-virtual {v0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCountryIso(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 228
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 229
    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 226
    throw p1
.end method

.method private setCountryIsoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 256
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 257
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 254
    throw p1
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 147
    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 144
    throw p1
.end method

.method private setNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 172
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 173
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 170
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 549
    sget-object v0, Lcom/android/dialer/DialerPhoneNumber$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 646
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 640
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 627
    :pswitch_2
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 629
    const-class p2, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    monitor-enter p2

    .line 630
    :try_start_0
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 632
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 633
    sput-object p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 635
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

    .line 578
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 580
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 588
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_5

    const/16 v1, 0xa

    if-eq p3, v1, :cond_4

    const/16 v1, 0x12

    if-eq p3, v1, :cond_3

    .line 606
    invoke-virtual {p0, p3, p2}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 600
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 601
    iget v1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 602
    iput-object p3, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    goto :goto_1

    .line 594
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p3

    .line 595
    iget v1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    .line 596
    iput-object p3, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;
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

    .line 616
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 618
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 614
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 620
    :goto_3
    throw p1

    .line 624
    :cond_6
    :pswitch_4
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p1

    .line 583
    :cond_7
    throw v1

    .line 563
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 564
    check-cast p3, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    .line 566
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->hasNumber()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    .line 567
    invoke-virtual {p3}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->hasNumber()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    .line 565
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    .line 569
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->hasCountryIso()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    .line 570
    invoke-virtual {p3}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->hasCountryIso()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    .line 568
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    .line 571
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_8

    .line 573
    iget p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    :cond_8
    return-object p0

    :pswitch_6
    return-object v1

    .line 557
    :pswitch_7
    sget-object p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerPhoneNumber$RawInput;

    return-object p1

    .line 554
    :pswitch_8
    new-instance p1, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/DialerPhoneNumber$RawInput$Builder;-><init>(Lcom/android/dialer/DialerPhoneNumber$1;)V

    return-object p1

    .line 551
    :pswitch_9
    new-instance p1, Lcom/android/dialer/DialerPhoneNumber$RawInput;

    invoke-direct {p1}, Lcom/android/dialer/DialerPhoneNumber$RawInput;-><init>()V

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

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryIsoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->countryIso_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->number_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 274
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 278
    iget v1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_1
    iget v1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    iput v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->memoizedSerializedSize:I

    return v0
.end method

.method public hasCountryIso()Z
    .locals 2

    .line 188
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

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

.method public hasNumber()Z
    .locals 2

    .line 109
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

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

    .line 263
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 266
    :cond_0
    iget v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/android/dialer/DialerPhoneNumber$RawInput;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/DialerPhoneNumber$RawInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
