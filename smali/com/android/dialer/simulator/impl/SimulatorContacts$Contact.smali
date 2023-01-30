.class abstract Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;
.super Ljava/lang/Object;
.source "SimulatorContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 2

    .line 216
    new-instance v0, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;

    invoke-direct {v0}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;-><init>()V

    const-string v1, "com.google"

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/dialer/simulator/impl/AutoValue_SimulatorContacts_Contact$Builder;->setAccountType(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v0

    const-string v1, "foo@example"

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setAccountName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setPhoneNumbers(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {v0, v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setEmails(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract getAccountName()Ljava/lang/String;
.end method

.method abstract getAccountType()Ljava/lang/String;
.end method

.method abstract getEmails()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;"
        }
    .end annotation
.end method

.method abstract getIsStarred()Z
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method abstract getPhoneNumbers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;"
        }
    .end annotation
.end method

.method abstract getPhotoStream()Ljava/io/ByteArrayOutputStream;
.end method
