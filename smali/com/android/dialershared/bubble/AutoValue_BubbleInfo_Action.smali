.class final Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;
.super Lcom/android/dialershared/bubble/BubbleInfo$Action;
.source "AutoValue_BubbleInfo_Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;
    }
.end annotation


# instance fields
.field private final checked:Z

.field private final enabled:Z

.field private final icon:Landroid/graphics/drawable/Icon;

.field private final intent:Landroid/app/PendingIntent;

.field private final name:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->icon:Landroid/graphics/drawable/Icon;

    .line 28
    iput-object p2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->name:Ljava/lang/CharSequence;

    .line 29
    iput-object p3, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->intent:Landroid/app/PendingIntent;

    .line 30
    iput-boolean p4, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->enabled:Z

    .line 31
    iput-boolean p5, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->checked:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZLcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$1;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/android/dialershared/bubble/BubbleInfo$Action;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 79
    check-cast p1, Lcom/android/dialershared/bubble/BubbleInfo$Action;

    .line 80
    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->name:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->intent:Landroid/app/PendingIntent;

    .line 82
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->enabled:Z

    .line 83
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->isEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->checked:Z

    .line 84
    invoke-virtual {p1}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->icon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->intent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 95
    iget-object v2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 97
    iget-object v2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 99
    iget-boolean v2, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->enabled:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 101
    iget-boolean v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->checked:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->checked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->enabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action{icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;->checked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
