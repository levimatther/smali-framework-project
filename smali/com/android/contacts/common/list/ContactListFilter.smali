.class public final Lcom/android/contacts/common/list/ContactListFilter;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_TYPE_ACCOUNT:I = 0x0

.field public static final FILTER_TYPE_ALL_ACCOUNTS:I = -0x2

.field public static final FILTER_TYPE_CUSTOM:I = -0x3

.field public static final FILTER_TYPE_DEFAULT:I = -0x1

.field private static final FILTER_TYPE_GROUP:I = 0x1

.field public static final FILTER_TYPE_SINGLE_CONTACT:I = -0x6

.field public static final FILTER_TYPE_STARRED:I = -0x4

.field public static final FILTER_TYPE_WITH_PHONE_NUMBERS_ONLY:I = -0x5

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "filter.accountName"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "filter.accountType"

.field private static final KEY_DATA_SET:Ljava/lang/String; = "filter.dataSet"

.field private static final KEY_FILTER_TYPE:Ljava/lang/String; = "filter.type"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountType:Ljava/lang/String;

.field public final dataSet:Ljava/lang/String;

.field public final filterType:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactListFilter$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 76
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 7

    .line 88
    new-instance v6, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 7

    .line 83
    new-instance v6, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public static final filterTypeToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "(unknown)"

    return-object p0

    :pswitch_0
    const-string p0, "FILTER_TYPE_ACCOUNT"

    return-object p0

    :pswitch_1
    const-string p0, "FILTER_TYPE_DEFAULT"

    return-object p0

    :pswitch_2
    const-string p0, "FILTER_TYPE_ALL_ACCOUNTS"

    return-object p0

    :pswitch_3
    const-string p0, "FILTER_TYPE_CUSTOM"

    return-object p0

    :pswitch_4
    const-string p0, "FILTER_TYPE_STARRED"

    return-object p0

    :pswitch_5
    const-string p0, "FILTER_TYPE_WITH_PHONE_NUMBERS_ONLY"

    return-object p0

    :pswitch_6
    const-string p0, "FILTER_TYPE_SINGLE_CONTACT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 3

    .line 115
    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object p0

    const/4 v0, -0x2

    if-nez p0, :cond_0

    .line 117
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object p0

    .line 121
    :cond_0
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 122
    :cond_1
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 8

    const-string v0, "filter.type"

    const/4 v1, -0x1

    .line 128
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v0, 0x0

    if-ne v3, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "filter.accountName"

    .line 133
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "filter.accountType"

    .line 134
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "filter.dataSet"

    .line 135
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    new-instance p0, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 98
    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    :goto_0
    const-string v1, "filter.type"

    .line 103
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    :goto_1
    const-string v2, "filter.accountName"

    .line 104
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_3

    move-object v1, v0

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    :goto_2
    const-string v2, "filter.accountType"

    .line 105
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    :goto_3
    const-string p1, "filter.dataSet"

    .line 106
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2

    .line 274
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    const-string v1, "account_name"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 278
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    const-string v1, "account_type"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 279
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    const-string v1, "data_set"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-object p1

    .line 275
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "filterType must be FILTER_TYPE_ACCOUNT"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareTo(Lcom/android/contacts/common/list/ContactListFilter;)I
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 202
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    iget p1, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->compareTo(Lcom/android/contacts/common/list/ContactListFilter;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 224
    :cond_0
    instance-of v1, p1, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 228
    :cond_1
    check-cast p1, Lcom/android/contacts/common/list/ContactListFilter;

    .line 229
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    iget v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 230
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 231
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 232
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->mId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    const/16 v2, 0x2d

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->mId:Ljava/lang/String;

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 208
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 210
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public isValidationRequired()Z
    .locals 1

    .line 162
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[filter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->filterTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", accountType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", accountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dataSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 187
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "default"

    return-object v0

    :pswitch_2
    const-string v0, "all_accounts"

    return-object v0

    :pswitch_3
    const-string v0, "custom"

    return-object v0

    :pswitch_4
    const-string v0, "starred"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "with_phones"

    return-object v0

    :pswitch_6
    const-string v0, "single"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 238
    iget p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
