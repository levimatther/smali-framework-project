.class final Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;
.super Lcom/android/dialershared/bubble/BubbleInfo$Builder;
.source "AutoValue_BubbleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;"
        }
    .end annotation
.end field

.field private primaryColor:Ljava/lang/Integer;

.field private primaryIcon:Landroid/graphics/drawable/Icon;

.field private primaryIntent:Landroid/app/PendingIntent;

.field private startingYPosition:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/dialershared/bubble/BubbleInfo;
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryColor:Ljava/lang/Integer;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " primaryColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " primaryIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " primaryIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->startingYPosition:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startingYPosition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->actions:Ljava/util/List;

    if-nez v0, :cond_4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    new-instance v0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryColor:Ljava/lang/Integer;

    .line 174
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryIcon:Landroid/graphics/drawable/Icon;

    iget-object v5, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->startingYPosition:Ljava/lang/Integer;

    .line 177
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->actions:Ljava/util/List;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo;-><init>(ILandroid/graphics/drawable/Icon;Landroid/app/PendingIntent;ILjava/util/List;Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$1;)V

    return-object v0

    .line 171
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActions(Ljava/util/List;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;)",
            "Lcom/android/dialershared/bubble/BubbleInfo$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 149
    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->actions:Ljava/util/List;

    return-object p0

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null actions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrimaryColor(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .locals 0

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPrimaryIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryIcon:Landroid/graphics/drawable/Icon;

    return-object p0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null primaryIcon"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrimaryIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->primaryIntent:Landroid/app/PendingIntent;

    return-object p0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null primaryIntent"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartingYPosition(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .locals 0

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->startingYPosition:Ljava/lang/Integer;

    return-object p0
.end method
