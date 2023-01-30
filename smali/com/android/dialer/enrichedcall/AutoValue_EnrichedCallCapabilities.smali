.class final Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;
.super Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;
.source "AutoValue_EnrichedCallCapabilities.java"


# instance fields
.field private final supportsCallComposer:Z

.field private final supportsPostCall:Z

.field private final supportsVideoShare:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsCallComposer:Z

    .line 19
    iput-boolean p2, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsPostCall:Z

    .line 20
    iput-boolean p3, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsVideoShare:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    check-cast p1, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;

    .line 54
    iget-boolean v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsCallComposer:Z

    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsCallComposer()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsPostCall:Z

    .line 55
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsPostCall()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsVideoShare:Z

    .line 56
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;->supportsVideoShare()Z

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

.method public hashCode()I
    .locals 5

    .line 65
    iget-boolean v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsCallComposer:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int/2addr v0, v3

    .line 67
    iget-boolean v4, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsPostCall:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 69
    iget-boolean v3, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsVideoShare:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public supportsCallComposer()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsCallComposer:Z

    return v0
.end method

.method public supportsPostCall()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsPostCall:Z

    return v0
.end method

.method public supportsVideoShare()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsVideoShare:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnrichedCallCapabilities{supportsCallComposer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsCallComposer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsPostCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsPostCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsVideoShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialer/enrichedcall/AutoValue_EnrichedCallCapabilities;->supportsVideoShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
