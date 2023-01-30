.class public Lcom/android/contacts/common/model/dataitem/RelationDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "RelationDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 3

    .line 44
    instance-of p2, p1, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    check-cast p1, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 51
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    iget-object p2, p0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result p2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v2

    if-eq p2, v2, :cond_3

    return v0

    .line 55
    :cond_3
    iget-object p2, p0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result p2

    if-nez p2, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1

    .line 52
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result p1

    if-ne p2, p1, :cond_6

    move v0, v1

    :cond_6
    :goto_1
    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 0

    .line 28
    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
