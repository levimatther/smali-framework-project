.class public abstract Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
.super Ljava/lang/Object;
.source "BubbleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/BubbleInfo$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/dialershared/bubble/BubbleInfo$Action;
.end method

.method public abstract setChecked(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
.end method

.method public abstract setEnabled(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
.end method

.method public abstract setIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
.end method

.method public abstract setName(Ljava/lang/CharSequence;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
.end method
