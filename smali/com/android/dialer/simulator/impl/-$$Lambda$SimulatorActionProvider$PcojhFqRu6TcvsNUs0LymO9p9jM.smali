.class public final synthetic Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$PcojhFqRu6TcvsNUs0LymO9p9jM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$PcojhFqRu6TcvsNUs0LymO9p9jM;->f$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$PcojhFqRu6TcvsNUs0LymO9p9jM;->f$0:Lcom/android/dialer/simulator/impl/SimulatorActionProvider;

    invoke-virtual {v0, p1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->lambda$onPrepareSubMenu$1$SimulatorActionProvider(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
