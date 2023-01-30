.class public Lcom/android/incallui/ContactsPreferencesFactory;
.super Ljava/lang/Object;
.source "ContactsPreferencesFactory.java"


# static fields
.field private static sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private static sUseTestInstance:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/incallui/ContactsPreferencesFactory;->sUseTestInstance:Z

    if-eqz v0, :cond_0

    .line 39
    sget-object p0, Lcom/android/incallui/ContactsPreferencesFactory;->sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-object p0

    .line 41
    :cond_0
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static setTestInstance(Lcom/android/contacts/common/preference/ContactsPreferences;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    sput-boolean v0, Lcom/android/incallui/ContactsPreferencesFactory;->sUseTestInstance:Z

    .line 54
    sput-object p0, Lcom/android/incallui/ContactsPreferencesFactory;->sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-void
.end method
