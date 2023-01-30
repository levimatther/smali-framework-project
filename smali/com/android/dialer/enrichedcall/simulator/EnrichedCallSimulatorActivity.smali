.class public Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EnrichedCallSimulatorActivity.java"

# interfaces
.implements Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private refreshButton:Landroid/widget/Button;

.field private sessionsAdapter:Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;
    .locals 1

    .line 110
    invoke-static {p0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v1, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private refreshSessions()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->sessionsAdapter:Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;

    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getAllSessionsForDisplay()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->setSessionStrings(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->sessionsAdapter:Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->refreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "EnrichedCallSimulatorActivity.onClick"

    const-string v1, "refreshing sessions"

    .line 99
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->refreshSessions()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "EnrichedCallSimulatorActivity.onCreate"

    .line 59
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0082

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->setContentView(I)V

    const p1, 0x7f090303

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f110220

    .line 63
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const p1, 0x7f090261

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->refreshButton:Landroid/widget/Button;

    .line 66
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ae

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    new-instance v0, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;

    invoke-direct {v0}, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->sessionsAdapter:Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;

    .line 72
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->getAllSessionsForDisplay()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;->setSessionStrings(Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->sessionsAdapter:Lcom/android/dialer/enrichedcall/simulator/SessionsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onEnrichedCallStateChanged()V
    .locals 1

    const-string v0, "EnrichedCallSimulatorActivity.onEnrichedCallStateChanged"

    .line 92
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->refreshSessions()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const-string v0, "EnrichedCallSimulatorActivity.onPause"

    .line 85
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 87
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->unregisterStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "EnrichedCallSimulatorActivity.onResume"

    .line 78
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 79
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/simulator/EnrichedCallSimulatorActivity;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/enrichedcall/EnrichedCallManager;->registerStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V

    return-void
.end method
