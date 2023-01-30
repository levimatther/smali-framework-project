.class public final Lcom/android/dialer/about/LicenseMenuActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LicenseMenuActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/dialer/about/License;",
        ">;>;"
    }
.end annotation


# static fields
.field static final ARGS_LICENSE:Ljava/lang/String; = "license"

.field private static final LOADER_ID:I = 0xd431


# instance fields
.field private listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/android/dialer/about/License;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00b8

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/dialer/about/LicenseMenuActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseMenuActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseMenuActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x7f0c00b7

    const v1, 0x7f0901c4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity;->listAdapter:Landroid/widget/ArrayAdapter;

    .line 56
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseMenuActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const v0, 0xd431

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    const p1, 0x7f0901c7

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/dialer/about/LicenseMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/android/dialer/about/LicenseMenuActivity;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    new-instance v0, Lcom/android/dialer/about/LicenseMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/about/LicenseMenuActivity$1;-><init>(Lcom/android/dialer/about/LicenseMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/dialer/about/License;",
            ">;>;"
        }
    .end annotation

    .line 89
    new-instance p1, Lcom/android/dialer/about/LicenseLoader;

    invoke-direct {p1, p0}, Lcom/android/dialer/about/LicenseLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 84
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseMenuActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const v1, 0xd431

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/about/LicenseMenuActivity;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/dialer/about/License;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/dialer/about/License;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 95
    iget-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 96
    iget-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/dialer/about/License;",
            ">;>;)V"
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 102
    iget-object p1, p0, Lcom/android/dialer/about/LicenseMenuActivity;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/about/LicenseMenuActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
