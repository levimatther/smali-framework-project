.class public final Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CallDetailsEntries.java"

# interfaces
.implements Lcom/android/dialer/calldetails/CallDetailsEntriesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calldetails/CallDetailsEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/calldetails/CallDetailsEntries;",
        "Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;",
        ">;",
        "Lcom/android/dialer/calldetails/CallDetailsEntriesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1397
    invoke-static {}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$2600()Lcom/android/dialer/calldetails/CallDetailsEntries;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/calldetails/CallDetailsEntries$1;)V
    .locals 0

    .line 1390
    invoke-direct {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEntries(Ljava/lang/Iterable;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            ">;)",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;"
        }
    .end annotation

    .line 1480
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1481
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$3300(Lcom/android/dialer/calldetails/CallDetailsEntries;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1471
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1472
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$3200(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V

    return-object p0
.end method

.method public addEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1453
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1454
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$3000(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1462
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1463
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$3100(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V

    return-object p0
.end method

.method public addEntries(Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1444
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1445
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$2900(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method

.method public clearEntries()Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1488
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1489
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$3400(Lcom/android/dialer/calldetails/CallDetailsEntries;)V

    return-object p0
.end method

.method public getEntries(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntries(I)Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;

    move-result-object p1

    return-object p1
.end method

.method public getEntriesCount()I
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesCount()I

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

    .line 1406
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    .line 1407
    invoke-virtual {v0}, Lcom/android/dialer/calldetails/CallDetailsEntries;->getEntriesList()Ljava/util/List;

    move-result-object v0

    .line 1406
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeEntries(I)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1497
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$3500(Lcom/android/dialer/calldetails/CallDetailsEntries;I)V

    return-object p0
.end method

.method public setEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1436
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1437
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$2800(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry$Builder;)V

    return-object p0
.end method

.method public setEntries(ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;
    .locals 1

    .line 1427
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->copyOnWrite()V

    .line 1428
    iget-object v0, p0, Lcom/android/dialer/calldetails/CallDetailsEntries$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/dialer/calldetails/CallDetailsEntries;

    invoke-static {v0, p1, p2}, Lcom/android/dialer/calldetails/CallDetailsEntries;->access$2700(Lcom/android/dialer/calldetails/CallDetailsEntries;ILcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;)V

    return-object p0
.end method
