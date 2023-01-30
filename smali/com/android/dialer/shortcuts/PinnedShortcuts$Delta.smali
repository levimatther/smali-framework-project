.class Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;
.super Ljava/lang/Object;
.source "PinnedShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/shortcuts/PinnedShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delta"
.end annotation


# instance fields
.field final shortcutIdsToDisable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutIdsToDisable:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;->shortcutsToUpdateById:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/shortcuts/PinnedShortcuts$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/dialer/shortcuts/PinnedShortcuts$Delta;-><init>()V

    return-void
.end method
