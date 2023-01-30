.class public final Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RttTranscriptMessage.java"

# interfaces
.implements Lcom/android/dialer/rtt/RttTranscriptMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/rtt/RttTranscriptMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/rtt/RttTranscriptMessage;",
        "Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;",
        ">;",
        "Lcom/android/dialer/rtt/RttTranscriptMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 329
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$000()Lcom/android/dialer/rtt/RttTranscriptMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/rtt/RttTranscriptMessage$1;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContent()Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$200(Lcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-object p0
.end method

.method public clearIsFinished()Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 491
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$900(Lcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-object p0
.end method

.method public clearIsRemote()Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$700(Lcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-object p0
.end method

.method public clearTimestamp()Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 409
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$500(Lcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFinished()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getIsFinished()Z

    move-result v0

    return v0
.end method

.method public getIsRemote()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getIsRemote()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasContent()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasContent()Z

    move-result v0

    return v0
.end method

.method public hasIsFinished()Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasIsFinished()Z

    move-result v0

    return v0
.end method

.method public hasIsRemote()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasIsRemote()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscriptMessage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 361
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$100(Lcom/android/dialer/rtt/RttTranscriptMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContentBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$300(Lcom/android/dialer/rtt/RttTranscriptMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIsFinished(Z)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$800(Lcom/android/dialer/rtt/RttTranscriptMessage;Z)V

    return-object p0
.end method

.method public setIsRemote(Z)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 447
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$600(Lcom/android/dialer/rtt/RttTranscriptMessage;Z)V

    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscriptMessage;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/rtt/RttTranscriptMessage;->access$400(Lcom/android/dialer/rtt/RttTranscriptMessage;J)V

    return-object p0
.end method
