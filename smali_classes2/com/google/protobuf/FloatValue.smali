.class public final Lcom/google/protobuf/FloatValue;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "FloatValue.java"

# interfaces
.implements Lcom/google/protobuf/FloatValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FloatValue$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/FloatValue;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/FloatValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private value_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 468
    new-instance v0, Lcom/google/protobuf/FloatValue;

    invoke-direct {v0}, Lcom/google/protobuf/FloatValue;-><init>()V

    sput-object v0, Lcom/google/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/FloatValue;

    .line 480
    new-instance v0, Lcom/google/protobuf/FloatValue$1;

    invoke-direct {v0}, Lcom/google/protobuf/FloatValue$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 101
    iput-byte v0, p0, Lcom/google/protobuf/FloatValue;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/google/protobuf/FloatValue;->value_:F

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/FloatValue;-><init>()V

    if-eqz p2, :cond_4

    .line 42
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    .line 57
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/FloatValue;->parseUnknownFieldProto3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/protobuf/FloatValue;->value_:F
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 68
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 69
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 66
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 72
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->makeExtensionsImmutable()V

    throw p1

    .line 71
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 72
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->makeExtensionsImmutable()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 38
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FloatValue$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/FloatValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 101
    iput-byte p1, p0, Lcom/google/protobuf/FloatValue;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/FloatValue$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/FloatValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/protobuf/FloatValue;F)F
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/protobuf/FloatValue;->value_:F

    return p1
.end method

.method static synthetic access$400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/FloatValue;
    .locals 1

    .line 472
    sget-object v0, Lcom/google/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/FloatValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_FloatValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/FloatValue$Builder;
    .locals 1

    .line 243
    sget-object v0, Lcom/google/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/FloatValue;

    invoke-virtual {v0}, Lcom/google/protobuf/FloatValue;->toBuilder()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 1

    .line 246
    sget-object v0, Lcom/google/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/FloatValue;

    invoke-virtual {v0}, Lcom/google/protobuf/FloatValue;->toBuilder()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static of(F)Lcom/google/protobuf/FloatValue;
    .locals 1

    .line 476
    invoke-static {}, Lcom/google/protobuf/FloatValue;->newBuilder()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FloatValue$Builder;->setValue(F)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->build()Lcom/google/protobuf/FloatValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 217
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 224
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 230
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 237
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 205
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 212
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FloatValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/FloatValue;",
            ">;"
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 141
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/FloatValue;

    if-nez v1, :cond_1

    .line 142
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 144
    :cond_1
    check-cast p1, Lcom/google/protobuf/FloatValue;

    .line 148
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 150
    invoke-virtual {p1}, Lcom/google/protobuf/FloatValue;->getValue()F

    move-result v2

    .line 149
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/FloatValue;
    .locals 1

    .line 501
    sget-object v0, Lcom/google/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/FloatValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->getDefaultInstanceForType()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->getDefaultInstanceForType()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/FloatValue;",
            ">;"
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/google/protobuf/FloatValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 123
    iget v0, p0, Lcom/google/protobuf/FloatValue;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 127
    iget v1, p0, Lcom/google/protobuf/FloatValue;->value_:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 129
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    iput v0, p0, Lcom/google/protobuf/FloatValue;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/protobuf/FloatValue;->value_:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget v0, p0, Lcom/google/protobuf/FloatValue;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Lcom/google/protobuf/FloatValue;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 161
    invoke-static {}, Lcom/google/protobuf/FloatValue;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 164
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->getValue()F

    move-result v1

    .line 163
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 165
    iget-object v1, p0, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/google/protobuf/FloatValue;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 83
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_FloatValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/FloatValue;

    const-class v2, Lcom/google/protobuf/FloatValue$Builder;

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 104
    iget-byte v0, p0, Lcom/google/protobuf/FloatValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/FloatValue;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/FloatValue$Builder;
    .locals 1

    .line 241
    invoke-static {}, Lcom/google/protobuf/FloatValue;->newBuilder()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 2

    .line 257
    new-instance v0, Lcom/google/protobuf/FloatValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/FloatValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/FloatValue$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->newBuilderForType()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->newBuilderForType()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/FloatValue$Builder;
    .locals 2

    .line 250
    sget-object v0, Lcom/google/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/FloatValue;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/FloatValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/FloatValue$Builder;-><init>(Lcom/google/protobuf/FloatValue$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/FloatValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/FloatValue$Builder;-><init>(Lcom/google/protobuf/FloatValue$1;)V

    .line 251
    invoke-virtual {v0, p0}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->toBuilder()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue;->toBuilder()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Lcom/google/protobuf/FloatValue;->value_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FloatValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
