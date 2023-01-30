.class public final Lcom/android/dialer/dialercontact/DialerContact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DialerContact.java"

# interfaces
.implements Lcom/android/dialer/dialercontact/DialerContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialercontact/DialerContact$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/dialercontact/DialerContact;",
        "Lcom/android/dialer/dialercontact/DialerContact$Builder;",
        ">;",
        "Lcom/android/dialer/dialercontact/DialerContactOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTACT_TYPE_FIELD_NUMBER:I = 0x9

.field public static final CONTACT_URI_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

.field public static final DISPLAY_NUMBER_FIELD_NUMBER:I = 0x7

.field public static final NAME_OR_NUMBER_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x6

.field public static final NUMBER_LABEL_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/dialercontact/DialerContact;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTO_ID_FIELD_NUMBER:I = 0x1

.field public static final PHOTO_URI_FIELD_NUMBER:I = 0x2

.field public static final SIM_DETAILS_FIELD_NUMBER:I = 0xa


# instance fields
.field private bitField0_:I

.field private contactType_:I

.field private contactUri_:Ljava/lang/String;

.field private displayNumber_:Ljava/lang/String;

.field private nameOrNumber_:Ljava/lang/String;

.field private numberLabel_:Ljava/lang/String;

.field private number_:Ljava/lang/String;

.field private photoId_:J

.field private photoUri_:Ljava/lang/String;

.field private simDetails_:Lcom/android/dialer/dialercontact/SimDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1224
    new-instance v0, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-direct {v0}, Lcom/android/dialer/dialercontact/DialerContact;-><init>()V

    sput-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/dialercontact/DialerContact;J)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/dialercontact/DialerContact;->setPhotoId(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearNameOrNumber()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setNameOrNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearNumber()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setDisplayNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearDisplayNumber()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setDisplayNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setNumberLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearNumberLabel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearPhotoId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setNumberLabelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/dialer/dialercontact/DialerContact;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setContactType(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearContactType()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/dialer/dialercontact/DialerContact;Lcom/android/dialer/dialercontact/SimDetails;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/dialer/dialercontact/DialerContact;Lcom/android/dialer/dialercontact/SimDetails$Builder;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setSimDetails(Lcom/android/dialer/dialercontact/SimDetails$Builder;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/dialer/dialercontact/DialerContact;Lcom/android/dialer/dialercontact/SimDetails;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->mergeSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearSimDetails()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setPhotoUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearPhotoUri()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setPhotoUriBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setContactUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/dialercontact/DialerContact;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/dialercontact/DialerContact;->clearContactUri()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/dialercontact/DialerContact;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setContactUriBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/dialercontact/DialerContact;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->setNameOrNumber(Ljava/lang/String;)V

    return-void
.end method

.method private clearContactType()V
    .locals 1

    .line 405
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    return-void
.end method

.method private clearContactUri()V
    .locals 1

    .line 147
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 148
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    return-void
.end method

.method private clearDisplayNumber()V
    .locals 1

    .line 309
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 310
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    return-void
.end method

.method private clearNameOrNumber()V
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 202
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 255
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 256
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    return-void
.end method

.method private clearNumberLabel()V
    .locals 1

    .line 363
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 364
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    return-void
.end method

.method private clearPhotoId()V
    .locals 2

    .line 50
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    return-void
.end method

.method private clearPhotoUri()V
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 94
    invoke-static {}, Lcom/android/dialer/dialercontact/DialerContact;->getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    return-void
.end method

.method private clearSimDetails()V
    .locals 1

    const/4 v0, 0x0

    .line 463
    iput-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    .line 464
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1

    .line 1228
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    return-object v0
.end method

.method private mergeSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Lcom/android/dialer/dialercontact/SimDetails;->getDefaultInstance()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    .line 454
    invoke-static {v0}, Lcom/android/dialer/dialercontact/SimDetails;->newBuilder(Lcom/android/dialer/dialercontact/SimDetails;)Lcom/android/dialer/dialercontact/SimDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/dialercontact/SimDetails$Builder;

    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/dialercontact/SimDetails;

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    goto :goto_0

    .line 456
    :cond_0
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    .line 458
    :goto_0
    iget p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 449
    throw p1
.end method

.method public static newBuilder()Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 622
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialercontact/DialerContact$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/dialercontact/DialerContact;)Lcom/android/dialer/dialercontact/DialerContact$Builder;
    .locals 1

    .line 625
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0, p0}, Lcom/android/dialer/dialercontact/DialerContact;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0}, Lcom/android/dialer/dialercontact/DialerContact;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/dialercontact/DialerContact;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 570
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 550
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 575
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/dialercontact/DialerContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 582
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/dialercontact/DialerContact;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/dialercontact/DialerContact;",
            ">;"
        }
    .end annotation

    .line 1234
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-virtual {v0}, Lcom/android/dialer/dialercontact/DialerContact;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContactType(I)V
    .locals 1

    .line 398
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 399
    iput p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    return-void
.end method

.method private setContactUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 140
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 141
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 138
    throw p1
.end method

.method private setContactUriBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 159
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 156
    throw p1
.end method

.method private setDisplayNumber(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 302
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 303
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 300
    throw p1
.end method

.method private setDisplayNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 320
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 321
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 318
    throw p1
.end method

.method private setNameOrNumber(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 194
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 195
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 192
    throw p1
.end method

.method private setNameOrNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 212
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 213
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 210
    throw p1
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 248
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 249
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 246
    throw p1
.end method

.method private setNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 266
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 267
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 264
    throw p1
.end method

.method private setNumberLabel(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 356
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 357
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 354
    throw p1
.end method

.method private setNumberLabelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 374
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 375
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 372
    throw p1
.end method

.method private setPhotoId(J)V
    .locals 1

    .line 43
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 44
    iput-wide p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    return-void
.end method

.method private setPhotoUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 87
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 84
    throw p1
.end method

.method private setPhotoUriBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 105
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 102
    throw p1
.end method

.method private setSimDetails(Lcom/android/dialer/dialercontact/SimDetails$Builder;)V
    .locals 0

    .line 440
    invoke-virtual {p1}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/dialercontact/SimDetails;

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    .line 441
    iget p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    return-void
.end method

.method private setSimDetails(Lcom/android/dialer/dialercontact/SimDetails;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 432
    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    .line 433
    iget p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 430
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1052
    sget-object v0, Lcom/android/dialer/dialercontact/DialerContact$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1215
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 1209
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1196
    :pswitch_2
    sget-object p1, Lcom/android/dialer/dialercontact/DialerContact;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1198
    const-class p2, Lcom/android/dialer/dialercontact/DialerContact;

    monitor-enter p2

    .line 1199
    :try_start_0
    sget-object p1, Lcom/android/dialer/dialercontact/DialerContact;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1201
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1202
    sput-object p1, Lcom/android/dialer/dialercontact/DialerContact;->PARSER:Lcom/google/protobuf/Parser;

    .line 1204
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

    .line 1100
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1102
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_10

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_f

    .line 1110
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-eqz v2, :cond_e

    const/16 v3, 0x9

    if-eq v2, v3, :cond_d

    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_a

    const/16 v3, 0x32

    if-eq v2, v3, :cond_9

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_8

    const/16 v3, 0x42

    if-eq v2, v3, :cond_7

    const/16 v3, 0x48

    if-eq v2, v3, :cond_6

    const/16 v3, 0x52

    if-eq v2, v3, :cond_3

    .line 1175
    invoke-virtual {p0, v2, p2}, Lcom/android/dialer/dialercontact/DialerContact;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 1163
    :cond_3
    iget v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    .line 1164
    iget-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-virtual {v2}, Lcom/android/dialer/dialercontact/SimDetails;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/dialercontact/SimDetails$Builder;

    goto :goto_2

    :cond_4
    move-object v2, v1

    .line 1166
    :goto_2
    invoke-static {}, Lcom/android/dialer/dialercontact/SimDetails;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/dialercontact/SimDetails;

    iput-object v4, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    if-eqz v2, :cond_5

    .line 1168
    invoke-virtual {v2, v4}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1169
    invoke-virtual {v2}, Lcom/android/dialer/dialercontact/SimDetails$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/dialercontact/SimDetails;

    iput-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    .line 1171
    :cond_5
    iget v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    goto :goto_1

    .line 1157
    :cond_6
    iget v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1158
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    goto :goto_1

    .line 1151
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1152
    iget v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1153
    iput-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    goto :goto_1

    .line 1145
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1146
    iget v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1147
    iput-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    goto/16 :goto_1

    .line 1139
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1140
    iget v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1141
    iput-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    goto/16 :goto_1

    .line 1133
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1134
    iget v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1135
    iput-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    goto/16 :goto_1

    .line 1127
    :cond_b
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1128
    iget v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1129
    iput-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    goto/16 :goto_1

    .line 1121
    :cond_c
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1122
    iget v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1123
    iput-object v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    goto/16 :goto_1

    .line 1116
    :cond_d
    iget v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    .line 1117
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_e
    :goto_3
    move p1, v0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1185
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1187
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1183
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1189
    :goto_4
    throw p1

    .line 1193
    :cond_f
    :pswitch_4
    sget-object p1, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    return-object p1

    .line 1105
    :cond_10
    throw v1

    .line 1066
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1067
    check-cast p3, Lcom/android/dialer/dialercontact/DialerContact;

    .line 1069
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoId()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    .line 1070
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoId()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    move-object v0, p2

    .line 1068
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    .line 1072
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoUri()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    .line 1073
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasPhotoUri()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    .line 1071
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    .line 1075
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactUri()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    .line 1076
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactUri()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    .line 1074
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    .line 1078
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasNameOrNumber()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    .line 1079
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasNameOrNumber()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    .line 1077
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    .line 1081
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasNumber()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    .line 1082
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasNumber()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    .line 1080
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    .line 1084
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasDisplayNumber()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    .line 1085
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasDisplayNumber()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    .line 1083
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    .line 1087
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasNumberLabel()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    .line 1088
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasNumberLabel()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    .line 1086
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    .line 1090
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactType()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    .line 1091
    invoke-virtual {p3}, Lcom/android/dialer/dialercontact/DialerContact;->hasContactType()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    .line 1089
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    .line 1092
    iget-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    iget-object v0, p3, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/dialercontact/SimDetails;

    iput-object p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    .line 1093
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_11

    .line 1095
    iget p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    :cond_11
    return-object p0

    :pswitch_6
    return-object v1

    .line 1060
    :pswitch_7
    sget-object p1, Lcom/android/dialer/dialercontact/DialerContact;->DEFAULT_INSTANCE:Lcom/android/dialer/dialercontact/DialerContact;

    return-object p1

    .line 1057
    :pswitch_8
    new-instance p1, Lcom/android/dialer/dialercontact/DialerContact$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/dialercontact/DialerContact$Builder;-><init>(Lcom/android/dialer/dialercontact/DialerContact$1;)V

    return-object p1

    .line 1054
    :pswitch_9
    new-instance p1, Lcom/android/dialer/dialercontact/DialerContact;

    invoke-direct {p1}, Lcom/android/dialer/dialercontact/DialerContact;-><init>()V

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

.method public getContactType()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    return v0
.end method

.method public getContactUri()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getContactUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactUri_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->displayNumber_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNameOrNumber()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOrNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->nameOrNumber_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->number_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumberLabel()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->numberLabel_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoUri_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 502
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 506
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 507
    iget-wide v3, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    .line 508
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_1
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_2
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 516
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 518
    :cond_3
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 520
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 522
    :cond_4
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 524
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 526
    :cond_5
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    .line 528
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 530
    :cond_6
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 532
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 534
    :cond_7
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 535
    iget v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    .line 536
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 538
    :cond_8
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xa

    .line 540
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 542
    :cond_9
    iget-object v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    iput v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->memoizedSerializedSize:I

    return v0
.end method

.method public getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->simDetails_:Lcom/android/dialer/dialercontact/SimDetails;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/dialer/dialercontact/SimDetails;->getDefaultInstance()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasContactType()Z
    .locals 2

    .line 385
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

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

.method public hasContactUri()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

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

.method public hasDisplayNumber()Z
    .locals 2

    .line 277
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

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

.method public hasNameOrNumber()Z
    .locals 2

    .line 169
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

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

.method public hasNumber()Z
    .locals 2

    .line 223
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

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

.method public hasNumberLabel()Z
    .locals 2

    .line 331
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

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

.method public hasPhotoId()Z
    .locals 2

    .line 30
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPhotoUri()Z
    .locals 2

    .line 61
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

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

.method public hasSimDetails()Z
    .locals 2

    .line 416
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v1, 0x100

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

    .line 470
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 471
    iget-wide v2, p0, Lcom/android/dialer/dialercontact/DialerContact;->photoId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 473
    :cond_0
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 476
    :cond_1
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 477
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getContactUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 479
    :cond_2
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 482
    :cond_3
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    .line 483
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 485
    :cond_4
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x7

    .line 486
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 488
    :cond_5
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 489
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getNumberLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 491
    :cond_6
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x9

    .line 492
    iget v1, p0, Lcom/android/dialer/dialercontact/DialerContact;->contactType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 494
    :cond_7
    iget v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0xa

    .line 495
    invoke-virtual {p0}, Lcom/android/dialer/dialercontact/DialerContact;->getSimDetails()Lcom/android/dialer/dialercontact/SimDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 497
    :cond_8
    iget-object v0, p0, Lcom/android/dialer/dialercontact/DialerContact;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
