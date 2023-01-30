.class final Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;
.super Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
.source "AutoValue_BubbleInfo_Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private checked:Ljava/lang/Boolean;

.field private enabled:Ljava/lang/Boolean;

.field private icon:Landroid/graphics/drawable/Icon;

.field private intent:Landroid/app/PendingIntent;

.field private name:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/dialershared/bubble/BubbleInfo$Action;
    .locals 9

    .line 150
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->icon:Landroid/graphics/drawable/Icon;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->intent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->checked:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " checked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    new-instance v0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;

    iget-object v3, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->icon:Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->name:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->intent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->enabled:Ljava/lang/Boolean;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->checked:Ljava/lang/Boolean;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZLcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$1;)V

    return-object v0

    .line 166
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

.method public setChecked(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    .locals 0

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->checked:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    .locals 0

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->icon:Landroid/graphics/drawable/Icon;

    return-object p0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null icon"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIntent(Landroid/app/PendingIntent;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->intent:Landroid/app/PendingIntent;

    return-object p0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null intent"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setName(Ljava/lang/CharSequence;)Lcom/android/dialershared/bubble/BubbleInfo$Action$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iput-object p1, p0, Lcom/android/dialershared/bubble/AutoValue_BubbleInfo_Action$Builder;->name:Ljava/lang/CharSequence;

    return-object p0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
