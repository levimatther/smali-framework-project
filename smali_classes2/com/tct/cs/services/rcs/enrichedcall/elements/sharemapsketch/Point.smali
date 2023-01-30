.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;
.super Ljava/lang/Object;
.source "Point.java"


# static fields
.field public static final DEFAULT_ENCODE:Ljava/lang/String; = "Base64"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Base64"

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;-><init>(Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->mEncoding:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->mPoint:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->mEncoding:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Base64"

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->mPoint:Landroid/util/Pair;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPoint(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/sharemapsketch/Point;->mPoint:Landroid/util/Pair;

    return-void
.end method
