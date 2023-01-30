.class public Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BlockedNumbersSettingsActivity.java"

# interfaces
.implements Lcom/android/dialer/app/list/SearchFragment$HostInterface;


# static fields
.field private static final TAG_BLOCKED_MANAGEMENT_FRAGMENT:Ljava/lang/String; = "blocked_management"

.field private static final TAG_BLOCKED_SEARCH_FRAGMENT:Ljava/lang/String; = "blocked_search"

.field private static final TAG_VIEW_NUMBERS_TO_IMPORT_FRAGMENT:Ljava/lang/String; = "view_numbers_to_import"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialpadHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionBarShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDialpadShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 118
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c003b

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->showManagementUi()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showManagementUi()V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "blocked_management"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;

    invoke-direct {v0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersFragment;-><init>()V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f090073

    .line 56
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 59
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_MANAGEMENT:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {v0, v1, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return-void
.end method

.method public showNumbersToImportPreviewUi()V
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "view_numbers_to_import"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;

    invoke-direct {v0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;-><init>()V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f090073

    .line 97
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showSearchUi()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "blocked_search"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/app/list/BlockedListSearchFragment;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/dialer/app/list/BlockedListSearchFragment;

    invoke-direct {v0}, Lcom/android/dialer/app/list/BlockedListSearchFragment;-><init>()V

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->setHasOptionsMenu(Z)V

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v3}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->setShowEmptyListForNullQuery(Z)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/android/dialer/app/list/BlockedListSearchFragment;->setDirectorySearchEnabled(Z)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f090073

    .line 76
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 80
    invoke-static {p0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/ScreenEvent$Type;->BLOCKED_NUMBER_ADD_NUMBER:Lcom/android/dialer/logging/ScreenEvent$Type;

    invoke-interface {v0, v1, p0}, Lcom/android/dialer/logging/LoggingBindings;->logScreenView(Lcom/android/dialer/logging/ScreenEvent$Type;Landroid/app/Activity;)V

    return-void
.end method
