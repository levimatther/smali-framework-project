.class public abstract Lcom/android/dialershared/bubble/BubbleInfo$Action;
.super Ljava/lang/Object;
.source "BubbleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/BubbleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    .locals 2

    .line 94
    new-instance v0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;

    invoke-direct {v0}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->setEnabled(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setChecked(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/android/dialershared/bubble/BubbleInfo$Action;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    .locals 2

    .line 98
    invoke-static {}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->builder()Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setChecked(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setEnabled(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setName(Ljava/lang/CharSequence;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getIcon()Landroid/graphics/drawable/Icon;
.end method

.method public abstract getIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getName()Ljava/lang/CharSequence;
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isEnabled()Z
.end method
