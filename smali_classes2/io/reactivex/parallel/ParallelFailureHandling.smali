.class public final enum Lio/reactivex/parallel/ParallelFailureHandling;
.super Ljava/lang/Enum;
.source "ParallelFailureHandling.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/parallel/ParallelFailureHandling;",
        ">;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/lang/Long;",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/parallel/ParallelFailureHandling;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum ERROR:Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum RETRY:Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum SKIP:Lio/reactivex/parallel/ParallelFailureHandling;

.field public static final enum STOP:Lio/reactivex/parallel/ParallelFailureHandling;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/reactivex/parallel/ParallelFailureHandling;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/parallel/ParallelFailureHandling;->STOP:Lio/reactivex/parallel/ParallelFailureHandling;

    .line 5
    new-instance v0, Lio/reactivex/parallel/ParallelFailureHandling;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/parallel/ParallelFailureHandling;->ERROR:Lio/reactivex/parallel/ParallelFailureHandling;

    .line 9
    new-instance v0, Lio/reactivex/parallel/ParallelFailureHandling;

    const-string v1, "SKIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/parallel/ParallelFailureHandling;->SKIP:Lio/reactivex/parallel/ParallelFailureHandling;

    .line 13
    new-instance v0, Lio/reactivex/parallel/ParallelFailureHandling;

    const-string v1, "RETRY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/reactivex/parallel/ParallelFailureHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/parallel/ParallelFailureHandling;->RETRY:Lio/reactivex/parallel/ParallelFailureHandling;

    const/4 v1, 0x4

    new-array v1, v1, [Lio/reactivex/parallel/ParallelFailureHandling;

    .line 14
    sget-object v6, Lio/reactivex/parallel/ParallelFailureHandling;->STOP:Lio/reactivex/parallel/ParallelFailureHandling;

    aput-object v6, v1, v2

    sget-object v2, Lio/reactivex/parallel/ParallelFailureHandling;->ERROR:Lio/reactivex/parallel/ParallelFailureHandling;

    aput-object v2, v1, v3

    sget-object v2, Lio/reactivex/parallel/ParallelFailureHandling;->SKIP:Lio/reactivex/parallel/ParallelFailureHandling;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lio/reactivex/parallel/ParallelFailureHandling;->$VALUES:[Lio/reactivex/parallel/ParallelFailureHandling;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/parallel/ParallelFailureHandling;
    .locals 1

    .line 1
    const-class v0, Lio/reactivex/parallel/ParallelFailureHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/parallel/ParallelFailureHandling;

    return-object p0
.end method

.method public static values()[Lio/reactivex/parallel/ParallelFailureHandling;
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/parallel/ParallelFailureHandling;->$VALUES:[Lio/reactivex/parallel/ParallelFailureHandling;

    invoke-virtual {v0}, [Lio/reactivex/parallel/ParallelFailureHandling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/parallel/ParallelFailureHandling;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Long;Ljava/lang/Throwable;)Lio/reactivex/parallel/ParallelFailureHandling;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/parallel/ParallelFailureHandling;->apply(Ljava/lang/Long;Ljava/lang/Throwable;)Lio/reactivex/parallel/ParallelFailureHandling;

    move-result-object p1

    return-object p1
.end method
