.class public Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "PhoneDataItem.java"


# static fields
.field public static final KEY_FORMATTED_PHONE_NUMBER:Ljava/lang/String; = "formattedPhoneNumber"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public computeFormattedPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1, p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "formattedPhoneNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFormattedPhoneNumber()Ljava/lang/String;
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "formattedPhoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
