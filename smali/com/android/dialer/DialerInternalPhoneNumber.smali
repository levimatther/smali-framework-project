.class public final Lcom/android/dialer/DialerInternalPhoneNumber;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DialerInternalPhoneNumber.java"

# interfaces
.implements Lcom/android/dialer/DialerInternalPhoneNumberOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/DialerInternalPhoneNumber$Builder;,
        Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/DialerInternalPhoneNumber;",
        "Lcom/android/dialer/DialerInternalPhoneNumber$Builder;",
        ">;",
        "Lcom/android/dialer/DialerInternalPhoneNumberOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNTRY_CODE_FIELD_NUMBER:I = 0x1

.field public static final COUNTRY_CODE_SOURCE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

.field public static final EXTENSION_FIELD_NUMBER:I = 0x3

.field public static final ITALIAN_LEADING_ZERO_FIELD_NUMBER:I = 0x4

.field public static final NATIONAL_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final NUMBER_OF_LEADING_ZEROS_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/DialerInternalPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFERRED_DOMESTIC_CARRIER_CODE_FIELD_NUMBER:I = 0x7

.field public static final RAW_INPUT_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private countryCodeSource_:I

.field private countryCode_:I

.field private extension_:Ljava/lang/String;

.field private italianLeadingZero_:Z

.field private memoizedIsInitialized:B

.field private nationalNumber_:J

.field private numberOfLeadingZeros_:I

.field private preferredDomesticCarrierCode_:Ljava/lang/String;

.field private rawInput_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1824
    new-instance v0, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-direct {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;-><init>()V

    sput-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 1645
    iput-byte v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->memoizedIsInitialized:B

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    .line 29
    iput-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    .line 31
    iput-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/DialerInternalPhoneNumber;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setCountryCode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/DialerInternalPhoneNumber;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setNumberOfLeadingZeros(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearNumberOfLeadingZeros()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/DialerInternalPhoneNumber;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setRawInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearRawInput()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setRawInputBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setCountryCodeSource(Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearCountryCodeSource()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/dialer/DialerInternalPhoneNumber;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearPreferredDomesticCarrierCode()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setPreferredDomesticCarrierCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearCountryCode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/DialerInternalPhoneNumber;J)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/DialerInternalPhoneNumber;->setNationalNumber(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearNationalNumber()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/DialerInternalPhoneNumber;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setExtension(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearExtension()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/DialerInternalPhoneNumber;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setExtensionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/DialerInternalPhoneNumber;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->setItalianLeadingZero(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/DialerInternalPhoneNumber;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->clearItalianLeadingZero()V

    return-void
.end method

.method private clearCountryCode()V
    .locals 1

    .line 227
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    return-void
.end method

.method private clearCountryCodeSource()V
    .locals 1

    .line 705
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v0, 0x1

    .line 706
    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    return-void
.end method

.method private clearExtension()V
    .locals 1

    .line 410
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 411
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->getDefaultInstance()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    return-void
.end method

.method private clearItalianLeadingZero()V
    .locals 1

    .line 533
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    return-void
.end method

.method private clearNationalNumber()V
    .locals 2

    .line 322
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 323
    iput-wide v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    return-void
.end method

.method private clearNumberOfLeadingZeros()V
    .locals 1

    .line 564
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v0, 0x1

    .line 565
    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    return-void
.end method

.method private clearPreferredDomesticCarrierCode()V
    .locals 1

    .line 803
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 804
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->getDefaultInstance()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-void
.end method

.method private clearRawInput()V
    .locals 1

    .line 637
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 638
    invoke-static {}, Lcom/android/dialer/DialerInternalPhoneNumber;->getDefaultInstance()Lcom/android/dialer/DialerInternalPhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1

    .line 1828
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 977
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/DialerInternalPhoneNumber;)Lcom/android/dialer/DialerInternalPhoneNumber$Builder;
    .locals 1

    .line 980
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0, p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/DialerInternalPhoneNumber;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 918
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 925
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 905
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 912
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 930
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/DialerInternalPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 937
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/DialerInternalPhoneNumber;",
            ">;"
        }
    .end annotation

    .line 1834
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-virtual {v0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCountryCode(I)V
    .locals 1

    .line 214
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 215
    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    return-void
.end method

.method private setCountryCodeSource(Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 694
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 695
    invoke-virtual {p1}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 692
    throw p1
.end method

.method private setExtension(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 394
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 395
    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 392
    throw p1
.end method

.method private setExtensionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 430
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 431
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 428
    throw p1
.end method

.method private setItalianLeadingZero(Z)V
    .locals 1

    .line 508
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 509
    iput-boolean p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    return-void
.end method

.method private setNationalNumber(J)V
    .locals 1

    .line 299
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 300
    iput-wide p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    return-void
.end method

.method private setNumberOfLeadingZeros(I)V
    .locals 1

    .line 557
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 558
    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    return-void
.end method

.method private setPreferredDomesticCarrierCode(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 785
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 786
    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 783
    throw p1
.end method

.method private setPreferredDomesticCarrierCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 825
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 826
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 823
    throw p1
.end method

.method private setRawInput(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 624
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 625
    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 622
    throw p1
.end method

.method private setRawInputBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 654
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 655
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 652
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1651
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1815
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

    .line 1811
    iput-byte p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->memoizedIsInitialized:B

    return-object v2

    .line 1808
    :pswitch_1
    iget-byte p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1795
    :pswitch_2
    sget-object p1, Lcom/android/dialer/DialerInternalPhoneNumber;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    .line 1797
    const-class p2, Lcom/android/dialer/DialerInternalPhoneNumber;

    monitor-enter p2

    .line 1798
    :try_start_0
    sget-object p1, Lcom/android/dialer/DialerInternalPhoneNumber;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1800
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1801
    sput-object p1, Lcom/android/dialer/DialerInternalPhoneNumber;->PARSER:Lcom/google/protobuf/Parser;

    .line 1803
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

    .line 1709
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1711
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_f

    :cond_3
    :goto_2
    if-nez v0, :cond_e

    .line 1719
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_d

    const/16 p3, 0x8

    if-eq p1, p3, :cond_c

    const/16 v2, 0x10

    if-eq p1, v2, :cond_b

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_a

    const/16 v3, 0x20

    if-eq p1, v3, :cond_9

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_8

    const/16 p3, 0x30

    const/16 v3, 0x40

    if-eq p1, p3, :cond_6

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_5

    if-eq p1, v3, :cond_4

    .line 1774
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/DialerInternalPhoneNumber;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_3

    .line 1769
    :cond_4
    iget p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1770
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    goto :goto_2

    .line 1763
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1764
    iget p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1765
    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    goto :goto_2

    .line 1752
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 1753
    invoke-static {p1}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->forNumber(I)Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    move-result-object p3

    if-nez p3, :cond_7

    const/4 p3, 0x6

    .line 1755
    invoke-super {p0, p3, p1}, Lcom/google/protobuf/GeneratedMessageLite;->mergeVarintField(II)V

    goto :goto_2

    .line 1757
    :cond_7
    iget p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/2addr p3, v3

    iput p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1758
    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    goto :goto_2

    .line 1746
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1747
    iget p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/2addr p3, v3

    iput p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1748
    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    goto :goto_2

    .line 1741
    :cond_9
    iget p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1742
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    goto :goto_2

    .line 1735
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1736
    iget p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1737
    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    goto/16 :goto_2

    .line 1730
    :cond_b
    iget p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1731
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    goto/16 :goto_2

    .line 1725
    :cond_c
    iget p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    .line 1726
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :cond_d
    :goto_3
    move v0, v1

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1784
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1786
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1782
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1788
    :goto_4
    throw p1

    .line 1792
    :cond_e
    :pswitch_4
    sget-object p1, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p1

    .line 1714
    :cond_f
    throw v2

    .line 1677
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1678
    check-cast p3, Lcom/android/dialer/DialerInternalPhoneNumber;

    .line 1680
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCode()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    .line 1681
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCode()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    .line 1679
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    .line 1683
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNationalNumber()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    .line 1684
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNationalNumber()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    move-object v0, p2

    .line 1682
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    .line 1686
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasExtension()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    .line 1687
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasExtension()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    .line 1685
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    .line 1689
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasItalianLeadingZero()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    .line 1690
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasItalianLeadingZero()Z

    move-result v1

    iget-boolean v2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    .line 1688
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    .line 1692
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    .line 1693
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    .line 1691
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    .line 1695
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasRawInput()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    .line 1696
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasRawInput()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    .line 1694
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    .line 1697
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCodeSource()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    .line 1698
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCodeSource()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    .line 1697
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    .line 1700
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 1701
    invoke-virtual {p3}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 1699
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 1702
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_10

    .line 1704
    iget p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    :cond_10
    return-object p0

    :pswitch_6
    return-object v2

    .line 1659
    :pswitch_7
    iget-byte p1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->memoizedIsInitialized:B

    if-ne p1, v1, :cond_11

    .line 1660
    sget-object p1, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p1

    :cond_11
    if-nez p1, :cond_12

    return-object v2

    .line 1663
    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1664
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasCountryCode()Z

    move-result p1

    if-nez p1, :cond_13

    return-object v2

    .line 1667
    :cond_13
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->hasNationalNumber()Z

    move-result p1

    if-nez p1, :cond_14

    return-object v2

    .line 1670
    :cond_14
    sget-object p1, Lcom/android/dialer/DialerInternalPhoneNumber;->DEFAULT_INSTANCE:Lcom/android/dialer/DialerInternalPhoneNumber;

    return-object p1

    .line 1656
    :pswitch_8
    new-instance p1, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;

    invoke-direct {p1, v2}, Lcom/android/dialer/DialerInternalPhoneNumber$Builder;-><init>(Lcom/android/dialer/DialerInternalPhoneNumber$1;)V

    return-object p1

    .line 1653
    :pswitch_9
    new-instance p1, Lcom/android/dialer/DialerInternalPhoneNumber;

    invoke-direct {p1}, Lcom/android/dialer/DialerInternalPhoneNumber;-><init>()V

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

.method public getCountryCode()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    return v0
.end method

.method public getCountryCodeSource()Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;
    .locals 1

    .line 680
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    invoke-static {v0}, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->forNumber(I)Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 681
    sget-object v0, Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/dialer/DialerInternalPhoneNumber$CountryCodeSource;

    :cond_0
    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->extension_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getItalianLeadingZero()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    return v0
.end method

.method public getNationalNumber()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    return-wide v0
.end method

.method public getNumberOfLeadingZeros()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    return v0
.end method

.method public getPreferredDomesticCarrierCode()Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredDomesticCarrierCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRawInput()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    return-object v0
.end method

.method public getRawInputBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->rawInput_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 861
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 865
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 866
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    .line 867
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    :cond_1
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 870
    iget-wide v3, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    .line 871
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    :cond_2
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 875
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 877
    :cond_3
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 878
    iget-boolean v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    .line 879
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 881
    :cond_4
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 883
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 885
    :cond_5
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 886
    iget v2, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    .line 887
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 889
    :cond_6
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 891
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 893
    :cond_7
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 894
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    .line 895
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 897
    :cond_8
    iget-object v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 898
    iput v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->memoizedSerializedSize:I

    return v0
.end method

.method public hasCountryCode()Z
    .locals 2

    .line 189
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCountryCodeSource()Z
    .locals 2

    .line 669
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExtension()Z
    .locals 2

    .line 342
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

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

.method public hasItalianLeadingZero()Z
    .locals 2

    .line 459
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

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

.method public hasNationalNumber()Z
    .locals 2

    .line 254
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

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

.method public hasNumberOfLeadingZeros()Z
    .locals 2

    .line 544
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

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

.method public hasPreferredDomesticCarrierCode()Z
    .locals 2

    .line 727
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRawInput()Z
    .locals 2

    .line 581
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v1, 0x20

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

    .line 832
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 833
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 835
    :cond_0
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 836
    iget-wide v2, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->nationalNumber_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 838
    :cond_1
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 839
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 841
    :cond_2
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 842
    iget-boolean v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->italianLeadingZero_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 844
    :cond_3
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 845
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 847
    :cond_4
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 848
    iget v1, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->countryCodeSource_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 850
    :cond_5
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 851
    invoke-virtual {p0}, Lcom/android/dialer/DialerInternalPhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 853
    :cond_6
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 854
    iget v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->numberOfLeadingZeros_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 856
    :cond_7
    iget-object v0, p0, Lcom/android/dialer/DialerInternalPhoneNumber;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
