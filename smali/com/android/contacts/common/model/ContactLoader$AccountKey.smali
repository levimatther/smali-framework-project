.class Lcom/android/contacts/common/model/ContactLoader$AccountKey;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountKey"
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    .line 978
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    .line 979
    iput-object p3, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 989
    instance-of v0, p1, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 992
    :cond_0
    check-cast p1, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    .line 993
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    .line 994
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    .line 995
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 984
    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
