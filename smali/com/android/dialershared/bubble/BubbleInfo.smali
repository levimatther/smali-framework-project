.class public abstract Lcom/android/dialershared/bubble/BubbleInfo;
.super Ljava/lang/Object;
.source "BubbleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialershared/bubble/BubbleInfo$Action;,
        Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .locals 2

    .line 47
    new-instance v0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;

    invoke-direct {v0}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo$Builder;->setActions(Ljava/util/List;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/android/dialershared/bubble/BubbleInfo;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .locals 2

    .line 51
    invoke-static {}, Lcom/android/dialershared/bubble/BubbleInfo;->builder()Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setPrimaryIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setPrimaryColor(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo;->getPrimaryIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setPrimaryIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo;->getStartingYPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setStartingYPosition(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo;->getActions()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/dialershared/bubble/BubbleInfo$Builder;->setActions(Ljava/util/List;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryColor()I
.end method

.method public abstract getPrimaryIcon()Landroid/graphics/drawable/Icon;
.end method

.method public abstract getPrimaryIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getStartingYPosition()I
.end method
