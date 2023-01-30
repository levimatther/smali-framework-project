.class final Lcom/android/dialer/shortcuts/DynamicShortcuts;
.super Ljava/lang/Object;
.source "DynamicShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;
    }
.end annotation


# static fields
.field private static final MAX_DYNAMIC_SHORTCUTS:I = 0x3


# instance fields
.field private final context:Landroid/content/Context;

.field private final shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/shortcuts/IconFactory;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    invoke-direct {v0, p1, p2}, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;-><init>(Landroid/content/Context;Lcom/android/dialer/shortcuts/IconFactory;)V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    return-void
.end method

.method private applyDelta(Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->getShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 212
    iget-object v1, p1, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutIdsToRemove:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p1, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutIdsToRemove:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 215
    :cond_0
    iget-object v1, p1, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    iget-object v2, p1, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    .line 221
    invoke-virtual {v1, v2}, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->buildShortcutInfos(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 223
    :cond_1
    iget-object v1, p1, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToAddById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    iget-object p1, p1, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToAddById:Ljava/util/Map;

    .line 225
    invoke-virtual {v1, p1}, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->buildShortcutInfos(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 224
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    :cond_2
    return-void
.end method

.method private computeDelta(Ljava/util/List;Ljava/util/Map;)Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/shortcuts/DialerShortcut;",
            ">;)",
            "Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;-><init>(Lcom/android/dialer/shortcuts/DynamicShortcuts$1;)V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object p1, v0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToAddById:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    .line 181
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "DynamicShortcuts.computeDelta"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 183
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/shortcuts/DialerShortcut;

    if-eqz v5, :cond_2

    .line 185
    invoke-virtual {v5, v2}, Lcom/android/dialer/shortcuts/DialerShortcut;->needsUpdate(Landroid/content/pm/ShortcutInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "contact updated"

    .line 186
    invoke-static {v4, v6, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v3, v0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "contact removed"

    .line 191
    invoke-static {v4, v5, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v3, v0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutIdsToRemove:Ljava/util/List;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/shortcuts/DialerShortcut;

    .line 200
    invoke-direct {p0, p1, v2}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->containsShortcut(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "contact added"

    .line 202
    invoke-static {v4, v6, v5}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v5, v0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToAddById:Ljava/util/Map;

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private containsShortcut(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 232
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static getShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;
    .locals 1

    const-string v0, "shortcut"

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    return-object p0
.end method


# virtual methods
.method public refresh(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const-string v0, "DynamicShortcuts.refresh"

    .line 97
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->getShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->context:Landroid/content/Context;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "no contact permissions"

    .line 103
    invoke-static {v0, v2, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 112
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v2

    .line 113
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getManifestShortcuts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    .line 110
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/ContactEntry;

    .line 119
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-lt v5, v0, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {}, Lcom/android/dialer/shortcuts/DialerShortcut;->builder()Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/contacts/common/list/ContactEntry;->id:J

    .line 125
    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->setContactId(J)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    .line 126
    invoke-virtual {v5, v6}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->setLookupKey(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v5

    .line 127
    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntry;->getPreferredDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .line 128
    invoke-virtual {v4, v3}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->setRank(I)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->build()Lcom/android/dialer/shortcuts/DialerShortcut;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lcom/android/dialer/shortcuts/DialerShortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v5

    goto :goto_0

    .line 133
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    invoke-direct {p0, p1, v2}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->computeDelta(Ljava/util/List;Ljava/util/Map;)Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->applyDelta(Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;)V

    return-void
.end method

.method updateIcons()V
    .locals 10

    .line 144
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const-string v0, "DynamicShortcuts.updateIcons"

    .line 145
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->context:Landroid/content/Context;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "no contact permissions"

    .line 149
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/shortcuts/DynamicShortcuts;->getShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v3

    .line 157
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getManifestShortcuts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 162
    iget-object v9, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts;->shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    invoke-virtual {v9, v7}, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->withUpdatedIcon(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v8

    if-lt v6, v3, :cond_1

    :cond_2
    new-array v3, v8, [Ljava/lang/Object;

    .line 167
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const-string/jumbo v2, "updating %d shortcut icons"

    invoke-static {v0, v2, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v1, v4}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    return-void
.end method
