.class public Lcom/android/dialer/smartdial/SmartDialMatchPosition;
.super Ljava/lang/Object;
.source "SmartDialMatchPosition.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public end:I

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->start:I

    .line 37
    iput p2, p0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->end:I

    return-void
.end method

.method private advance(I)V
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->start:I

    .line 68
    iget v0, p0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->end:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->end:I

    return-void
.end method

.method public static advanceMatchPositions(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/smartdial/SmartDialMatchPosition;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    invoke-direct {v1, p1}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->advance(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static print(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/smartdial/SmartDialMatchPosition;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    .line 62
    sget-object v2, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->start:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->end:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
