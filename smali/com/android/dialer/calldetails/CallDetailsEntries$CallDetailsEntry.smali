.class public final Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CallDetailsEntries.java"

# interfaces
.implements Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calldetails/CallDetailsEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallDetailsEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;",
        ">;",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID_FIELD_NUMBER:I = 0x7

.field public static final CALL_ID_FIELD_NUMBER:I = 0x1

.field public static final CALL_TYPE_FIELD_NUMBER:I = 0x2

.field public static final DATA_USAGE_FIELD_NUMBER:I = 0x6

.field public static final DATE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

.field public static final DURATION_FIELD_NUMBER:I = 0x5

.field public static final FEATURES_FIELD_NUMBER:I = 0x3

.field public static final HISTORY_RESULTS_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountId_:Ljava/lang/String;

.field private bitField0_:I

.field private callId_:J

.field private callType_:I

.field private dataUsage_:J

.field private date_:J

.field private duration_:J

.field private features_:I

.field private historyResults_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1145
    new-instance v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-direct {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;-><init>()V

    sput-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 112
    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setCallId(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearDuration()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setDataUsage(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearDataUsage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setAccountId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearAccountId()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setAccountIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->addHistoryResults(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->addHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearCallId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->addHistoryResults(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->addHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Ljava/lang/Iterable;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->addAllHistoryResults(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearHistoryResults()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->removeHistoryResults(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setCallType(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearCallType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setFeatures(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearFeatures()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setDate(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->clearDate()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->setDuration(J)V

    return-void
.end method

.method private addAllHistoryResults(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;)V"
        }
    .end annotation

    .line 461
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 462
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 454
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 438
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 435
    throw p1
.end method

.method private addHistoryResults(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V
    .locals 1

    .line 445
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 446
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addHistoryResults(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 427
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 424
    throw p1
.end method

.method private clearAccountId()V
    .locals 1

    .line 341
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 342
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDefaultInstance()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    return-void
.end method

.method private clearCallId()V
    .locals 2

    .line 143
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    return-void
.end method

.method private clearCallType()V
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    return-void
.end method

.method private clearDataUsage()V
    .locals 2

    .line 298
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 299
    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    return-void
.end method

.method private clearDate()V
    .locals 2

    .line 236
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 237
    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    return-void
.end method

.method private clearDuration()V
    .locals 2

    .line 267
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 268
    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    return-void
.end method

.method private clearFeatures()V
    .locals 1

    .line 205
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    return-void
.end method

.method private clearHistoryResults()V
    .locals 1

    .line 469
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureHistoryResultsIsMutable()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 396
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1

    .line 1149
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 627
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 630
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 575
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 587
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation

    .line 1155
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeHistoryResults(I)V
    .locals 1

    .line 475
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 476
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAccountId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 334
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 335
    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 332
    throw p1
.end method

.method private setAccountIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 352
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 350
    throw p1
.end method

.method private setCallId(J)V
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 137
    iput-wide p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    return-void
.end method

.method private setCallType(I)V
    .locals 1

    .line 167
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 168
    iput p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    return-void
.end method

.method private setDataUsage(J)V
    .locals 1

    .line 291
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 292
    iput-wide p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    return-void
.end method

.method private setDate(J)V
    .locals 1

    .line 229
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 230
    iput-wide p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    return-void
.end method

.method private setDuration(J)V
    .locals 1

    .line 260
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 261
    iput-wide p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    return-void
.end method

.method private setFeatures(I)V
    .locals 1

    .line 198
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 199
    iput p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    return-void
.end method

.method private setHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V
    .locals 1

    .line 416
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 417
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->ensureHistoryResultsIsMutable()V

    .line 409
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 406
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 989
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 1130
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1117
    :pswitch_2
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1119
    const-class p2, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    monitor-enter p2

    .line 1120
    :try_start_0
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1122
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1123
    sput-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->PARSER:Lcom/google/protobuf/Parser;

    .line 1125
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

    .line 1035
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1037
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_e

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_d

    .line 1045
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eqz v1, :cond_c

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    const/16 v3, 0x10

    if-eq v1, v3, :cond_a

    const/16 v4, 0x18

    if-eq v1, v4, :cond_9

    const/16 v4, 0x20

    if-eq v1, v4, :cond_8

    const/16 v2, 0x28

    if-eq v1, v2, :cond_7

    const/16 v2, 0x30

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_5

    const/16 v2, 0x42

    if-eq v1, v2, :cond_3

    .line 1096
    invoke-virtual {p0, v1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 1087
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1088
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1089
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1091
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1092
    invoke-static {}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 1091
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1081
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    iget v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 1083
    iput-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    goto :goto_1

    .line 1076
    :cond_6
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 1077
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    goto :goto_1

    .line 1071
    :cond_7
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 1072
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    goto :goto_1

    .line 1066
    :cond_8
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 1067
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    goto :goto_1

    .line 1061
    :cond_9
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 1062
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    goto/16 :goto_1

    .line 1056
    :cond_a
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 1057
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    goto/16 :goto_1

    .line 1051
    :cond_b
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    .line 1052
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_2
    move p1, v0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1106
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1108
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1104
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1110
    :goto_3
    throw p1

    .line 1114
    :cond_d
    :pswitch_4
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p1

    .line 1040
    :cond_e
    throw v1

    .line 1004
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1005
    check-cast p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 1007
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasCallId()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    .line 1008
    invoke-virtual {p3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasCallId()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    move-object v0, p2

    .line 1006
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    .line 1010
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasCallType()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    .line 1011
    invoke-virtual {p3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasCallType()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    .line 1009
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    .line 1013
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasFeatures()Z

    move-result p1

    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    .line 1014
    invoke-virtual {p3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasFeatures()Z

    move-result v1

    iget v2, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    .line 1012
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    .line 1016
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDate()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    .line 1017
    invoke-virtual {p3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDate()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    move-object v0, p2

    .line 1015
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    .line 1019
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDuration()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    .line 1020
    invoke-virtual {p3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDuration()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    move-object v0, p2

    .line 1018
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    .line 1022
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDataUsage()Z

    move-result v1

    iget-wide v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    .line 1023
    invoke-virtual {p3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDataUsage()Z

    move-result v4

    iget-wide v5, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    move-object v0, p2

    .line 1021
    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    .line 1025
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasAccountId()Z

    move-result p1

    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    .line 1026
    invoke-virtual {p3}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasAccountId()Z

    move-result v1

    iget-object v2, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    .line 1024
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    .line 1027
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1028
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_f

    .line 1030
    iget p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    iget p2, p3, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    :cond_f
    return-object p0

    .line 1000
    :pswitch_6
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v1

    .line 997
    :pswitch_7
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p1

    .line 994
    :pswitch_8
    new-instance p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;-><init>(Lcom/android/dialer/calldetails/CallDetailsEntries$1;)V

    return-object p1

    .line 991
    :pswitch_9
    new-instance p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-direct {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;-><init>()V

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

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->accountId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    return-wide v0
.end method

.method public getCallType()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    return v0
.end method

.method public getDataUsage()J
    .locals 2

    .line 285
    iget-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    return-wide v0
.end method

.method public getFeatures()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    return v0
.end method

.method public getHistoryResults(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    return-object p1
.end method

.method public getHistoryResultsCount()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getHistoryResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getHistoryResultsOrBuilder(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResultOrBuilder;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResultOrBuilder;

    return-object p1
.end method

.method public getHistoryResultsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResultOrBuilder;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 511
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 515
    :cond_0
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 516
    iget-wide v3, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    .line 517
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 519
    :goto_0
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 520
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    .line 521
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_2
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 524
    iget v4, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    .line 525
    invoke-static {v1, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_3
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 528
    iget-wide v5, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    .line 529
    invoke-static {v3, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_4
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 532
    iget-wide v5, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    .line 533
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 535
    :cond_5
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    .line 536
    iget-wide v5, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    .line 537
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_6
    iget v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    .line 541
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 544
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 545
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 547
    :cond_8
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 548
    iput v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->memoizedSerializedSize:I

    return v0
.end method

.method public hasAccountId()Z
    .locals 2

    .line 309
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

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

.method public hasCallId()Z
    .locals 2

    .line 123
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCallType()Z
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

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

.method public hasDataUsage()Z
    .locals 2

    .line 278
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    .line 216
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

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

.method public hasDuration()Z
    .locals 2

    .line 247
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

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

.method public hasFeatures()Z
    .locals 2

    .line 185
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 483
    iget-wide v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 485
    :cond_0
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 486
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->callType_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 488
    :cond_1
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 489
    iget v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->features_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 491
    :cond_2
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 492
    iget-wide v3, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->date_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 494
    :cond_3
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 495
    iget-wide v3, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->duration_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 497
    :cond_4
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 498
    iget-wide v3, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->dataUsage_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 500
    :cond_5
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 501
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    .line 503
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 504
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->historyResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
