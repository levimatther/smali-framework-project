.class public final synthetic Lcom/google/common/collect/-$$Lambda$lUj_u-fHDTuwEW1Fk84opmRFNIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Row;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$lUj_u-fHDTuwEW1Fk84opmRFNIo;->f$0:Lcom/google/common/collect/StandardTable$Row;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$lUj_u-fHDTuwEW1Fk84opmRFNIo;->f$0:Lcom/google/common/collect/StandardTable$Row;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$Row;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
