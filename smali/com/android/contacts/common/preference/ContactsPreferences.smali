.class public Lcom/android/contacts/common/preference/ContactsPreferences;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_ORDER_ALTERNATIVE:I = 0x2

.field public static final DISPLAY_ORDER_KEY:Ljava/lang/String; = "android.contacts.DISPLAY_ORDER"

.field public static final DISPLAY_ORDER_PRIMARY:I = 0x1

.field private static final PREFERENCE_UNASSIGNED:I = -0x1

.field public static final PREF_DISPLAY_ONLY_PHONES:Ljava/lang/String; = "only_phones"

.field public static final PREF_DISPLAY_ONLY_PHONES_DEFAULT:Z = false

.field public static final SORT_ORDER_ALTERNATIVE:I = 0x2

.field public static final SORT_ORDER_KEY:Ljava/lang/String; = "android.contacts.SORT_ORDER"

.field public static final SORT_ORDER_PRIMARY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultAccount:Ljava/lang/String;

.field private mDefaultAccountKey:Ljava/lang/String;

.field private mDefaultAccountSavedKey:Ljava/lang/String;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 62
    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 70
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    .line 72
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 73
    iget-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110164

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110163

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountSavedKey:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->maybeMigrateSystemSettings()V

    return-void
.end method

.method private maybeMigrateSystemSettings()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setSortOrder(I)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    .line 247
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :catch_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDisplayOrder(I)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    invoke-static {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getDefaultAccount()Ljava/lang/String;
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDefaultAccountUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-static {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 150
    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultDisplayOrder()I
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getDisplayOrder()I
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    return v0

    .line 125
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 128
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    return v0
.end method

.method public getSortOrder()I
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    return v0

    .line 96
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 99
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    return v0
.end method

.method public isDefaultAccountUserChangeable()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences$1;

    invoke-direct {v0, p0, p2}, Lcom/android/contacts/common/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshValue(Ljava/lang/String;)V
    .locals 2

    const-string v0, "android.contacts.DISPLAY_ORDER"

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 213
    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0

    :cond_0
    const-string v0, "android.contacts.SORT_ORDER"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result p1

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 222
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz p1, :cond_3

    .line 223
    invoke-interface {p1}, Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;->onChange()V

    :cond_3
    return-void
.end method

.method public registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    const/4 p1, -0x1

    .line 177
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 178
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 181
    iget-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    :goto_1
    iget-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountSavedKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 2

    .line 132
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    .line 133
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    .line 134
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 2

    .line 103
    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    .line 104
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    .line 105
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public unregisterChangeListener()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
