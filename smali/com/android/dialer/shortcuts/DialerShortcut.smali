.class abstract Lcom/android/dialer/shortcuts/DialerShortcut;
.super Ljava/lang/Object;
.source "DialerShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
    }
.end annotation


# static fields
.field static final NO_RANK:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
    .locals 2

    .line 160
    new-instance v0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;

    invoke-direct {v0}, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->setRank(I)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v0

    return-object v0
.end method

.method static getDisplayNameFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLookupKeyFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLookupUriFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;
    .locals 4

    .line 119
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupKeyFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {v0, v1, p0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact ID found for shortcut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract getContactId()J
.end method

.method abstract getDisplayName()Ljava/lang/String;
.end method

.method getLongLabel()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getLookupKey()Ljava/lang/String;
.end method

.method getLookupUri()Landroid/net/Uri;
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getContactId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method abstract getRank()I
.end method

.method getShortLabel()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getShortcutId()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method needsUpdate(Landroid/content/pm/ShortcutInfo;)Z
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getRank()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getRank()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getShortLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLongLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
