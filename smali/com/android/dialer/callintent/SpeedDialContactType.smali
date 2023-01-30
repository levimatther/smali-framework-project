.class public final Lcom/android/dialer/callintent/SpeedDialContactType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeedDialContactType.java"

# interfaces
.implements Lcom/android/dialer/callintent/SpeedDialContactTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/callintent/SpeedDialContactType$Builder;,
        Lcom/android/dialer/callintent/SpeedDialContactType$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/dialer/callintent/SpeedDialContactType;",
        "Lcom/android/dialer/callintent/SpeedDialContactType$Builder;",
        ">;",
        "Lcom/android/dialer/callintent/SpeedDialContactTypeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/callintent/SpeedDialContactType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 318
    new-instance v0, Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-direct {v0}, Lcom/android/dialer/callintent/SpeedDialContactType;-><init>()V

    sput-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1

    .line 14
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1

    .line 322
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/dialer/callintent/SpeedDialContactType$Builder;
    .locals 1

    .line 199
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/SpeedDialContactType;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/callintent/SpeedDialContactType$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/dialer/callintent/SpeedDialContactType;)Lcom/android/dialer/callintent/SpeedDialContactType$Builder;
    .locals 1

    .line 202
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-virtual {v0, p0}, Lcom/android/dialer/callintent/SpeedDialContactType;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0}, Lcom/android/dialer/callintent/SpeedDialContactType;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0, p1}, Lcom/android/dialer/callintent/SpeedDialContactType;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/dialer/callintent/SpeedDialContactType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/dialer/callintent/SpeedDialContactType;",
            ">;"
        }
    .end annotation

    .line 328
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-virtual {v0}, Lcom/android/dialer/callintent/SpeedDialContactType;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 231
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 309
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 303
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 290
    :pswitch_2
    sget-object p1, Lcom/android/dialer/callintent/SpeedDialContactType;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 292
    const-class p2, Lcom/android/dialer/callintent/SpeedDialContactType;

    monitor-enter p2

    .line 293
    :try_start_0
    sget-object p1, Lcom/android/dialer/callintent/SpeedDialContactType;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 295
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 296
    sput-object p1, Lcom/android/dialer/callintent/SpeedDialContactType;->PARSER:Lcom/google/protobuf/Parser;

    .line 298
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

    .line 253
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 255
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 263
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    if-eqz p3, :cond_3

    .line 269
    invoke-virtual {p0, p3, p2}, Lcom/android/dialer/callintent/SpeedDialContactType;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

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

    .line 279
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 281
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 277
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    :goto_2
    throw p1

    .line 287
    :cond_4
    :pswitch_4
    sget-object p1, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p1

    .line 258
    :cond_5
    throw v1

    .line 245
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 246
    check-cast p3, Lcom/android/dialer/callintent/SpeedDialContactType;

    .line 247
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    :pswitch_6
    return-object v1

    .line 239
    :pswitch_7
    sget-object p1, Lcom/android/dialer/callintent/SpeedDialContactType;->DEFAULT_INSTANCE:Lcom/android/dialer/callintent/SpeedDialContactType;

    return-object p1

    .line 236
    :pswitch_8
    new-instance p1, Lcom/android/dialer/callintent/SpeedDialContactType$Builder;

    invoke-direct {p1, v1}, Lcom/android/dialer/callintent/SpeedDialContactType$Builder;-><init>(Lcom/android/dialer/callintent/SpeedDialContactType$1;)V

    return-object p1

    .line 233
    :pswitch_9
    new-instance p1, Lcom/android/dialer/callintent/SpeedDialContactType;

    invoke-direct {p1}, Lcom/android/dialer/callintent/SpeedDialContactType;-><init>()V

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

    .line 115
    iget v0, p0, Lcom/android/dialer/callintent/SpeedDialContactType;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/callintent/SpeedDialContactType;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/dialer/callintent/SpeedDialContactType;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/dialer/callintent/SpeedDialContactType;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
