.class public final Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
.super Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private memoizedIsInitialized:B

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32476
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    .line 32484
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31497
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 31660
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 31498
    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 31499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31511
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;-><init>()V

    if-eqz p2, :cond_8

    .line 31517
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_6

    .line 31521
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_1

    .line 31541
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v3, :cond_2

    .line 31533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 31536
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v5, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    .line 31537
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 31536
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31527
    :cond_3
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->bitField0_:I

    .line 31528
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->deprecated_:Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31552
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 31553
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 31550
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v3, :cond_5

    .line 31556
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 31558
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 31559
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->makeExtensionsImmutable()V

    throw p1

    :cond_6
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v3, :cond_7

    .line 31556
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 31558
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 31559
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->makeExtensionsImmutable()V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 31513
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31487
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            "*>;)V"
        }
    .end annotation

    .line 31495
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 31660
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 31487
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$22502(Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;Z)Z
    .locals 0

    .line 31487
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$22600(Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;
    .locals 0

    .line 31487
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$22602(Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31487
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$22702(Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;I)I
    .locals 0

    .line 31487
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .line 32480
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 31564
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$22000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 31836
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 31839
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31809
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 31810
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31816
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 31817
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31777
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31783
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31822
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 31823
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31829
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 31830
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31797
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 31798
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31804
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 31805
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31766
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31772
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31787
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 31793
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            ">;"
        }
    .end annotation

    .line 32495
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 31722
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v1, :cond_1

    .line 31723
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 31725
    :cond_1
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    .line 31728
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->hasDeprecated()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->hasDeprecated()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 31729
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->hasDeprecated()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 31730
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getDeprecated()Z

    move-result v1

    .line 31731
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getDeprecated()Z

    move-result v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 31733
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    .line 31734
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    .line 31735
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-eqz v1, :cond_7

    .line 31737
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .line 32505
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 31487
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 31487
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .line 31602
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->deprecated_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;",
            ">;"
        }
    .end annotation

    .line 32500
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 31699
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 31703
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 31704
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->deprecated_:Z

    .line 31705
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 31707
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    const/16 v1, 0x3e7

    .line 31708
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    .line 31709
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31711
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 31712
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 31713
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedSize:I

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 31646
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 31636
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 31615
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1

    .line 31657
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object p1
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 31626
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 31505
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeprecated()Z
    .locals 2

    .line 31589
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 31743
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 31744
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 31747
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31748
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 31751
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getDeprecated()Z

    move-result v1

    .line 31750
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 31753
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 31755
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31757
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 31758
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31759
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 31570
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$22100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    .line 31571
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 31663
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    .line 31667
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 31668
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 31669
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31673
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 31674
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedIsInitialized:B

    return v2

    .line 31677
    :cond_4
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 31834
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2

    .line 31850
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 31487
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 31487
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 31487
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2

    .line 31843
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 31844
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 31487
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 31487
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31686
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 31687
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 31688
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_0
    const/4 v1, 0x0

    .line 31690
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x3e7

    .line 31691
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x20000000

    .line 31693
    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 31694
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
