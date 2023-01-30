.class public abstract Lcom/android/dialershared/bubble/BubbleInfo$Builder;
.super Ljava/lang/Object;
.source "BubbleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/BubbleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/dialershared/bubble/BubbleInfo;
.end method

.method public abstract setActions(Ljava/util/List;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialershared/bubble/BubbleInfo$Action;",
            ">;)",
            "Lcom/android/dialershared/bubble/BubbleInfo$Builder;"
        }
    .end annotation
.end method

.method public abstract setPrimaryColor(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
.end method

.method public abstract setPrimaryIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
.end method

.method public abstract setPrimaryIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
.end method

.method public abstract setStartingYPosition(I)Lcom/android/dialershared/bubble/BubbleInfo$Builder;
.end method
