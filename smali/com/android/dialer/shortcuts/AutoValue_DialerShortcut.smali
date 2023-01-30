.class final Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;
.super Lcom/android/dialer/shortcuts/DialerShortcut;
.source "AutoValue_DialerShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;
    }
.end annotation


# instance fields
.field private final contactId:J

.field private final displayName:Ljava/lang/String;

.field private final lookupKey:Ljava/lang/String;

.field private final rank:I


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->contactId:J

    .line 23
    iput-object p3, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->lookupKey:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->displayName:Ljava/lang/String;

    .line 25
    iput p5, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->rank:I

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ILcom/android/dialer/shortcuts/AutoValue_DialerShortcut$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/shortcuts/DialerShortcut;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 66
    check-cast p1, Lcom/android/dialer/shortcuts/DialerShortcut;

    .line 67
    iget-wide v3, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->contactId:J

    invoke-virtual {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getContactId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->lookupKey:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->displayName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->rank:I

    .line 70
    invoke-virtual {p1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getRank()I

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

.method getContactId()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->contactId:J

    return-wide v0
.end method

.method getDisplayName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method getLookupKey()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->lookupKey:Ljava/lang/String;

    return-object v0
.end method

.method getRank()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->rank:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 79
    iget-wide v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->contactId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 81
    iget-object v2, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->lookupKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 83
    iget-object v2, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 85
    iget v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->rank:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialerShortcut{contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->contactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lookupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->lookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
