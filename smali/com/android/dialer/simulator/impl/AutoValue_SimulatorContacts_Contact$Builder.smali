.class final Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;
.super Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
.source "AutoValue_SimulatorContacts_Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;"
        }
    .end annotation
.end field

.field private isStarred:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private photoStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;
    .locals 11

    .line 195
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->accountType:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accountType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->accountName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accountName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->isStarred:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isStarred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->phoneNumbers:Ljava/util/List;

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phoneNumbers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->emails:Ljava/util/List;

    if-nez v0, :cond_4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " emails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    new-instance v0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;

    iget-object v3, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->isStarred:Ljava/lang/Boolean;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->photoStream:Ljava/io/ByteArrayOutputStream;

    iget-object v8, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->phoneNumbers:Ljava/util/List;

    iget-object v9, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->emails:Ljava/util/List;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/ByteArrayOutputStream;Ljava/util/List;Ljava/util/List;Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$1;)V

    return-object v0

    .line 211
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

.method setAccountName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->accountName:Ljava/lang/String;

    return-object p0

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null accountName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setAccountType(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 150
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->accountType:Ljava/lang/String;

    return-object p0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null accountType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setEmails(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;)",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->emails:Ljava/util/List;

    return-object p0

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null emails"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 0

    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->isStarred:Ljava/lang/Boolean;

    return-object p0
.end method

.method setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method setPhoneNumbers(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;)",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->phoneNumbers:Ljava/util/List;

    return-object p0

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null phoneNumbers"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPhotoStream(Ljava/io/ByteArrayOutputStream;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->photoStream:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method
