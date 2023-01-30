.class public final Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CallDetailsEntries.java"

# interfaces
.implements Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;",
        ">;",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 643
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$000()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/calldetails/CallDetailsEntries$1;)V
    .locals 0

    .line 636
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllHistoryResults(Ljava/lang/Iterable;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;)",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;"
        }
    .end annotation

    .line 961
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$2200(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 952
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 953
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$2100(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V

    return-object p0
.end method

.method public addHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 934
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 935
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1900(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method

.method public addHistoryResults(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 943
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$2000(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V

    return-object p0
.end method

.method public addHistoryResults(Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 925
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 926
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1800(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method

.method public clearAccountId()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 869
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1400(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearCallId()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$200(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearCallType()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 704
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$400(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearDataUsage()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1200(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearDate()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$800(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearDuration()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 798
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1000(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearFeatures()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$600(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearHistoryResults()Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 970
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$2300(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getAccountIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()J
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getCallId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallType()I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getCallType()I

    move-result v0

    return v0
.end method

.method public getDataUsage()J
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDataUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFeatures()I
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getFeatures()I

    move-result v0

    return v0
.end method

.method public getHistoryResults(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResults(I)Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;

    move-result-object p1

    return-object p1
.end method

.method public getHistoryResultsCount()I
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResultsCount()I

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

    .line 887
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    .line 888
    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->getHistoryResultsList()Ljava/util/List;

    move-result-object v0

    .line 887
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountId()Z
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasAccountId()Z

    move-result v0

    return v0
.end method

.method public hasCallId()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasCallId()Z

    move-result v0

    return v0
.end method

.method public hasCallType()Z
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasCallType()Z

    move-result v0

    return v0
.end method

.method public hasDataUsage()Z
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDataUsage()Z

    move-result v0

    return v0
.end method

.method public hasDate()Z
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDate()Z

    move-result v0

    return v0
.end method

.method public hasDuration()Z
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasDuration()Z

    move-result v0

    return v0
.end method

.method public hasFeatures()Z
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->hasFeatures()Z

    move-result v0

    return v0
.end method

.method public removeHistoryResults(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 977
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 978
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$2400(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;I)V

    return-object p0
.end method

.method public setAccountId(Ljava/lang/String;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1300(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAccountIdBytes(Lcom/google/protobuf/ByteString;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1500(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCallId(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$100(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V

    return-object p0
.end method

.method public setCallType(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$300(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;I)V

    return-object p0
.end method

.method public setDataUsage(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1100(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V

    return-object p0
.end method

.method public setDate(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 758
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 759
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$700(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V

    return-object p0
.end method

.method public setDuration(J)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 789
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$900(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;J)V

    return-object p0
.end method

.method public setFeatures(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 728
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$500(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;I)V

    return-object p0
.end method

.method public setHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1700(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult$Builder;)V

    return-object p0
.end method

.method public setHistoryResults(ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;
    .locals 1

    .line 908
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->copyOnWrite()V

    .line 909
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;->access$1600(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;ILcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;)V

    return-object p0
.end method
