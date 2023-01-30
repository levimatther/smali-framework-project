.class public final Lcom/android/dialer/simulator/impl/SimulatorContacts;
.super Ljava/lang/Object;
.source "SimulatorContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;,
        Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;,
        Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;
    }
.end annotation


# static fields
.field private static final SIMPLE_CONTACTS:[Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    .line 44
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string v2, "Michelangelo"

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v3, "+1-302-6365454"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;

    const-string v3, "m@example.com"

    invoke-direct {v2, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addEmail(Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setOrangePhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 52
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string v3, "Leonardo da Vinci"

    .line 53
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "(425) 739-5600"

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;

    const-string v5, "l@example.com"

    invoke-direct {v3, v5}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addEmail(Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setBluePhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    aput-object v1, v0, v2

    .line 60
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string v3, "Raphael"

    .line 61
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "+44 (0) 20 7031 3000"

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;

    const-string v5, "r@example.com"

    invoke-direct {v3, v5}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addEmail(Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setRedPhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    aput-object v1, v0, v4

    .line 68
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string v3, "Donatello di Niccol\u00f2 di Betto Bardi"

    .line 69
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "+1-650-2530000"

    invoke-direct {v3, v5, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v6, "+1 404-487-9000"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v6, "+61 2 9374 4001"

    const/4 v8, 0x5

    invoke-direct {v3, v6, v8}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setPurplePhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    aput-object v1, v0, v7

    .line 77
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string v3, "Splinter"

    .line 78
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    invoke-direct {v3, v5, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "+1 303-245-0086;123,456"

    invoke-direct {v3, v5, v7}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 83
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string/jumbo v3, "\u30b9\u30d1\u30a4\u30af\u30fb\u30b9\u30d4\u30fc\u30b2\u30eb"

    .line 84
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "+33 (0)1 42 68 53 00"

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    aput-object v1, v0, v8

    .line 88
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string/jumbo v3, "\u05e2\u05e7\u05d1 \u05d0\u05e8\u05d9\u05d4 \u05d8\u05d1\u05e8\u05e1\u05e7"

    .line 89
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 93
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string/jumbo v3, "\u0633\u0644\u0627\u0645 \u062f\u0646\u06cc\u0627"

    .line 94
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "+971 4 4509500"

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 95
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 98
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "+55-31-2128-6800"

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 102
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "611"

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 104
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string v3, "Anonymous"

    .line 105
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    const-string v5, "*86 512-343-5283"

    invoke-direct {v3, v5, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;-><init>(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 109
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->builder()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    const-string v3, "No Phone Number"

    .line 110
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;

    const-string v4, "no@example.com"

    invoke-direct {v3, v4}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v3}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->addEmail(Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v2}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/dialer/simulator/impl/SimulatorContacts;->SIMPLE_CONTACTS:[Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addContact(Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getAccountType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getAccountName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getIsStarred()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "starred"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "data1"

    const-string v3, "mimetype"

    const-string v4, "raw_contact_id"

    if-nez v1, :cond_0

    .line 142
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 143
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v5, "vnd.android.cursor.item/name"

    .line 145
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getName()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getPhotoStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 155
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    .line 157
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getPhotoStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "data15"

    .line 160
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "data3"

    const-string v7, "data2"

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;

    .line 167
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 168
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 169
    invoke-virtual {v8, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    .line 170
    invoke-virtual {v8, v3, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;->value:Ljava/lang/String;

    .line 173
    invoke-virtual {v8, v2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    iget v9, v5, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;->type:I

    .line 174
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    iget-object v5, v5, Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;->label:Ljava/lang/String;

    .line 175
    invoke-virtual {v7, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 176
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 167
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;->getEmails()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;

    .line 180
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 181
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 182
    invoke-virtual {v5, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v8, "vnd.android.cursor.item/email_v2"

    .line 183
    invoke-virtual {v5, v3, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v8, v1, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;->value:Ljava/lang/String;

    .line 186
    invoke-virtual {v5, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget v8, v1, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;->type:I

    .line 187
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    iget-object v1, v1, Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;->label:Ljava/lang/String;

    .line 188
    invoke-virtual {v5, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static populateContacts(Landroid/content/Context;)V
    .locals 5

    .line 118
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    sget-object v1, Lcom/android/dialer/simulator/impl/SimulatorContacts;->SIMPLE_CONTACTS:[Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 121
    invoke-static {v4, v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts;->addContact(Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "com.android.contacts"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 126
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error adding contacts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
