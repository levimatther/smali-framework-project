.class final Lcom/android/dialer/simulator/impl/SimulatorActionProvider;
.super Landroid/view/ActionProvider;
.source "SimulatorActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/simulator/impl/SimulatorActionProvider$ShareLogWorker;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private populateDatabase()V
    .locals 2

    .line 128
    new-instance v0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 136
    invoke-virtual {v0, v1}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    const-string v0, "SimulatorActionProvider.hasSubMenu"

    .line 68
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$null$3$SimulatorActionProvider(Ljava/lang/String;)V
    .locals 2

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 109
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onPrepareSubMenu$0$SimulatorActionProvider(Landroid/view/MenuItem;)Z
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/simulator/impl/SimulatorVoiceCall;->addNewIncomingCall(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onPrepareSubMenu$1$SimulatorActionProvider(Landroid/view/MenuItem;)Z
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->populateDatabase()V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onPrepareSubMenu$2$SimulatorActionProvider(Landroid/view/MenuItem;)Z
    .locals 1

    .line 95
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.provider.action.SYNC_VOICEMAIL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onPrepareSubMenu$4$SimulatorActionProvider(Landroid/view/MenuItem;)Z
    .locals 2

    .line 104
    new-instance p1, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$ShareLogWorker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/dialer/simulator/impl/SimulatorActionProvider$ShareLogWorker;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider$1;)V

    invoke-static {p1}, Lcom/android/dialer/common/concurrent/DialerExecutors;->createNonUiTaskBuilder(Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$dJvxdAMde6vI-Myu25T5fDf5U78;

    invoke-direct {v1, p0}, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$dJvxdAMde6vI-Myu25T5fDf5U78;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V

    .line 105
    invoke-interface {p1, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p1

    .line 115
    invoke-interface {p1, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeSerial(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onPrepareSubMenu$5$SimulatorActionProvider(Landroid/view/MenuItem;)Z
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorActionProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    const-string v0, "SimulatorActionProvider.onCreateActionView(null)"

    .line 56
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    const-string p1, "SimulatorActionProvider.onCreateActionView(MenuItem)"

    .line 62
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    const-string v0, "SimulatorActionProvider.onPrepareSubMenu"

    .line 75
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    const-string v0, "Add call"

    .line 78
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$06m0gQhJDCbO_8zN2ZhgYUGqEVQ;

    invoke-direct {v1, p0}, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$06m0gQhJDCbO_8zN2ZhgYUGqEVQ;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V

    .line 79
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const-string v0, "Populate database"

    .line 85
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$PcojhFqRu6TcvsNUs0LymO9p9jM;

    invoke-direct {v1, p0}, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$PcojhFqRu6TcvsNUs0LymO9p9jM;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V

    .line 86
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const-string v0, "Sync Voicemail"

    .line 92
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$WTG2n9nk810Y49ybHSq3VTCneYs;

    invoke-direct {v1, p0}, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$WTG2n9nk810Y49ybHSq3VTCneYs;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V

    .line 93
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const-string v0, "Share persistent log"

    .line 101
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$p2KiAGQtpkJSzhOJxjz8ZIEqL84;

    invoke-direct {v1, p0}, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$p2KiAGQtpkJSzhOJxjz8ZIEqL84;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V

    .line 102
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const-string v0, "Enriched call simulator"

    .line 119
    invoke-interface {p1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$8_zIrtsoy7QdFfLx0S4TY49Dwro;

    invoke-direct {v0, p0}, Lcom/android/dialer/simulator/impl/-$$Lambda$SimulatorActionProvider$8_zIrtsoy7QdFfLx0S4TY49Dwro;-><init>(Lcom/android/dialer/simulator/impl/SimulatorActionProvider;)V

    .line 120
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
