.class public Lcom/android/dialer/shortcuts/Shortcuts;
.super Ljava/lang/Object;
.source "Shortcuts.java"


# static fields
.field private static final DYNAMIC_SHORTCUTS_ENABLED:Ljava/lang/String; = "dynamic_shortcuts_enabled"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static areDynamicShortcutsEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 30
    invoke-static {p0}, Lcom/android/dialer/configprovider/ConfigProviderBindings;->get(Landroid/content/Context;)Lcom/android/dialer/configprovider/ConfigProvider;

    move-result-object p0

    const-string v0, "dynamic_shortcuts_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/dialer/configprovider/ConfigProvider;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
