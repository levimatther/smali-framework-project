.class public final Lcom/google/protobuf/Int64Value$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Int64Value.java"

# interfaces
.implements Lcom/google/protobuf/Int64ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int64Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/Int64Value$Builder;",
        ">;",
        "Lcom/google/protobuf/Int64ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private value_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 285
    invoke-direct {p0}, Lcom/google/protobuf/Int64Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 290
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 291
    invoke-direct {p0}, Lcom/google/protobuf/Int64Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Int64Value$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Int64Value$1;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/protobuf/Int64Value$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 272
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_Int64Value_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 294
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 364
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/protobuf/Int64Value;
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->buildPartial()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/google/protobuf/Int64Value;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 321
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/Int64Value$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->build()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->build()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/Int64Value;
    .locals 3

    .line 328
    new-instance v0, Lcom/google/protobuf/Int64Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Int64Value;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Int64Value$1;)V

    .line 329
    iget-wide v1, p0, Lcom/google/protobuf/Int64Value$Builder;->value_:J

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Int64Value;->access$302(Lcom/google/protobuf/Int64Value;J)J

    .line 330
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->buildPartial()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->buildPartial()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clear()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clear()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/Int64Value$Builder;
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 301
    iput-wide v0, p0, Lcom/google/protobuf/Int64Value$Builder;->value_:J

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clear()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clear()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 347
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 352
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearValue()Lcom/google/protobuf/Int64Value$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 443
    iput-wide v0, p0, Lcom/google/protobuf/Int64Value$Builder;->value_:J

    .line 444
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clone()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clone()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clone()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/Int64Value$Builder;
    .locals 1

    .line 336
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int64Value$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clone()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clone()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->clone()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Int64Value;
    .locals 1

    .line 314
    invoke-static {}, Lcom/google/protobuf/Int64Value;->getDefaultInstance()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 309
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_Int64Value_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 419
    iget-wide v0, p0, Lcom/google/protobuf/Int64Value$Builder;->value_:J

    return-wide v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 278
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_Int64Value_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Int64Value;

    const-class v2, Lcom/google/protobuf/Int64Value$Builder;

    .line 279
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 398
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Int64Value;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 400
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Int64Value;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0, v0}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 4

    .line 377
    invoke-static {}, Lcom/google/protobuf/Int64Value;->getDefaultInstance()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Int64Value;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p1}, Lcom/google/protobuf/Int64Value;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/Int64Value$Builder;->setValue(J)Lcom/google/protobuf/Int64Value$Builder;

    .line 381
    :cond_1
    iget-object p1, p1, Lcom/google/protobuf/Int64Value;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;

    .line 382
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 1

    .line 368
    instance-of v0, p1, Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_0

    .line 369
    check-cast p1, Lcom/google/protobuf/Int64Value;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 456
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 342
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Int64Value$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Int64Value$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Int64Value$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 450
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFieldsProto3(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int64Value$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(J)Lcom/google/protobuf/Int64Value$Builder;
    .locals 0

    .line 430
    iput-wide p1, p0, Lcom/google/protobuf/Int64Value$Builder;->value_:J

    .line 431
    invoke-virtual {p0}, Lcom/google/protobuf/Int64Value$Builder;->onChanged()V

    return-object p0
.end method
