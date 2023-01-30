.class public Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;
.super Landroid/widget/PopupMenu;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OptionsPopupMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1634
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    const p1, 0x800005

    .line 1635
    invoke-direct {p0, p2, p3, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 7

    .line 1640
    invoke-virtual {p0}, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0901f3

    .line 1641
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1642
    iget-object v2, p0, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    .line 1643
    invoke-static {v2}, Lcom/android/dialer/util/PermissionsUtil;->hasContactsReadPermissions(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    .line 1644
    invoke-static {v2}, Lcom/android/dialer/app/DialtactsActivity;->access$1800(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/ListsFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    .line 1645
    invoke-static {v2}, Lcom/android/dialer/app/DialtactsActivity;->access$1800(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/ListsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/app/list/ListsFragment;->hasFrequents()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1642
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0901f4

    .line 1647
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    .line 1648
    invoke-static {v2}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1650
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity$OptionsPopupMenu;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/app/DialtactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901fa

    .line 1651
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1652
    invoke-static {v1}, Lcom/android/dialer/simulator/SimulatorComponent;->get(Landroid/content/Context;)Lcom/android/dialer/simulator/SimulatorComponent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/simulator/SimulatorComponent;->getSimulator()Lcom/android/dialer/simulator/Simulator;

    move-result-object v5

    .line 1653
    invoke-interface {v5}, Lcom/android/dialer/simulator/Simulator;->shouldShow()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1654
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1655
    invoke-interface {v5, v1}, Lcom/android/dialer/simulator/Simulator;->getActionProvider(Landroid/content/Context;)Landroid/view/ActionProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1657
    :cond_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1666
    :goto_1
    invoke-static {v1}, Lcom/android/dialer/main/MainComponent;->get(Landroid/content/Context;)Lcom/android/dialer/main/MainComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/main/MainComponent;->getMain()Lcom/android/dialer/main/Main;

    move-result-object v2

    const v3, 0x7f0901f6

    .line 1667
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1668
    invoke-interface {v2, v1}, Lcom/android/dialer/main/Main;->isNewUiEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1670
    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
