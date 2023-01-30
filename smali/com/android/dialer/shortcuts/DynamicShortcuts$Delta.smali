.class Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;
.super Ljava/lang/Object;
.source "DynamicShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/shortcuts/DynamicShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delta"
.end annotation


# instance fields
.field final shortcutIdsToRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final shortcutsToAddById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/shortcuts/DialerShortcut;",
            ">;"
        }
    .end annotation
.end field

.field final shortcutsToUpdateById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/shortcuts/DialerShortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutIdsToRemove:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;->shortcutsToAddById:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/shortcuts/DynamicShortcuts$1;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/dialer/shortcuts/DynamicShortcuts$Delta;-><init>()V

    return-void
.end method
