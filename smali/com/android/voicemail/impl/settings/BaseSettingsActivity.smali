.class public Lcom/android/voicemail/impl/settings/BaseSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSettingsActivity"


# instance fields
.field private mMenuBar:Landroid/widget/MenuBar;

.field private menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->menu:Ljava/util/ArrayList;

    return-void
.end method

.method private initMenuBar()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->mMenuBar:Landroid/widget/MenuBar;

    return-void
.end method

.method private setStatusBarColor()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 66
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method


# virtual methods
.method public getiMenuBar()Landroid/widget/MenuBar;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->mMenuBar:Landroid/widget/MenuBar;

    return-object v0
.end method

.method public initActionBar(I)V
    .locals 5

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    const/16 v1, 0x10

    .line 80
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    new-instance v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/16 v2, 0x11

    const/4 v4, -0x1

    invoke-direct {v1, v4, v4, v2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    .line 84
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c00af

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 87
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c0021

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->setStatusBarColor()V

    .line 30
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->initMenuBar()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0}, Landroid/widget/MenuBar;->refreshMenuBar()V

    return-void
.end method

.method public updateMenuBar(IIILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/BaseSettingsActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    return-void
.end method
