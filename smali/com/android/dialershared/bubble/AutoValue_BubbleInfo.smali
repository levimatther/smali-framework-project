.class final Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;
.super Lcom/android/dialershared/bubble/BubbleInfo;
.source "AutoValue_BubbleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryColor:I

.field private final primaryIcon:Landroid/graphics/drawable/Icon;

.field private final primaryIntent:Landroid/app/PendingIntent;

.field private final startingYPosition:I


# direct methods
.method private constructor <init>(ILandroid/graphics/drawable/Icon;Landroid/app/PendingIntent;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/android/dialershared/bubble/BubbleInfo;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryColor:I

    .line 31
    iput-object p2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIcon:Landroid/graphics/drawable/Icon;

    .line 32
    iput-object p3, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIntent:Landroid/app/PendingIntent;

    .line 33
    iput p4, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->startingYPosition:I

    .line 34
    iput-object p5, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->actions:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/graphics/drawable/Icon;Landroid/app/PendingIntent;ILjava/util/List;Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;-><init>(ILandroid/graphics/drawable/Icon;Landroid/app/PendingIntent;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lcom/android/dialershared/bubble/BubbleInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 84
    check-cast p1, Lcom/android/dialershared/bubble/BubbleInfo;

    .line 85
    iget v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryColor:I

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryColor()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIcon:Landroid/graphics/drawable/Icon;

    .line 86
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIntent:Landroid/app/PendingIntent;

    .line 87
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->startingYPosition:I

    .line 88
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo;->getStartingYPosition()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->actions:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryColor:I

    return v0
.end method

.method public getPrimaryIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getPrimaryIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getStartingYPosition()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->startingYPosition:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 98
    iget v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryColor:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 100
    iget-object v2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 102
    iget-object v2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 104
    iget v2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->startingYPosition:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 106
    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BubbleInfo{primaryColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->primaryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startingYPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->startingYPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
