.class final Lcom/android/dialer/shortcuts/ShortcutInfoFactory;
.super Ljava/lang/Object;
.source "ShortcutInfoFactory.java"


# static fields
.field static final EXTRA_CONTACT_ID:Ljava/lang/String; = "contactId"


# instance fields
.field private final context:Landroid/content/Context;

.field private final iconFactory:Lcom/android/dialer/shortcuts/IconFactory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/shortcuts/IconFactory;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->iconFactory:Lcom/android/dialer/shortcuts/IconFactory;

    return-void
.end method


# virtual methods
.method buildShortcutInfos(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/shortcuts/DialerShortcut;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/shortcuts/DialerShortcut;

    .line 63
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->context:Landroid/content/Context;

    const-string v4, "com.android.dialer.shortcuts.CallContactActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "com.android.dialer.shortcuts.CALL_CONTACT"

    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {v1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getContactId()J

    move-result-wide v3

    const-string v5, "contactId"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 69
    new-instance v3, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v4, p0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->context:Landroid/content/Context;

    .line 70
    invoke-virtual {v1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getShortLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLongLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->iconFactory:Lcom/android/dialer/shortcuts/IconFactory;

    .line 74
    invoke-virtual {v3, v1}, Lcom/android/dialer/shortcuts/IconFactory;->create(Lcom/android/dialer/shortcuts/DialerShortcut;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getRank()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/android/dialer/shortcuts/DialerShortcut;->getRank()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    .line 79
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method withUpdatedIcon(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;
    .locals 3

    .line 91
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    .line 92
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->iconFactory:Lcom/android/dialer/shortcuts/IconFactory;

    .line 97
    invoke-virtual {v1, p1}, Lcom/android/dialer/shortcuts/IconFactory;->create(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    return-object p1
.end method
