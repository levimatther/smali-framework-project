.class public final Lcom/android/dialer/calldetails/CallDetailsEntries;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CallDetailsEntries.java"

# interfaces
.implements Lcom/android/dialer/calldetails/CallDetailsEntriesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;,
        Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;,
        Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/calldetails/CallDetailsEntries;",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;",
        ">;",
        "Lcom/android/dialer/calldetails/CallDetailsEntriesOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

.field public static final ENTRIES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entries_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1606
    new-instance v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-direct {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;-><init>()V

    sput-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$2600()Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->setEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->setEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->addEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->addEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/dialer/calldetails/CallDetailsEntries;Ljava/lang/Iterable;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->addAllEntries(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/dialer/calldetails/CallDetailsEntries;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->clearEntries()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/dialer/calldetails/CallDetailsEntries;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->removeEntries(I)V

    return-void
.end method

.method private addAllEntries(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;)V"
        }
    .end annotation

    .line 1264
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1265
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V
    .locals 1

    .line 1256
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1257
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1240
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1241
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1238
    throw p1
.end method

.method private addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V
    .locals 1

    .line 1248
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1249
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1229
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1230
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1227
    throw p1
.end method

.method private clearEntries()V
    .locals 1

    .line 1272
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureEntriesIsMutable()V
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1199
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1

    .line 1610
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1381
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/calldetails/CallDetailsEntries;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1384
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1358
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1364
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1322
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1329
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1369
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1376
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1353
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1309
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1316
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1334
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/calldetails/CallDetailsEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1341
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries;",
            ">;"
        }
    .end annotation

    .line 1616
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeEntries(I)V
    .locals 1

    .line 1278
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1279
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V
    .locals 1

    .line 1219
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1220
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->ensureEntriesIsMutable()V

    .line 1212
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1209
    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1508
    sget-object v0, Lcom/android/dialer/calldetails/CallDetailsEntries$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1597
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 1591
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1578
    :pswitch_2
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1580
    const-class p2, Lcom/android/dialer/calldetails/CallDetailsEntries;

    monitor-enter p2

    .line 1581
    :try_start_0
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1583
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1584
    sput-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries;->PARSER:Lcom/google/protobuf/Parser;

    .line 1586
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

    .line 1532
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 1534
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 1542
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 1557
    invoke-virtual {p0, v1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 1548
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1549
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1550
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1552
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1553
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 1552
    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
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

    .line 1567
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 1569
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1565
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1571
    :goto_3
    throw p1

    .line 1575
    :cond_6
    :pswitch_4
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p1

    .line 1537
    :cond_7
    throw v1

    .line 1523
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 1524
    check-cast p3, Lcom/android/dialer/calldetails/CallDetailsEntries;

    .line 1525
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1526
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1519
    :pswitch_6
    iget-object p1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v1

    .line 1516
    :pswitch_7
    sget-object p1, Lcom/android/dialer/calldetails/CallDetailsEntries;->DEFAULT_INSTANCE:Lcom/android/dialer/calldetails/CallDetailsEntries;

    return-object p1

    .line 1513
    :pswitch_8
    new-instance p1, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;-><init>(Lcom/android/dialer/calldetails/CallDetailsEntries$1;)V

    return-object p1

    .line 1510
    :pswitch_9
    new-instance p1, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-direct {p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;-><init>()V

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

.method public getEntries(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    return-object p1
.end method

.method public getEntriesCount()I
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEntriesOrBuilder(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;

    return-object p1
.end method

.method public getEntriesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1293
    iget v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1297
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1298
    iget-object v2, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1299
    invoke-interface {v2, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 1302
    iput v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->memoizedSerializedSize:I

    return v1
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1285
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->entries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
