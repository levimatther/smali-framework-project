.class public Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;
.super Landroid/app/ListFragment;
.source "ViewNumbersToImportFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 51
    invoke-static {p1, v0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;->newViewNumbersToImportAdapter(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;

    invoke-virtual {p0, p1}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090192

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment$1;-><init>(Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;)V

    .line 116
    invoke-static {p1, v0}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->importSendToVoicemailContacts(Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900c2

    if-ne p1, v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance p1, Landroid/content/CursorLoader;

    .line 94
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/dialer/blocking/FilteredNumbersUtil$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "send_to_voicemail=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0118

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->mAdapter:Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f11026a

    .line 74
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/dialer/app/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090192

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
