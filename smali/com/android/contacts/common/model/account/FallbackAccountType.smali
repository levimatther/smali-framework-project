.class public Lcom/android/contacts/common/model/account/FallbackAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "FallbackAccountType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->accountType:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->dataSet:Ljava/lang/String;

    const v0, 0x7f110042

    .line 31
    iput v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->titleRes:I

    const/high16 v0, 0x7f0e0000

    .line 32
    iput v0, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->iconRes:I

    .line 35
    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->resourcePackageName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FallbackAccountType"

    const-string v0, "Problem building account type"

    .line 56
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static createWithPackageNameForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1

    .line 70
    new-instance v0, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
