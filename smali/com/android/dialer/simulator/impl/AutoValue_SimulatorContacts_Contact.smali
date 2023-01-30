.class final Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;
.super Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;
.source "AutoValue_SimulatorContacts_Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;
    }
.end annotation


# instance fields
.field private final accountName:Ljava/lang/String;

.field private final accountType:Ljava/lang/String;

.field private final emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;"
        }
    .end annotation
.end field

.field private final isStarred:Z

.field private final name:Ljava/lang/String;

.field private final phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final photoStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/ByteArrayOutputStream;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/ByteArrayOutputStream;",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountType:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->name:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->isStarred:Z

    .line 38
    iput-object p5, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->photoStream:Ljava/io/ByteArrayOutputStream;

    .line 39
    iput-object p6, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->phoneNumbers:Ljava/util/List;

    .line 40
    iput-object p7, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->emails:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/ByteArrayOutputStream;Ljava/util/List;Ljava/util/List;Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$1;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p7}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/ByteArrayOutputStream;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 103
    check-cast p1, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    .line 104
    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-boolean v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->isStarred:Z

    .line 107
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getIsStarred()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->photoStream:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getPhotoStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getPhotoStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->phoneNumbers:Ljava/util/List;

    .line 109
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->emails:Ljava/util/List;

    .line 110
    invoke-virtual {p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getEmails()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method getAccountName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method getAccountType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method getEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->emails:Ljava/util/List;

    return-object v0
.end method

.method getIsStarred()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->isStarred:Z

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method getPhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method getPhotoStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->photoStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 121
    iget-object v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 123
    iget-object v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 125
    iget-boolean v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->isStarred:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 127
    iget-object v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->photoStream:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 129
    iget-object v2, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->phoneNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->emails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contact{accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isStarred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->isStarred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", photoStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->photoStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->phoneNumbers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;->emails:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
