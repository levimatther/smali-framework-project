.class final Lcom/android/dialer/shortcuts/PinnedShortcuts;
.super Ljava/lang/Object;
.source "PinnedShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "contact_last_updated_timestamp"

    .line 56
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->context:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    new-instance v1, Lcom/android/dialer/shortcuts/IconFactory;

    invoke-direct {v1, p1}, Lcom/android/dialer/shortcuts/IconFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;-><init>(Landroid/content/Context;Lcom/android/dialer/shortcuts/IconFactory;)V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    return-void
.end method

.method private applyDelta(Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->context:Landroid/content/Context;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 147
    iget-object v1, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->context:Landroid/content/Context;

    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p1, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutIdsToDisable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p1, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutIdsToDisable:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v1, p1, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->shortcutInfoFactory:Lcom/android/dialer/shortcuts/ShortcutInfoFactory;

    iget-object p1, p1, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    .line 156
    invoke-virtual {v1, p1}, Lcom/android/dialer/shortcuts/ShortcutInfoFactory;->buildShortcutInfos(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PinnedShortcuts.applyDelta"

    const-string v1, "shortcutManager rate limited."

    .line 157
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 12

    .line 90
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const-string v0, "PinnedShortcuts.refresh"

    .line 91
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->context:Landroid/content/Context;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "no contact permissions"

    .line 95
    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    new-instance v1, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;-><init>(Lcom/android/dialer/shortcuts/PinnedShortcuts$1;)V

    .line 100
    iget-object v3, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->context:Landroid/content/Context;

    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    .line 101
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 102
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {v4}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupKeyFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v4}, Lcom/android/dialer/shortcuts/DialerShortcut;->getLookupUriFromShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v7

    .line 116
    iget-object v6, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts;->context:Landroid/content/Context;

    .line 117
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/dialer/shortcuts/PinnedShortcuts;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 119
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 129
    :cond_4
    invoke-static {}, Lcom/android/dialer/shortcuts/DialerShortcut;->builder()Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v7

    const-string v8, "_id"

    .line 130
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->setContactId(J)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v7

    .line 131
    invoke-virtual {v7, v5}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->setLookupKey(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v5

    const-string v7, "display_name"

    .line 133
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {v5, v7}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->setDisplayName(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;

    move-result-object v5

    .line 134
    invoke-virtual {v5}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;->build()Lcom/android/dialer/shortcuts/DialerShortcut;

    move-result-object v5

    .line 136
    invoke-virtual {v5, v4}, Lcom/android/dialer/shortcuts/DialerShortcut;->needsUpdate(Landroid/content/pm/ShortcutInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "contact updated"

    new-array v8, v2, [Ljava/lang/Object;

    .line 137
    invoke-static {v0, v7, v8}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v7, v1, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v6, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_6
    :goto_1
    const-string v5, "contact disabled"

    new-array v7, v2, [Ljava/lang/Object;

    .line 120
    invoke-static {v0, v5, v7}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v5, v1, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutIdsToDisable:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 140
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 116
    :goto_3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v6, :cond_7

    .line 140
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1

    .line 142
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/dialer/shortcuts/PinnedShortcuts;->applyDelta(Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;)V

    return-void
.end method
