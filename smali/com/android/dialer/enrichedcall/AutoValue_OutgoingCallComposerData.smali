.class final Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;
.super Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;
.source "AutoValue_OutgoingCallComposerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$Builder;
    }
.end annotation


# instance fields
.field private final imageContentType:Ljava/lang/String;

.field private final imageUri:Landroid/net/Uri;

.field private final subject:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->subject:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageUri:Landroid/net/Uri;

    .line 22
    iput-object p3, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageContentType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 57
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 58
    check-cast p1, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;

    .line 59
    iget-object v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->subject:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageContentType:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 61
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getImageContentType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/OutgoingCallComposerData;->getImageContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0

    :cond_5
    return v2
.end method

.method public getImageContentType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->subject:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 72
    iget-object v3, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 74
    iget-object v2, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageContentType:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutgoingCallComposerData{subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_OutgoingCallComposerData;->imageContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
