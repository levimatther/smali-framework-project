.class public final Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HistoryResult.java"

# interfaces
.implements Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
        "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;",
        ">;",
        "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 486
    invoke-static {}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$000()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$1;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearImageContentType()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 655
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$1000(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method

.method public clearImageUri()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$700(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method

.method public clearText()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$400(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method

.method public clearTimestamp()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$1300(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method

.method public clearType()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$200(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method

.method public getImageContentType()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getImageUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->getType()Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasImageContentType()Z
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasImageContentType()Z

    move-result v0

    return v0
.end method

.method public hasImageUri()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasImageUri()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasText()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->hasType()Z

    move-result v0

    return v0
.end method

.method public setImageContentType(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 647
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$900(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setImageContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 664
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$1100(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setImageUri(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$600(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setImageUriBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$800(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$300(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$500(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 686
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$1200(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;J)V

    return-object p0
.end method

.method public setType(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    invoke-static {v0, p1}, Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;->access$100(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Type;)V

    return-object p0
.end method
