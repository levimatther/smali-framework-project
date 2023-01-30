.class public final Lcom/android/dialer/rtt/RttTranscript$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RttTranscript.java"

# interfaces
.implements Lcom/android/dialer/rtt/RttTranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/rtt/RttTranscript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/rtt/RttTranscript;",
        "Lcom/android/dialer/rtt/RttTranscript$Builder;",
        ">;",
        "Lcom/android/dialer/rtt/RttTranscriptOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 546
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscript;->access$000()Lcom/android/dialer/rtt/RttTranscript;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/rtt/RttTranscript$1;)V
    .locals 0

    .line 539
    invoke-direct {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;)",
            "Lcom/android/dialer/rtt/RttTranscript$Builder;"
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 863
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$1500(Lcom/android/dialer/rtt/RttTranscript;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMessages(ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 849
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 850
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->access$1400(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V

    return-object p0
.end method

.method public addMessages(ILcom/android/dialer/rtt/RttTranscriptMessage;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 823
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 824
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->access$1200(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-object p0
.end method

.method public addMessages(Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 836
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 837
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$1300(Lcom/android/dialer/rtt/RttTranscript;Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V

    return-object p0
.end method

.method public addMessages(Lcom/android/dialer/rtt/RttTranscriptMessage;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 810
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 811
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$1100(Lcom/android/dialer/rtt/RttTranscript;Lcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-object p0
.end method

.method public clearId()Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscript;->access$200(Lcom/android/dialer/rtt/RttTranscript;)V

    return-object p0
.end method

.method public clearMessages()Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 874
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 875
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscript;->access$1600(Lcom/android/dialer/rtt/RttTranscript;)V

    return-object p0
.end method

.method public clearNumber()Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 678
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 679
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscript;->access$500(Lcom/android/dialer/rtt/RttTranscript;)V

    return-object p0
.end method

.method public clearTimestamp()Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0}, Lcom/android/dialer/rtt/RttTranscript;->access$800(Lcom/android/dialer/rtt/RttTranscript;)V

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(I)Lcom/android/dialer/rtt/RttTranscriptMessage;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->getMessages(I)Lcom/android/dialer/rtt/RttTranscriptMessage;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesCount()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getMessagesCount()I

    move-result v0

    return v0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    .line 753
    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getMessagesList()Ljava/util/List;

    move-result-object v0

    .line 752
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-virtual {v0}, Lcom/android/dialer/rtt/RttTranscript;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public removeMessages(I)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 887
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$1700(Lcom/android/dialer/rtt/RttTranscript;I)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$100(Lcom/android/dialer/rtt/RttTranscript;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 619
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$300(Lcom/android/dialer/rtt/RttTranscript;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMessages(ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 799
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->access$1000(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage$Builder;)V

    return-object p0
.end method

.method public setMessages(ILcom/android/dialer/rtt/RttTranscriptMessage;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->access$900(Lcom/android/dialer/rtt/RttTranscript;ILcom/android/dialer/rtt/RttTranscriptMessage;)V

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 667
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$400(Lcom/android/dialer/rtt/RttTranscript;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1}, Lcom/android/dialer/rtt/RttTranscript;->access$600(Lcom/android/dialer/rtt/RttTranscript;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/dialer/rtt/RttTranscript$Builder;
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript$Builder;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Lcom/android/dialer/rtt/RttTranscript$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/rtt/RttTranscript;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/rtt/RttTranscript;->access$700(Lcom/android/dialer/rtt/RttTranscript;J)V

    return-object p0
.end method
