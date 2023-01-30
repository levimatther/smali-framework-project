.class public final Lcom/android/dialer/logging/ContactSource;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactSource.java"

# interfaces
.implements Lcom/android/dialer/logging/ContactSourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/logging/ContactSource$Builder;,
        Lcom/android/dialer/logging/ContactSource$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/logging/ContactSource;",
        "Lcom/android/dialer/logging/ContactSource$Builder;",
        ">;",
        "Lcom/android/dialer/logging/ContactSourceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/logging/ContactSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 387
    new-instance v0, Lcom/android/dialer/logging/ContactSource;

    invoke-direct {v0}, Lcom/android/dialer/logging/ContactSource;-><init>()V

    sput-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/logging/ContactSource;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/android/dialer/logging/ContactSource;
    .locals 1

    .line 391
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/logging/ContactSource$Builder;
    .locals 1

    .line 273
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-virtual {v0}, Lcom/android/dialer/logging/ContactSource;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/logging/ContactSource$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/logging/ContactSource;)Lcom/android/dialer/logging/ContactSource$Builder;
    .locals 1

    .line 276
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-virtual {v0, p0}, Lcom/android/dialer/logging/ContactSource;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0}, Lcom/android/dialer/logging/ContactSource;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/logging/ContactSource;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/logging/ContactSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/logging/ContactSource;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/logging/ContactSource;",
            ">;"
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-virtual {v0}, Lcom/android/dialer/logging/ContactSource;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 300
    sget-object v0, Lcom/android/dialer/logging/ContactSource$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 378
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 372
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 359
    :pswitch_2
    sget-object p1, Lcom/android/dialer/logging/ContactSource;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 361
    const-class p2, Lcom/android/dialer/logging/ContactSource;

    monitor-enter p2

    .line 362
    :try_start_0
    sget-object p1, Lcom/android/dialer/logging/ContactSource;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 364
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 365
    sput-object p1, Lcom/android/dialer/logging/ContactSource;->PARSER:Lcom/google/protobuf/Parser;

    .line 367
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

    .line 322
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 324
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 332
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_3

    .line 338
    invoke-virtual {p0, p3, p2}, Lcom/android/dialer/logging/ContactSource;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result p3
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_2

    :cond_3
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 348
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 350
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 346
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    :goto_2
    throw p1

    .line 356
    :cond_4
    :pswitch_4
    sget-object p1, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    return-object p1

    .line 327
    :cond_5
    throw v1

    .line 314
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 315
    check-cast p3, Lcom/android/dialer/logging/ContactSource;

    .line 316
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    :pswitch_6
    return-object v1

    .line 308
    :pswitch_7
    sget-object p1, Lcom/android/dialer/logging/ContactSource;->DEFAULT_INSTANCE:Lcom/android/dialer/logging/ContactSource;

    return-object p1

    .line 305
    :pswitch_8
    new-instance p1, Lcom/android/dialer/logging/ContactSource$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/logging/ContactSource$Builder;-><init>(Lcom/android/dialer/logging/ContactSource$1;)V

    return-object p1

    .line 302
    :pswitch_9
    new-instance p1, Lcom/android/dialer/logging/ContactSource;

    invoke-direct {p1}, Lcom/android/dialer/logging/ContactSource;-><init>()V

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

.method public getSerializedSize()I
    .locals 2

    .line 189
    iget v0, p0, Lcom/android/dialer/logging/ContactSource;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/logging/ContactSource;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 194
    iput v0, p0, Lcom/android/dialer/logging/ContactSource;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/dialer/logging/ContactSource;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
